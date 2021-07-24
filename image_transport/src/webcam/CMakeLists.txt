cmake_minimum_required(VERSION 3.0.2)
project(webcam)

find_package(catkin REQUIRED COMPONENTS
	cv_bridge
	image_transport
	std_msgs
	sensor_msgs
	roscpp
)

find_package (OpenCV REQUIRED)

catkin_package(
	INCLUDE_DIRS include
	LIBRARIES webcam
	CATKIN_DEPENDS cv_bridge image_transport std_msgs sensor_msgs roscpp
)

include_directories(
	${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS}
)

add_executable(webcam_pub src/pub.cpp)
target_link_libraries(webcam_pub ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_executable(webcam_sub src/sub.cpp)
target_link_libraries(webcam_sub ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
