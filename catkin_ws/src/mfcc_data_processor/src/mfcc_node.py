#!/usr/bin/env python3

import rospy
import numpy as np
import librosa
from collections import deque
from std_msgs.msg import Float64, Float64MultiArray

class MFCCProcessor:
    def __init__(self):
        rospy.init_node("mfcc_processor", anonymous=True)

        # Parámetros
        self.sampling_rate = 10   # Frecuencia de muestreo estimada
        self.n_mfcc = 7           # Número de coeficientes MFCC (sin C0)
        self.frame_size = 10      # Tamaño del frame para la FFT
        self.hop_size = 2         # Espaciado entre ventanas de tiempo
        self.n_mels = 8           # Cantidad de filtros mel
        

        self.window_size = 10     # Cantidad de muestras en cada ventana deslizante

        # Buffers para almacenar las señales
        self.aRMSlow_buffer = deque(maxlen=self.window_size)
        self.vRMSlow_buffer = deque(maxlen=self.window_size)
        self.aRMShigh_buffer = deque(maxlen=self.window_size)
        self.vRMShigh_buffer = deque(maxlen=self.window_size)

        # Suscriptores
        rospy.Subscriber("/rms_aRMSlow", Float64, self.aRMSlow_callback)
        rospy.Subscriber("/rms_vRMSlow", Float64, self.vRMSlow_callback)
        rospy.Subscriber("/rms_aRMShigh", Float64, self.aRMShigh_callback)
        rospy.Subscriber("/rms_vRMShigh", Float64, self.vRMShigh_callback)

        # Publicadores
        self.mfcc_aRMSlow_pub = rospy.Publisher("/mfcc_aRMSlow", Float64MultiArray, queue_size=1)
        self.mfcc_vRMSlow_pub = rospy.Publisher("/mfcc_vRMSlow", Float64MultiArray, queue_size=1)
        self.mfcc_aRMShigh_pub = rospy.Publisher("/mfcc_aRMShigh", Float64MultiArray, queue_size=1)
        self.mfcc_vRMShigh_pub = rospy.Publisher("/mfcc_vRMShigh", Float64MultiArray, queue_size=1)

        rospy.Timer(rospy.Duration(0.1), self.compute_and_publish_mfcc)  # Ejecutar cada 100ms
        rospy.loginfo("MFCC Node inicializado correctamente.")
    
    # Callbaks para cada Objeto
    def aRMSlow_callback(self, msg):
        self.aRMSlow_buffer.append(msg.data)

    def vRMSlow_callback(self, msg):
        self.vRMSlow_buffer.append(msg.data)

    def aRMShigh_callback(self, msg):
        self.aRMShigh_buffer.append(msg.data)

    def vRMShigh_callback(self, msg):
        self.vRMShigh_buffer.append(msg.data)

    def compute_mfcc(self, signal):
        if len(signal) < self.window_size:
            return None  # No hay suficientes datos

        # Se convierte a numpy array
        signal_np = np.array(signal, dtype=np.float32)

        # Se calculan los MFCC
        mfccs = librosa.feature.mfcc(y=signal_np, sr=self.sampling_rate, n_mfcc=self.n_mfcc + 1, 
                                     n_fft=self.frame_size, hop_length=self.hop_size, n_mels=self.n_mels)

        # Se toma el promedio de los coeficientes en el tiempo y eliminar C0
        return mfccs[1:, :].mean(axis = 1)

    def compute_and_publish_mfcc(self, event):
        # Calcular MFCC para cada señal
        mfcc_aRMSlow = self.compute_mfcc(self.aRMSlow_buffer)
        mfcc_vRMSlow = self.compute_mfcc(self.vRMSlow_buffer)
        mfcc_aRMShigh = self.compute_mfcc(self.aRMShigh_buffer)
        mfcc_vRMShigh = self.compute_mfcc(self.vRMShigh_buffer)

        # Publicar resultados si están disponibles
        if mfcc_aRMSlow is not None:
            self.publish_mfcc(mfcc_aRMSlow, self.mfcc_aRMSlow_pub)
        if mfcc_vRMSlow is not None:
            self.publish_mfcc(mfcc_vRMSlow, self.mfcc_vRMSlow_pub)
        if mfcc_aRMShigh is not None:
            self.publish_mfcc(mfcc_aRMShigh, self.mfcc_aRMShigh_pub)
        if mfcc_vRMShigh is not None:
            self.publish_mfcc(mfcc_vRMShigh, self.mfcc_vRMShigh_pub)

    def publish_mfcc(self, mfcc_values, publisher):
        msg = Float64MultiArray()
        msg.data = mfcc_values.tolist()
        publisher.publish(msg)

if __name__ == "__main__":
    try:
        MFCCProcessor()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
