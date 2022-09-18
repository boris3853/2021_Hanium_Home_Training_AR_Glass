cmake_minimum_required(VERSION 3.0.2)
project(webcam)

set(OpenCV_DIR /home/nvidia/opencv)

find_package(catkin REQUIRED COMPONENTS
	cv_bridge
	image_transport
	std_msgs
	sensor_msgs
	roscpp
)

find_package (OpenCV 3.4.1 REQUIRED)

catkin_package(
	CATKIN_DEPENDS cv_bridge image_transport std_msgs sensor_msgs roscpp
)

include_directories(
	${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS}
)

add_executable(webcam_sub src/sub.cpp)
target_link_libraries(webcam_sub ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
