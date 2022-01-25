execute_process(COMMAND "/home/nvidia/21_hf271/TX2_main/build/rosbridge_suite/rosbridge_server/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nvidia/21_hf271/TX2_main/build/rosbridge_suite/rosbridge_server/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
