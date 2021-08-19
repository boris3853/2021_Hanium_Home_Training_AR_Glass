#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <ros/ros.h>

class PI_Publisher{
private:
	// Transport Variable	
	image_transport::ImageTransport it;
	image_transport::Publisher pub;
	
	// message Variable
	sensor_msgs::ImagePtr msg;
	std_msgs::Header header;
	
	// CV Variable
	cv::VideoCapture cap;
	cv::Mat frame;
	
	
public:
	PI_Publisher(ros::NodeHandle nh) : it(nh), cap(0, cv::CAP_V4L)
	{
		pub = it.advertise("camera/image1", 1);
		// PI1: camera/image1 PI2: camera/image2
	}
	
	void capture(){
		cap >> frame;
		header.stamp = ros::Time::now();
		
		imshow("test", frame); // TEST
	}
	
	void publish(){
		if(!frame.empty()){
			msg = cv_bridge::CvImage(header, "bgr8", frame).toImageMsg();
			pub.publish(msg);
			ROS_INFO("send");
		}else{
			ROS_INFO("fail");
		}


	}
};

int main(int argc, char **argv){
	ros::init(argc, argv, "image_pub1"); // PI1: image_pub1 PI2: image_pub2
	ros::NodeHandle nh;
	PI_Publisher PI_PUB(nh);

	ros::Rate loop_rate(30);
	while(nh.ok()){
		PI_PUB.capture();
		PI_PUB.publish();
		if(cv::waitKey(1) >= 0) break;
		
		ros::spinOnce();
		loop_rate.sleep();
	}
}


