# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iai_wsg_50_msgs: 4 messages, 3 services")

set(MSG_I_FLAGS "-Iiai_wsg_50_msgs:/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iai_wsg_50_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_custom_target(_iai_wsg_50_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_wsg_50_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_cpp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_cpp(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_cpp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_gencpp)
add_dependencies(iai_wsg_50_msgs_gencpp iai_wsg_50_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_eus(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_eus(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_eus _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_geneus)
add_dependencies(iai_wsg_50_msgs_geneus iai_wsg_50_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_lisp(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_lisp(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_lisp _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_genlisp)
add_dependencies(iai_wsg_50_msgs_genlisp iai_wsg_50_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_nodejs(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_nodejs(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_gennodejs)
add_dependencies(iai_wsg_50_msgs_gennodejs iai_wsg_50_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_owl(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_owl(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_owl _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_genowl)
add_dependencies(iai_wsg_50_msgs_genowl iai_wsg_50_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_msg_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Services
_generate_srv_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)
_generate_srv_py(iai_wsg_50_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
)

### Generating Module File
_generate_module_py(iai_wsg_50_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iai_wsg_50_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iai_wsg_50_msgs_generate_messages iai_wsg_50_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/PositionCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Move.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Status.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Conf.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/Cmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/srv/Incr.srv" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_wsg_50_msgs/msg/SpeedCmd.msg" NAME_WE)
add_dependencies(iai_wsg_50_msgs_generate_messages_py _iai_wsg_50_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_wsg_50_msgs_genpy)
add_dependencies(iai_wsg_50_msgs_genpy iai_wsg_50_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_wsg_50_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iai_wsg_50_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iai_wsg_50_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iai_wsg_50_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iai_wsg_50_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_owl)
  add_dependencies(iai_wsg_50_msgs_generate_messages_owl std_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_wsg_50_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iai_wsg_50_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
