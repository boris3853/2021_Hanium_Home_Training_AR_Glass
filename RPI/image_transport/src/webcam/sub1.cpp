#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>

void imageCallback(static int count, int CameraNUM, const sensor_msgs::ImageConstPtr& msg)
{
  cv_bridge::CvImagePtr cv_ptr;
  try
  {
    cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    std::stringstream sstream;
 
    sstream << "PI" << CameraNUM << "/image" << count << ".jpg";
    cv::imwrite(sstream.str(), cv_ptr->image);

    cv::waitKey(1);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_listener");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  static int count = 0;

  image_transport::Subscriber sub = it.subscribe("camera/image1", 1, imageCallback(count, 1));
  image_transport::Subscriber sub = it.subscribe("camera/image2", 1, imageCallback(count, 2));
  
  count++;
  ros::spin();
}
