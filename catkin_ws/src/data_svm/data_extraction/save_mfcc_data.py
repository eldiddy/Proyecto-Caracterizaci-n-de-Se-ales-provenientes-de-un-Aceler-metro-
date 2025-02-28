#!/usr/bin/env python3

import rospy
import csv
import os
import numpy as np
from std_msgs.msg import Float64MultiArray

class MFCCDataSaver:
    def __init__(self):
        rospy.init_node("mfcc_data_saver", anonymous=True)

        self.filepath = "mfcc_bobcat_data.csv"
        self.mfcc_data = {
            "/mfcc_aRMSlow": None,
            "/mfcc_aRMShigh": None,
            "/mfcc_vRMSlow": None,
            "/mfcc_vRMShigh": None
        }

        # Si el archivo no existe, crearlo y escribir el encabezado
        file_exists = os.path.isfile(self.filepath)
        
        with open(self.filepath, mode="+a", newline="") as file:
            file.seek(0, os.SEEK_END)
            writer = csv.writer(file)
            if not file_exists or file.tell() == 0:  # Solo escribir encabezado si el archivo no existe
                header = ["timestamp"]
                for signal in self.mfcc_data.keys():
                    for i in range(3):  # 3 coeficientes MFCC
                        header.append(f"{signal}_MFCC{i+1}")
                header.append("estado")
                writer.writerow(header)

        # Suscribirse a los tópicos MFCC
        rospy.Subscriber("/mfcc_aRMSlow", Float64MultiArray, self.callback, callback_args="/mfcc_aRMSlow")
        rospy.Subscriber("/mfcc_aRMShigh", Float64MultiArray, self.callback, callback_args="/mfcc_aRMShigh")
        rospy.Subscriber("/mfcc_vRMSlow", Float64MultiArray, self.callback, callback_args="/mfcc_vRMSlow")
        rospy.Subscriber("/mfcc_vRMShigh", Float64MultiArray, self.callback, callback_args="/mfcc_vRMShigh")

        rospy.Timer(rospy.Duration(0.1), self.save_data)  # Guardar cada 100ms
        rospy.loginfo("Nodo de guardado de MFCC combinado iniciado")
        rospy.spin()

    def callback(self, msg, topic):
        self.mfcc_data[topic] = list(msg.data)[:3]  # Solo se toman 3 coeficientes

    def save_data(self, event):
        if all(self.mfcc_data.values()):  # Solo se guarda si hay datos en todos los tópicos
            timestamp = rospy.Time.now().to_sec()
            row = [timestamp]
            for signal in self.mfcc_data.keys():
                row.extend(self.mfcc_data[signal])
            row.append("desconocido")  # Se debe etiquetar manualmente después
            with open(self.filepath, mode="a", newline="") as file:
                writer = csv.writer(file)
                writer.writerow(row)

if __name__ == "__main__":
    try:
        MFCCDataSaver()
    except rospy.ROSInterruptException:
        pass
