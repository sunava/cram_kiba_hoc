# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iai_pepper_demo_msgs: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iai_pepper_demo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_custom_target(_iai_pepper_demo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_pepper_demo_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" "geometry_msgs/TransformStamped:geometry_msgs/Vector3:geometry_msgs/Transform:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_cpp(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_cpp _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_gencpp)
add_dependencies(iai_pepper_demo_msgs_gencpp iai_pepper_demo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_eus(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_eus _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_geneus)
add_dependencies(iai_pepper_demo_msgs_geneus iai_pepper_demo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_lisp(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_lisp _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_genlisp)
add_dependencies(iai_pepper_demo_msgs_genlisp iai_pepper_demo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_nodejs(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_nodejs _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_gennodejs)
add_dependencies(iai_pepper_demo_msgs_gennodejs iai_pepper_demo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages

### Generating Services
_generate_srv_owl(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_owl(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_owl _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_genowl)
add_dependencies(iai_pepper_demo_msgs_genowl iai_pepper_demo_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(iai_pepper_demo_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_pepper_demo_msgs
)

### Generating Module File
_generate_module_py(iai_pepper_demo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_pepper_demo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iai_pepper_demo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iai_pepper_demo_msgs_generate_messages iai_pepper_demo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/iai_pepper_demo_msgs/srv/PepperComm.srv" NAME_WE)
add_dependencies(iai_pepper_demo_msgs_generate_messages_py _iai_pepper_demo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_pepper_demo_msgs_genpy)
add_dependencies(iai_pepper_demo_msgs_genpy iai_pepper_demo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_pepper_demo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_pepper_demo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_pepper_demo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_pepper_demo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_pepper_demo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_pepper_demo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_owl)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_owl std_msgs_generate_messages_owl)
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_pepper_demo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_pepper_demo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_pepper_demo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(iai_pepper_demo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
