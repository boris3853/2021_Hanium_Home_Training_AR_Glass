cmake_minimum_required(VERSION 3.0.2)
project(socket)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	msg_creator
)

catkin_package(
	CATKIN_DEPENDS std_msgs msg_creator
)

include_directories(
	${catkin_INCLUDE_DIRS}
)

add_executable(tx2_publisher src/tx2_publisher.cpp)
target_link_libraries(tx2_publisher ${catkin_LIBRARIES})
