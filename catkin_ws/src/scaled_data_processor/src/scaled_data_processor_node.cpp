#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>
#include <std_msgs/Float64.h>
#include "ros_opcua_msgs/TypeValue.h"
#include <std_msgs/Header.h>

// Definicion del nodo
class DataScalerNode {
public:
    DataScalerNode() {
        // Subscribers para los datos provenientes de OPC UA
        aRMSlow_sub_ = nh_.subscribe("/opcua/opcua_client/aRMSlow", 1, &DataScalerNode::callbackA, this);
        vRMSlow_sub_ = nh_.subscribe("/opcua/opcua_client/vRMSlow", 1, &DataScalerNode::callbackB, this);
        aRMShigh_sub_ = nh_.subscribe("/opcua/opcua_client/aRMShigh", 1, &DataScalerNode::callbackC, this);
        vRMShigh_sub_ = nh_.subscribe("/opcua/opcua_client/vRMShigh", 1, &DataScalerNode::callbackD, this);

        // Publishers para los datos procesados
        scaled_aRMSlow_pub_ = nh_.advertise<std_msgs::Float64>("/scaled_aRMSlow", 1);
        scaled_vRMSlow_pub_ = nh_.advertise<std_msgs::Float64>("/scaled_vRMSlow", 1);
        scaled_aRMShigh_pub_ = nh_.advertise<std_msgs::Float64>("/scaled_aRMShigh", 1);
        scaled_vRMShigh_pub_ = nh_.advertise<std_msgs::Float64>("/scaled_vRMShigh", 1);

        ROS_INFO("DataScalerNode inicializado correctamente.");
    }

private:
    ros::NodeHandle nh_;
    ros::Subscriber aRMSlow_sub_,
                    vRMSlow_sub_,
                    aRMShigh_sub_,
                    vRMShigh_sub_;

    ros::Publisher scaled_aRMSlow_pub_,
                   scaled_vRMSlow_pub_,
                   scaled_aRMShigh_pub_,
                   scaled_vRMShigh_pub_;

    // Callbacks para procesar los datos
    void callbackA(const ros_opcua_msgs::TypeValue::ConstPtr& aRMSlow_msg){
        std_msgs::Float64 scaled_aRMSlow_msg;
        scaled_aRMSlow_msg.data = aRMSlow_msg->float_d * 0.9 - 0.2;
        scaled_aRMSlow_pub_.publish(scaled_aRMSlow_msg);
    }
    void callbackB(const ros_opcua_msgs::TypeValue::ConstPtr& vRMSlow_msg){
        std_msgs::Float64 scaled_vRMSlow_msg;
        scaled_vRMSlow_msg.data = vRMSlow_msg->float_d * 2000 - 1.05;
        scaled_vRMSlow_pub_.publish(scaled_vRMSlow_msg);
    }
    void callbackC(const ros_opcua_msgs::TypeValue::ConstPtr& aRMShigh_msg){
        std_msgs::Float64 scaled_aRMShigh_msg;
        scaled_aRMShigh_msg.data = aRMShigh_msg->float_d * 1.2 - 2.12;
        scaled_aRMShigh_pub_.publish(scaled_aRMShigh_msg);
    }
    void callbackD(const ros_opcua_msgs::TypeValue::ConstPtr& vRMShigh_msg){
        std_msgs::Float64 scaled_vRMShigh_msg;
        scaled_vRMShigh_msg.data = vRMShigh_msg->float_d * 20000 - 2.65;
        scaled_vRMShigh_pub_.publish(scaled_vRMShigh_msg);
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "data_scaler_node");
    DataScalerNode data_scaler_node;
    ros::spin();
    return 0;
}
