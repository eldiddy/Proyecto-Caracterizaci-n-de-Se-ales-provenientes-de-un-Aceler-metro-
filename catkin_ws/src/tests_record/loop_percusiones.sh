#!/bin/bash 

while true; do
	echo "Reproduciendo percusion.bag..."
	rosbag play percusion.bag

	echo "Reproduciendo percusion2.bag..."
        rosbag play percusion2.bag

	echo "Reproduciendo percusion3.bag..." 
        rosbag play percusion3.bag

	echo "Reproduciendo percusion4.bag..." 
    	rosbag play percusion4.bag

	echo "Reproduciendo percusion5.bag..." 
    	rosbag play percusion5.bag

	echo "Reproduciendo percusion6.bag..." 
        rosbag play percusion6.bag
done
