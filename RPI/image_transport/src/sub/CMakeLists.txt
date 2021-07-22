cmake_minimum_required(VERSION 3.0.2)
project(sub)

find_package(catkin REQUIRED COMPONENTS
	cv_bridge
	image_transport
)

find_package (OpenCV REQUIRED)

catkin_package(
	INCLUDE_DIRS include
	LIBRARIES sub
	CATKIN_DEPENDS cv_bridge image_transport
)

include_directories(
	include ${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS}
)

add_executable(sub src/s.cpp)
target_link_libraries(sub ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})


