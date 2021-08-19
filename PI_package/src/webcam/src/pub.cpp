#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

int main(int argc, char **argv){
	ros::init(argc, argv, "image_pub2"); // PI1: image_pub1
	ros::NodeHandle nh;
	image_transport::ImageTransport it(nh);
	image_transport::Publisher pub = it.advertise("camera/image2", 1);
	// PI1: camera/image1 PI2: camera/image2


	// 4 for Yoga-Slim
	cv::VideoCapture cap(0, cv::CAP_V4L);
	
	if(!cap.isOpened()) return 1;
	cv::Mat frame;
	sensor_msgs::ImagePtr msg;

	ros::Rate loop_rate(30);
	while(nh.ok()){
		cap >> frame;
		std_msgs::Header header;
		header.stamp = ros::Time::now();
		imshow("test", frame); // TEST
		
		if(!frame.empty()){
			msg = cv_bridge::CvImage(header, "bgr8", frame).toImageMsg();
			pub.publish(msg);
			ROS_INFO("send");
		}


		if(cv::waitKey(1) >= 0) break;
		ros::spinOnce();
		loop_rate.sleep();
	}
}


