# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Exercise: 2 messages, 0 services")

set(MSG_I_FLAGS "-IExercise:/home/nvidia/21_hf271/TX2_main/src/Exercise/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Exercise_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_custom_target(_Exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Exercise" "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" ""
)

get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_custom_target(_Exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Exercise" "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Exercise
)
_generate_msg_cpp(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Exercise
)

### Generating Services

### Generating Module File
_generate_module_cpp(Exercise
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Exercise
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Exercise_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Exercise_generate_messages Exercise_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_cpp _Exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_cpp _Exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Exercise_gencpp)
add_dependencies(Exercise_gencpp Exercise_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Exercise_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Exercise
)
_generate_msg_eus(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Exercise
)

### Generating Services

### Generating Module File
_generate_module_eus(Exercise
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Exercise
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Exercise_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Exercise_generate_messages Exercise_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_eus _Exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_eus _Exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Exercise_geneus)
add_dependencies(Exercise_geneus Exercise_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Exercise_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Exercise
)
_generate_msg_lisp(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Exercise
)

### Generating Services

### Generating Module File
_generate_module_lisp(Exercise
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Exercise
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Exercise_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Exercise_generate_messages Exercise_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_lisp _Exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_lisp _Exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Exercise_genlisp)
add_dependencies(Exercise_genlisp Exercise_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Exercise_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Exercise
)
_generate_msg_nodejs(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Exercise
)

### Generating Services

### Generating Module File
_generate_module_nodejs(Exercise
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Exercise
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Exercise_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Exercise_generate_messages Exercise_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_nodejs _Exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_nodejs _Exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Exercise_gennodejs)
add_dependencies(Exercise_gennodejs Exercise_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Exercise_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise
)
_generate_msg_py(Exercise
  "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise
)

### Generating Services

### Generating Module File
_generate_module_py(Exercise
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Exercise_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Exercise_generate_messages Exercise_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Exercise.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_py _Exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/21_hf271/TX2_main/src/Exercise/msg/Keypoints.msg" NAME_WE)
add_dependencies(Exercise_generate_messages_py _Exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Exercise_genpy)
add_dependencies(Exercise_genpy Exercise_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Exercise_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Exercise
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Exercise_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Exercise
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Exercise_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Exercise
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Exercise_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Exercise
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Exercise_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Exercise
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Exercise_generate_messages_py std_msgs_generate_messages_py)
endif()
