# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "designator_integration_msgs: 4 messages, 1 services")

set(MSG_I_FLAGS "-Idesignator_integration_msgs:/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(designator_integration_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_custom_target(_designator_integration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "designator_integration_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" "geometry_msgs/TransformStamped:geometry_msgs/Wrench:geometry_msgs/Vector3:geometry_msgs/Pose:designator_integration_msgs/KeyValuePair:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_custom_target(_designator_integration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "designator_integration_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" "geometry_msgs/TransformStamped:geometry_msgs/PoseStamped:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_custom_target(_designator_integration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "designator_integration_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" "geometry_msgs/TransformStamped:designator_integration_msgs/KeyValuePair:geometry_msgs/Wrench:geometry_msgs/Vector3:geometry_msgs/Pose:designator_integration_msgs/DesignatorRequest:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:designator_integration_msgs/DesignatorResponse:geometry_msgs/PoseStamped:designator_integration_msgs/Designator:geometry_msgs/Point"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_custom_target(_designator_integration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "designator_integration_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" "geometry_msgs/TransformStamped:geometry_msgs/Wrench:geometry_msgs/Vector3:geometry_msgs/Pose:designator_integration_msgs/KeyValuePair:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:designator_integration_msgs/Designator:geometry_msgs/Point"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_custom_target(_designator_integration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "designator_integration_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" "geometry_msgs/TransformStamped:geometry_msgs/Wrench:geometry_msgs/Vector3:geometry_msgs/Pose:designator_integration_msgs/KeyValuePair:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:designator_integration_msgs/Designator:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_cpp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_cpp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_cpp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_cpp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_cpp(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(designator_integration_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_cpp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_cpp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_cpp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_cpp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_cpp _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_gencpp)
add_dependencies(designator_integration_msgs_gencpp designator_integration_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_eus(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_eus(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_eus(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_eus(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_eus(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(designator_integration_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_eus _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_eus _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_eus _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_eus _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_eus _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_geneus)
add_dependencies(designator_integration_msgs_geneus designator_integration_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_lisp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_lisp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_lisp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_lisp(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_lisp(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(designator_integration_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_lisp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_lisp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_lisp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_lisp _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_lisp _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_genlisp)
add_dependencies(designator_integration_msgs_genlisp designator_integration_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_nodejs(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_nodejs(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_nodejs(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_nodejs(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_nodejs(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(designator_integration_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_nodejs _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_nodejs _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_nodejs _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_nodejs _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_nodejs _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_gennodejs)
add_dependencies(designator_integration_msgs_gennodejs designator_integration_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_owl(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_owl(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_owl(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_owl(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_owl(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(designator_integration_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_owl _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_owl _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_owl _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_owl _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_owl _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_genowl)
add_dependencies(designator_integration_msgs_genowl designator_integration_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_py(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_py(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
)
_generate_msg_py(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
)

### Generating Services
_generate_srv_py(designator_integration_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
)

### Generating Module File
_generate_module_py(designator_integration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(designator_integration_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(designator_integration_msgs_generate_messages designator_integration_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/Designator.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_py _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/KeyValuePair.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_py _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/srv/DesignatorCommunication.srv" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_py _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorResponse.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_py _designator_integration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/designator_integration_msgs/msg/DesignatorRequest.msg" NAME_WE)
add_dependencies(designator_integration_msgs_generate_messages_py _designator_integration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(designator_integration_msgs_genpy)
add_dependencies(designator_integration_msgs_genpy designator_integration_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS designator_integration_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(designator_integration_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(designator_integration_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(designator_integration_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(designator_integration_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(designator_integration_msgs_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/designator_integration_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(designator_integration_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
