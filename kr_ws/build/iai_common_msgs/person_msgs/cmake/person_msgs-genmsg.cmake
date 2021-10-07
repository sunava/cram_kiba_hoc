# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "person_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iperson_msgs:/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(person_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_custom_target(_person_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "person_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_custom_target(_person_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "person_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_custom_target(_person_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "person_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_custom_target(_person_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "person_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" "geometry_msgs/Point32:std_msgs/Header"
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_custom_target(_person_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "person_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
)
_generate_msg_cpp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
)
_generate_msg_cpp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
)
_generate_msg_cpp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
)
_generate_msg_cpp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(person_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_cpp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_cpp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_cpp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_cpp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_cpp _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_gencpp)
add_dependencies(person_msgs_gencpp person_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
)
_generate_msg_eus(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
)
_generate_msg_eus(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
)
_generate_msg_eus(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
)
_generate_msg_eus(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(person_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_eus _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_eus _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_eus _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_eus _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_eus _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_geneus)
add_dependencies(person_msgs_geneus person_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
)
_generate_msg_lisp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
)
_generate_msg_lisp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
)
_generate_msg_lisp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
)
_generate_msg_lisp(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(person_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_lisp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_lisp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_lisp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_lisp _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_lisp _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_genlisp)
add_dependencies(person_msgs_genlisp person_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
)
_generate_msg_nodejs(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
)
_generate_msg_nodejs(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
)
_generate_msg_nodejs(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
)
_generate_msg_nodejs(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(person_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_nodejs _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_nodejs _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_nodejs _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_nodejs _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_nodejs _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_gennodejs)
add_dependencies(person_msgs_gennodejs person_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
)
_generate_msg_owl(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
)
_generate_msg_owl(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
)
_generate_msg_owl(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
)
_generate_msg_owl(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_owl(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(person_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_owl _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_owl _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_owl _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_owl _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_owl _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_genowl)
add_dependencies(person_msgs_genowl person_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
)
_generate_msg_py(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
)
_generate_msg_py(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
)
_generate_msg_py(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
)
_generate_msg_py(person_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(person_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(person_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(person_msgs_generate_messages person_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_py _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Person.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_py _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/Skeleton3D.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_py _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/SkeletonBBox.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_py _person_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/person_msgs/msg/PointEvents.msg" NAME_WE)
add_dependencies(person_msgs_generate_messages_py _person_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(person_msgs_genpy)
add_dependencies(person_msgs_genpy person_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS person_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/person_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(person_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/person_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(person_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/person_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(person_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/person_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(person_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/person_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(person_msgs_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/person_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(person_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
