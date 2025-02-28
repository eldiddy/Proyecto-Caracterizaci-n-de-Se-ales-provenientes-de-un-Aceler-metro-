#!/bin/bash

while true; do                                                                 
    echo "Reproduciendo vacio.bag..."                                    
    rosbag play vacio.bag

    echo "Reproduciendo vacio2.bag..."
	rosbag play vacio2.bag

	echo "Reproduciendo vacio3.bag..."
	rosbag play vacio3.bag

	echo "Reproduciendo vacio4.bag..."
	rosbag play vacio4.bag

    echo "Reproduciendo vacio5.bag..."
	rosbag play vacio5.bag

	echo "Reproduciendo vacio6.bag..."
	rosbag play vacio6.bag
done
