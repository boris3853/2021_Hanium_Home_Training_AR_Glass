#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_publisher");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("camera/image", 1);


  static int cnt=1;
  while(cnt){
	std::stringstream sstream;
       	sstream << "image/image" << cnt << ".png";
  	cv::Mat image = cv::imread(sstream.str(), cv::IMREAD_COLOR);
  	sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();

   	pub.publish(msg);
   	ros::spinOnce();
   	++cnt;
	if(cnt == 12) cnt = 1;
  }
}
