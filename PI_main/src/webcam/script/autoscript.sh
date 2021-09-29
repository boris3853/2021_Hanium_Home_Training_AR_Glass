#!/bin/bash

export ROS_MASTER_URI=http://192.168.0.165:11311
export ROS_HOSTNAME=192.168.0.215

. ./../../../devel/setup.sh
rosrun webcam webcam_pub
