#include "boost/date_time/posix_time/posix_time.hpp"
#include "cv_bridge/cv_bridge.h"
#include "image_transport/image_transport.h"
#include "image_transport/subscriber_filter.h"
#include "message_filters/subscriber.h"
#include "message_filters/synchronizer.h"
#include "message_filters/sync_policies/approximate_time.h"
#include "message_filters/time_synchronizer.h"
#include "opencv2/highgui/highgui.hpp"
#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include <sstream>


using namespace sensor_msgs;
using namespace message_filters;

class DualSubscriber{
  private:
  ros::NodeHandle nh;
  image_transport::ImageTransport it;
  image_transport::SubscriberFilter sub1;
  image_transport::SubscriberFilter sub2;

  typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Image> SyncPolicy;
  message_filters::Synchronizer<SyncPolicy> sync;

  void ImgCallback(const sensor_msgs::ImageConstPtr& image1, const sensor_msgs::ImageConstPtr& image2){
        cv_bridge::CvImagePtr cv_ptr;
        try{
                cv_ptr = cv_bridge::toCvCopy(image1, sensor_msgs::image_encodings::BGR8);
                cv::imshow("view", cv_ptr->image); // TEST
                std::stringstream sstream;

                static int count = 0;

                sstream << "image/PI1/image" << count << ".jpg";
                cv::imwrite(sstream.str(), cv_ptr->image);

                cv_ptr = cv_bridge::toCvCopy(image2, sensor_msgs::image_encodings::BGR8);
                sstream.str("");

                sstream << "image/PI2/image" << count << ".jpg";
                cv::imwrite(sstream.str(), cv_ptr->image);

                count++;
                cv::waitKey(1);

        } catch (cv_bridge::Exception& e){
                ROS_ERROR("Could not convert from '%s' to 'bgr8'.", image1->encoding.c_str());
        }
        ROS_INFO("success"); // TEST
  }

  
  public:
  DualSubscriber(): it(nh), sub1(it, "camera/image1", 5), sub2(it, "camera/image2", 5), sync(SyncPolicy(20), sub1, sub2){
    	sync.registerCallback(boost::bind(&DualSubscriber::ImgCallback, this,  _1, _2)); 
  }
};  

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_listener");
  DualSubscriber master_sub;

  cv::namedWindow("view"); // TEST
  cv::startWindowThread(); // TEST

  ros::spin();
}



