# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "grasp_stability_msgs: 1 messages, 1 services")

set(MSG_I_FLAGS "-Igrasp_stability_msgs:/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(grasp_stability_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_custom_target(_grasp_stability_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grasp_stability_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_custom_target(_grasp_stability_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grasp_stability_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_cpp(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_cpp(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(grasp_stability_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_cpp _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_cpp _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_gencpp)
add_dependencies(grasp_stability_msgs_gencpp grasp_stability_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_eus(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_eus(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(grasp_stability_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_eus _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_eus _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_geneus)
add_dependencies(grasp_stability_msgs_geneus grasp_stability_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_lisp(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_lisp(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(grasp_stability_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_lisp _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_lisp _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_genlisp)
add_dependencies(grasp_stability_msgs_genlisp grasp_stability_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_nodejs(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_nodejs(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(grasp_stability_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_nodejs _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_nodejs _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_gennodejs)
add_dependencies(grasp_stability_msgs_gennodejs grasp_stability_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_owl(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_owl(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(grasp_stability_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_owl _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_owl _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_genowl)
add_dependencies(grasp_stability_msgs_genowl grasp_stability_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Services
_generate_srv_py(grasp_stability_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs
)

### Generating Module File
_generate_module_py(grasp_stability_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(grasp_stability_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(grasp_stability_msgs_generate_messages grasp_stability_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/msg/GraspStability.msg" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_py _grasp_stability_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/grasp_stability_msgs/srv/Control.srv" NAME_WE)
add_dependencies(grasp_stability_msgs_generate_messages_py _grasp_stability_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grasp_stability_msgs_genpy)
add_dependencies(grasp_stability_msgs_genpy grasp_stability_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grasp_stability_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_stability_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_stability_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_stability_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_stability_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/grasp_stability_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grasp_stability_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
