#include "ros/ros.h"
#include "msg_creator/KeypointArray.h"

int main(int argc, char **argv){
	ros::init(argc, argv, "talker");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<msg_creator::KeypointArray>("chatter", 1000);
	ros::Rate loop_rate(10);

	while(ros::ok()){
		msg_creator::KeypointArray Keypoints;

		Keypoints.x[0] = 1;
		Keypoints.y[0] = 2;
		Keypoints.prob[0] = 3;

		pub.publish(Keypoints);
		ROS_INFO("x: %lf y: %lf prob: %lf", Keypoints.x[0], Keypoints.y[0], Keypoints.prob[0]);
		
		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;
}

