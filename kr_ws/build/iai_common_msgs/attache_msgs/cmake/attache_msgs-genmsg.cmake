# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "attache_msgs: 0 messages, 3 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(attache_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_custom_target(_attache_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "attache_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_custom_target(_attache_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "attache_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_custom_target(_attache_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "attache_msgs" "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs
)
_generate_srv_cpp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs
)
_generate_srv_cpp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_cpp(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(attache_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_cpp _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_cpp _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_cpp _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_gencpp)
add_dependencies(attache_msgs_gencpp attache_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs
)
_generate_srv_eus(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs
)
_generate_srv_eus(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_eus(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(attache_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_eus _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_eus _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_eus _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_geneus)
add_dependencies(attache_msgs_geneus attache_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs
)
_generate_srv_lisp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs
)
_generate_srv_lisp(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_lisp(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(attache_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_lisp _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_lisp _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_lisp _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_genlisp)
add_dependencies(attache_msgs_genlisp attache_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs
)
_generate_srv_nodejs(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs
)
_generate_srv_nodejs(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_nodejs(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(attache_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_nodejs _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_nodejs _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_nodejs _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_gennodejs)
add_dependencies(attache_msgs_gennodejs attache_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages

### Generating Services
_generate_srv_owl(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs
)
_generate_srv_owl(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs
)
_generate_srv_owl(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_owl(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(attache_msgs_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_owl _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_owl _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_owl _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_genowl)
add_dependencies(attache_msgs_genowl attache_msgs_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs
)
_generate_srv_py(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs
)
_generate_srv_py(attache_msgs
  "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs
)

### Generating Module File
_generate_module_py(attache_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(attache_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(attache_msgs_generate_messages attache_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/Attachment.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_py _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointInformation.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_py _attache_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/iai_common_msgs/attache_msgs/srv/JointControl.srv" NAME_WE)
add_dependencies(attache_msgs_generate_messages_py _attache_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(attache_msgs_genpy)
add_dependencies(attache_msgs_genpy attache_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS attache_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/attache_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/attache_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/attache_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/attache_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/attache_msgs
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/attache_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
