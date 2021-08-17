#include "ros/ros.h"
#include "msg_creator/Keypoints.h"

int main(int argc, char **argv){
	ros::init(argc, argv, "talker");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<msg_creator::Keypoints>("chatter", 1000);
	ros::Rate loop_rate(10);
	double k=1;
	while(ros::ok()){
		msg_creator::Keypoints Keypoints;

		for(int i=0;i<25;++i){
			Keypoints.x[i] = (k+i)/1.5;
			Keypoints.y[i] = (k+i)/2;
			Keypoints.prob[i] = (k+i)/5;
		}
		Keypoints.type_ex = 5;

		pub.publish(Keypoints);
		ROS_INFO("x: %lf y: %lf prob: %lf type_ex : %d", Keypoints.x[0], Keypoints.y[0], Keypoints.prob[0], Keypoints.type_ex);
		
		k += 0.1;
		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;
}

