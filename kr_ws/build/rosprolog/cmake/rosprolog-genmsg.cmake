# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosprolog: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irosprolog:/home/neem/work/kr_ws/src/rosprolog/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosprolog_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_custom_target(_rosprolog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosprolog" "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" ""
)

get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_custom_target(_rosprolog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosprolog" "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_cpp(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_cpp(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosprolog_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_cpp _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_cpp _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_gencpp)
add_dependencies(rosprolog_gencpp rosprolog_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_eus(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_eus(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosprolog_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_eus _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_eus _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_geneus)
add_dependencies(rosprolog_geneus rosprolog_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_lisp(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_lisp(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosprolog_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_lisp _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_lisp _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_genlisp)
add_dependencies(rosprolog_genlisp rosprolog_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_nodejs(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_nodejs(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosprolog_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_nodejs _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_nodejs _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_gennodejs)
add_dependencies(rosprolog_gennodejs rosprolog_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_owl(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_owl(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(rosprolog_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_owl _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_owl _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_genowl)
add_dependencies(rosprolog_genowl rosprolog_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog
)

### Generating Services
_generate_srv_py(rosprolog
  "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog
)

### Generating Module File
_generate_module_py(rosprolog
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosprolog_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosprolog_generate_messages rosprolog_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/msg/MessageJSON.msg" NAME_WE)
add_dependencies(rosprolog_generate_messages_py _rosprolog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neem/work/kr_ws/src/rosprolog/srv/JSONWrapper.srv" NAME_WE)
add_dependencies(rosprolog_generate_messages_py _rosprolog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosprolog_genpy)
add_dependencies(rosprolog_genpy rosprolog_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosprolog_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosprolog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosprolog
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosprolog_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosprolog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosprolog
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosprolog_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosprolog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosprolog
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosprolog_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosprolog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosprolog
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosprolog_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rosprolog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/rosprolog
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_owl)
  add_dependencies(rosprolog_generate_messages_owl std_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosprolog
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosprolog_generate_messages_py std_msgs_generate_messages_py)
endif()
