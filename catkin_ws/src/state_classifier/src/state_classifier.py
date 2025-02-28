#!/usr/bin/env python3

import rospy
import joblib
import numpy as np
from std_msgs.msg import Float64MultiArray, String

class MFCCPredictor:
    def __init__(self):
        rospy.init_node("mfcc_predictor", anonymous=True)

        # Cargar modelo SVM entrenado
        self.model = joblib.load("/root/catkin_ws/src/data_svm/model_training/model/svm_model002.pkl")
        self.scaler = joblib.load("/root/catkin_ws/src/data_svm/model_training/model/scale002.pkl")

        # Publicador de clasificacion
        self.state_pub = rospy.Publisher("/mining_state", String, queue_size=10)

        # Suscriptores
        rospy.Subscriber("/mfcc_aRMSlow", Float64MultiArray, self.callback, callback_args="/mfcc_aRMSlow")
        rospy.Subscriber("/mfcc_aRMShigh", Float64MultiArray, self.callback, callback_args="/mfcc_aRMShigh")
        rospy.Subscriber("/mfcc_vRMSlow", Float64MultiArray, self.callback, callback_args="/mfcc_vRMSlow")
        rospy.Subscriber("/mfcc_vRMShigh", Float64MultiArray, self.callback, callback_args="/mfcc_vRMShigh")

        self.mfcc_data = {key: None for key in ["/mfcc_aRMSlow", "/mfcc_aRMShigh", "/mfcc_vRMSlow", "/mfcc_vRMShigh"]}
        rospy.Timer(rospy.Duration(0.1), self.predict_state)

        rospy.loginfo("Classifier Node inicializado correctamente.")

    def callback(self, msg, topic):
        self.mfcc_data[topic] = list(msg.data)[:3]

    def predict_state(self, event):
        if all(self.mfcc_data.values()):
            X = np.hstack(list(self.mfcc_data.values()))

            X_scaled = self.scaler.transform([X])

            prediction = self.model.predict(X_scaled)[0]
            state = ["roca", "vacio", "inactivo"][prediction]
            self.state_pub.publish(state)

if __name__ == "__main__":
    MFCCPredictor()
    rospy.spin()
