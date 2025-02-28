#!/bin/bash

while true; do                                                                 
	echo "Reproduciendo vacio6.bag..."
	rosbag play vacio6.bag

	echo "Reproduciendo percusion4.bag..." 
    	rosbag play percusion4.bag

	echo "Reproduciendo percusion5.bag..." 
    	rosbag play percusion5.bag

	echo "Reproduciendo percusion6.bag..." 
        rosbag play percusion6.bag
done
