cmake_minimum_required(VERSION 3.0.2)
project(socket)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	msg_creator
)

catkin_package(
	INCLUDE_DIRS include
	LIBRARIES json
	CATKIN_DEPENDS std_msgs msg_creator
)

include_directories(include
        ${catkin_INCLUDE_DIRS}
)

install(
	DIRECTORY ../jsoncpp/
	DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
	FILES_MATCHING PATTERN "*.h"
)

add_executable(tx2_publisher src/tx2_publisher.cpp)
target_link_libraries(tx2_publisher ${catkin_LIBRARIES})
