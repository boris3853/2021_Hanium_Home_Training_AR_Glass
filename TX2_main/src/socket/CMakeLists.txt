cmake_minimum_required(VERSION 3.0.2)
project(socket)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	msg_creator
)

#jsoncpp linking
find_package(PkgConfig REQUIRED)
pkg_check_modules(JSONCPP jsoncpp)

catkin_package(
	CATKIN_DEPENDS std_msgs msg_creator
)

include_directories(include ${catkin_INCLUDE_DIRS})
link_libraries(${JSONCPP_LIBRARIES})


add_executable(tx2_realpub src/tx2_realpub.cpp)
target_link_libraries(tx2_realpub ${catkin_LIBRARIES} ${JSONCPP_LIBRARIES})

add_executable(tx2_publisher src/tx2_publisher.cpp)
target_link_libraries(tx2_publisher ${catkin_LIBRARIES} ${JSONCPP_LIBRARIES})
