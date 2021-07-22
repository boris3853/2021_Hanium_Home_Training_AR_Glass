#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

int main(){
	ros::init(argc, argv, "image_pub");	// NodeName: image_pub
	ros::NodeHandle nh;
	image_transport::ImageTransport it(nh); // NodeHandler --> Image_Transport
	image_transport::Publisher pub = it.advertise("camera/image", 1); // ROS Topic: camer/image
	
	std::istringstream video_sourceCmd(argv[1]);
	int video_source;
	if(!(video_sourceCmd >> video_source)) return 1;

	cv::VideoCapture cap(video_source);
	if(!cap.isOpened()) return 1;
	cv:Mat frame;
	sensor_msgs::ImagePtr msg;

	ros::Rate loop_rate(5);
	while(nh.ok()){
		cap >> frame;
		if(!frame.empty()){
			msg == cv_bridge::CvImage(std_msgs:Header(), "bgr8", frame).toImageMsg();
			pub.publish(msg);
			cv::waitKey(1);
		}

		ros::spinOnce();
		loop_rate.sleep();
	}
}

