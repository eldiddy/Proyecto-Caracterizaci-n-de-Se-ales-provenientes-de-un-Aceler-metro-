#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>
#include <std_msgs/Float64.h>
#include <deque>
#include <cmath>

class RMSNode {
public:
    RMSNode() {
        // Subscriber para datos de nodo scaled
        aRMSlow_sub_ = nh_.subscribe("/scaled_aRMSlow", 1, &RMSNode::callbackA, this);
        vRMSlow_sub_ = nh_.subscribe("/scaled_vRMSlow", 1, &RMSNode::callbackB, this);
        aRMShigh_sub_ = nh_.subscribe("/scaled_aRMShigh", 1, &RMSNode::callbackC, this);
        vRMShigh_sub_ = nh_.subscribe("/scaled_vRMShigh", 1, &RMSNode::callbackD, this);

        // Publishers para las rms signals
        rms_aRMSlow_pub_ = nh_.advertise<std_msgs::Float64>("/rms_aRMSlow", 1);
        rms_vRMSlow_pub_ = nh_.advertise<std_msgs::Float64>("/rms_vRMSlow", 1);
        rms_aRMShigh_pub_ = nh_.advertise<std_msgs::Float64>("/rms_aRMShigh", 1);
        rms_vRMShigh_pub_ = nh_.advertise<std_msgs::Float64>("/rms_vRMShigh", 1);

        ROS_INFO("RMSNode inicializado correctamente.");
    }

private:
    ros::NodeHandle nh_;
    ros::Subscriber aRMSlow_sub_, 
                    vRMSlow_sub_, 
                    aRMShigh_sub_, 
                    vRMShigh_sub_;

    ros::Publisher rms_aRMSlow_pub_,
                   rms_vRMSlow_pub_, 
                   rms_aRMShigh_pub_, 
                   rms_vRMShigh_pub_;

    // Ventana deslizante para calculo del RMS
    std::deque<double> aRMSlow_window_;
    std::deque<double> vRMSlow_window_;       
    std::deque<double> aRMShigh_window_;
    std::deque<double> vRMShigh_window_;
    const size_t window_size_ = 3;

    // Umbral para definir escalones
    const double aRMSlow_threshold_ = 2.0;
    const double vRMSlow_threshold_ = 2.0;
    const double aRMShigh_threshold_ = 2.0;
    const double vRMShigh_threshold_ = 2.0;

    // Calcula el RMS de una ventana de datos
    double calculateRMS(const std::deque<double>& window) {
        if (window.empty()) return 0.0;

        double sum_of_squares = 0.0;
        for (double value : window) {
            sum_of_squares += value * value;
        }
        return sqrt(sum_of_squares / window.size());
    }

    void callbackA(const std_msgs::Float64::ConstPtr& aRMSlow_msg){
        // Ventana deslizante
        updateWindow(aRMSlow_window_, aRMSlow_msg->data);

        // Calcular RMS
        double rms_aRMSlow = calculateRMS(aRMSlow_window_);

        // Aplicar umbral
        double thresholded_aRMSlow = (rms_aRMSlow > aRMSlow_threshold_) ? rms_aRMSlow : 0.0;

        // Publisher
        std_msgs::Float64 rms_aRMSlow_msg;
        rms_aRMSlow_msg.data = thresholded_aRMSlow;
        rms_aRMSlow_pub_.publish(rms_aRMSlow_msg);
    }

    void callbackB(const std_msgs::Float64::ConstPtr& vRMSlow_msg){
        // Ventana deslizante
        updateWindow(vRMSlow_window_, vRMSlow_msg->data);

        // Calcular RMS
        double rms_vRMSlow = calculateRMS(vRMSlow_window_);

        // Aplicar umbral
        double thresholded_vRMSlow = (rms_vRMSlow > vRMSlow_threshold_) ? rms_vRMSlow : 0.0;
        
        // Publisher
        std_msgs::Float64 rms_vRMSlow_msg;
        rms_vRMSlow_msg.data = thresholded_vRMSlow;
        rms_vRMSlow_pub_.publish(rms_vRMSlow_msg);;
    }

    void callbackC(const std_msgs::Float64::ConstPtr& aRMShigh_msg){
        // Ventana deslizante
        updateWindow(aRMShigh_window_, aRMShigh_msg->data);

        // Calcular RMS
        double rms_aRMShigh = calculateRMS(aRMShigh_window_);

        // Aplicar umbral
        double thresholded_aRMShigh = (rms_aRMShigh > aRMShigh_threshold_) ? rms_aRMShigh : 0.0;
        
        // Publisher
        std_msgs::Float64 rms_aRMShigh_msg;
        rms_aRMShigh_msg.data = thresholded_aRMShigh;
        rms_aRMShigh_pub_.publish(rms_aRMShigh_msg);;
    }

    void callbackD(const std_msgs::Float64::ConstPtr& vRMShigh_msg){
        // Ventana deslizante
        
        updateWindow(vRMShigh_window_, vRMShigh_msg->data);

        // Calcular RMS
        double rms_vRMShigh = calculateRMS(vRMShigh_window_);

        // Aplicar umbral
        double thresholded_vRMShigh = (rms_vRMShigh > vRMShigh_threshold_) ? rms_vRMShigh : 0.0;

        // Publisher
        std_msgs::Float64 rms_vRMShigh_msg;
        rms_vRMShigh_msg.data = thresholded_vRMShigh;
        rms_vRMShigh_pub_.publish(rms_vRMShigh_msg);;
    }

    void updateWindow(std::deque<double>& window, double new_value) {
        // Agregar el nuevo valor a la ventana
        window.push_back(new_value);

        // Eliminar valores antiguos si se salen de la ventana
        if (window.size() > window_size_) {
            window.pop_front();
        }
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "signal_filter_node");
    RMSNode signal_filter_node;
    ros::spin();
    return 0;
}
