#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

static char *NODES[] = {
	"TX2_SUB",
	"PI_PUB1",
	"PI_PUB2"
};

class pi_node{
	private:
		string topic_name
		int camera_num;

		std_msgs::Header time_header;
		sensor_msgs::ImagePtr msg;
		cv::Mat frame;

	public:
		pi_node();
		transport();
};

void pi_node::transport(){
	cap >> this.frame;
	this.time_header.stamp = ros::Time.now();
	imshow("test", this.frame); //TEST

	if(!frame.empty()){
		msg = cv_bridge::CvImage(this.header, "bgr8", this.frame).toImageMsg();
		ROS_INFO("send"); //TEST
	}
}


int main(int argc, char **argv){
	ros::init(argc, argv, NODES[1]);
	ros::NodeHandle nh;
	pi_node();

	ros::Rate loop_rate(30);
	while(nh.ok()){
		ros::spinOnce();
		loop_rate.sleep();
	}
};
