cmake_minimum_required(VERSION 3.0.2)
project(pub)

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
	LIBRARIES pub
	CATKIN_DEPENDS cv_bridge image_transport std_msgs sensor_msgs roscpp
)

include_directories(
	include ${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS}
)

add_executable(pub src/p.cpp)
target_link_libraries(pub ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})


