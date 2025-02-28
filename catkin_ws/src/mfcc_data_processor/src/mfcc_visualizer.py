#!/usr/bin/env python3

import rospy
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from collections import deque
from std_msgs.msg import Float64MultiArray

# Parámetros
window_size = 200  # Numero de muestras en la FFT
n_mfcc = 7         # Cantidad de coeficientes MFCC


data_buffers = {
    '/mfcc_aRMSlow': deque(maxlen=window_size),
    '/mfcc_aRMShigh': deque(maxlen=window_size),
    '/mfcc_vRMSlow': deque(maxlen=window_size),
    '/mfcc_vRMShigh': deque(maxlen=window_size)
}

def callback_factory(topic):
    def callback(msg):
        data_buffers[topic].append(msg.data)
    return callback

def setup_ros_subscribers():
    rospy.init_node('mfcc_visualizer', anonymous=True)
    for topic in data_buffers.keys():
        rospy.Subscriber(topic, Float64MultiArray, callback_factory(topic))

def update_plot(frame, axes, images, colorbars):
    all_data_1 = []  # Para /mfcc_aRMSlow y /mfcc_aRMShigh
    all_data_2 = []  # Para /mfcc_vRMSlow y /mfcc_vRMShigh
    
    for topic in data_buffers.keys():
        if len(data_buffers[topic]) > 0:
            data = np.array(data_buffers[topic]).T
            if topic in ['/mfcc_aRMSlow', '/mfcc_aRMShigh']:
                all_data_1.append(data)
            else:
                all_data_2.append(data)
    
    if all_data_1:
        data_min_1 = min(np.min(d) for d in all_data_1)
        data_max_1 = max(np.max(d) for d in all_data_1)
    
    if all_data_2:
        data_min_2 = min(np.min(d) for d in all_data_2)
        data_max_2 = max(np.max(d) for d in all_data_2)
    
    for ax, img, topic in zip(axes, images, data_buffers.keys()):
        if len(data_buffers[topic]) > 0:
            data = np.array(data_buffers[topic]).T
            img.set_array(data)
            ax.set_xlim(0, data.shape[1])
            ax.set_ylim(0, data.shape[0])
            if topic in ['/mfcc_aRMSlow', '/mfcc_aRMShigh']:
                img.set_clim(data_min_1, data_max_1)
            else:
                img.set_clim(data_min_2, data_max_2)
    
    colorbars[0].update_normal(images[0])
    colorbars[1].update_normal(images[2])
    
    return images

def main():
    setup_ros_subscribers()
    
    fig, axes = plt.subplots(2, 2, figsize=(10, 6))
    axes = axes.flatten()
    images = []
    
    img_master_1 = None
    img_master_2 = None
    for ax, topic in zip(axes[:4], data_buffers.keys()):
        img = ax.imshow(np.zeros((n_mfcc + 1, window_size)), aspect='auto', cmap='jet', origin='lower')
        ax.set_title(topic)
        ax.set_xlabel("Tiempo")
        ax.set_ylabel("Coeficientes MFCC")
        images.append(img)
        if topic in ['/mfcc_aRMSlow', '/mfcc_aRMShigh'] and img_master_1 is None:
            img_master_1 = img
        if topic in ['/mfcc_vRMSlow', '/mfcc_vRMShigh'] and img_master_2 is None:
            img_master_2 = img
    
    cbar_ax1 = fig.add_axes([0.92, 0.55, 0.02, 0.35])
    cbar_ax2 = fig.add_axes([0.92, 0.15, 0.02, 0.35])
    cbar1 = fig.colorbar(img_master_1, cax=cbar_ax1)
    cbar2 = fig.colorbar(img_master_2, cax=cbar_ax2)
    
    ani = animation.FuncAnimation(fig, update_plot, fargs=(axes[:4], images, [cbar1, cbar2]), interval=100)
    plt.tight_layout(rect=[0, 0, 0.9, 1])
    plt.show()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
