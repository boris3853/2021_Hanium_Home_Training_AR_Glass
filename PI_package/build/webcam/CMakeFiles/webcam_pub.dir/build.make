# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/21_hf271/PI_package/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/21_hf271/PI_package/build

# Include any dependencies generated for this target.
include webcam/CMakeFiles/webcam_pub.dir/depend.make

# Include the progress variables for this target.
include webcam/CMakeFiles/webcam_pub.dir/progress.make

# Include the compile flags for this target's objects.
include webcam/CMakeFiles/webcam_pub.dir/flags.make

webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.o: webcam/CMakeFiles/webcam_pub.dir/flags.make
webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.o: /home/pi/21_hf271/PI_package/src/webcam/src/pub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/21_hf271/PI_package/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.o"
	cd /home/pi/21_hf271/PI_package/build/webcam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webcam_pub.dir/src/pub.cpp.o -c /home/pi/21_hf271/PI_package/src/webcam/src/pub.cpp

webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webcam_pub.dir/src/pub.cpp.i"
	cd /home/pi/21_hf271/PI_package/build/webcam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/21_hf271/PI_package/src/webcam/src/pub.cpp > CMakeFiles/webcam_pub.dir/src/pub.cpp.i

webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webcam_pub.dir/src/pub.cpp.s"
	cd /home/pi/21_hf271/PI_package/build/webcam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/21_hf271/PI_package/src/webcam/src/pub.cpp -o CMakeFiles/webcam_pub.dir/src/pub.cpp.s

# Object files for target webcam_pub
webcam_pub_OBJECTS = \
"CMakeFiles/webcam_pub.dir/src/pub.cpp.o"

# External object files for target webcam_pub
webcam_pub_EXTERNAL_OBJECTS =

/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: webcam/CMakeFiles/webcam_pub.dir/src/pub.cpp.o
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: webcam/CMakeFiles/webcam_pub.dir/build.make
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /home/pi/21_hf271/PI_package/devel/lib/libcv_bridge.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_calib3d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_features2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_flann.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_gapi.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_highgui.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ml.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_photo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stitching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_video.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videoio.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_alphamat.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_aruco.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_barcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bgsegm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bioinspired.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ccalib.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_datasets.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dpm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_face.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_freetype.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_fuzzy.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_hfs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_img_hash.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_intensity_transform.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_line_descriptor.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_mcc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_optflow.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_plot.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_quality.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rapid.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_reg.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rgbd.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_saliency.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_shape.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stereo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_structured_light.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_surface_matching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_text.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_tracking.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videostab.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xfeatures2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ximgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xobjdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xphoto.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_core.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgcodecs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /home/pi/21_hf271/PI_package/devel/lib/libimage_transport.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libmessage_filters.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libclass_loader.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/libPocoFoundation.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libdl.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libroslib.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/librospack.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_program_options.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libtinyxml2.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libroscpp.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/librosconsole.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/librostime.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /opt/ros/melodic/lib/libcpp_common.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_gapi.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stitching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_alphamat.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_aruco.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_barcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bgsegm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bioinspired.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ccalib.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dpm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_face.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_freetype.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_fuzzy.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_hfs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_img_hash.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_intensity_transform.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_line_descriptor.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_mcc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_quality.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rapid.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_reg.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rgbd.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_saliency.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stereo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_structured_light.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_surface_matching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_tracking.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videostab.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xfeatures2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xobjdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xphoto.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_gapi.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stitching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_alphamat.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_aruco.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_barcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bgsegm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_bioinspired.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ccalib.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dpm.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_face.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_freetype.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_fuzzy.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_hfs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_img_hash.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_intensity_transform.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_line_descriptor.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_mcc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_quality.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rapid.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_reg.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_rgbd.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_saliency.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_stereo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_structured_light.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_superres.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_optflow.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_surface_matching.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_tracking.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_highgui.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_datasets.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_plot.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_text.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videostab.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videoio.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xfeatures2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ml.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_shape.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ximgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_video.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xobjdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgcodecs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_calib3d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_features2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_flann.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_xphoto.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_photo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_core.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_shape.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_highgui.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_datasets.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_plot.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_text.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ml.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_optflow.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_ximgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_video.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_videoio.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_dnn.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgcodecs.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_objdetect.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_calib3d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_features2d.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_flann.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_photo.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_imgproc.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: /usr/local/lib/libopencv_core.so.4.5.3
/home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub: webcam/CMakeFiles/webcam_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/21_hf271/PI_package/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub"
	cd /home/pi/21_hf271/PI_package/build/webcam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webcam_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
webcam/CMakeFiles/webcam_pub.dir/build: /home/pi/21_hf271/PI_package/devel/lib/webcam/webcam_pub

.PHONY : webcam/CMakeFiles/webcam_pub.dir/build

webcam/CMakeFiles/webcam_pub.dir/clean:
	cd /home/pi/21_hf271/PI_package/build/webcam && $(CMAKE_COMMAND) -P CMakeFiles/webcam_pub.dir/cmake_clean.cmake
.PHONY : webcam/CMakeFiles/webcam_pub.dir/clean

webcam/CMakeFiles/webcam_pub.dir/depend:
	cd /home/pi/21_hf271/PI_package/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/21_hf271/PI_package/src /home/pi/21_hf271/PI_package/src/webcam /home/pi/21_hf271/PI_package/build /home/pi/21_hf271/PI_package/build/webcam /home/pi/21_hf271/PI_package/build/webcam/CMakeFiles/webcam_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : webcam/CMakeFiles/webcam_pub.dir/depend

