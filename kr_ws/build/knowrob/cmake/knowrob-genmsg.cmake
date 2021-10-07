# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "knowrob: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iknowrob:/home/neem/work/kr_ws/src/knowrob/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genowl REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(knowrob_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_custom_target(_knowrob_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "knowrob" "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genowl;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_cpp(knowrob
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(knowrob_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_cpp _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_gencpp)
add_dependencies(knowrob_gencpp knowrob_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_eus(knowrob
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(knowrob_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_eus _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_geneus)
add_dependencies(knowrob_geneus knowrob_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_lisp(knowrob
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(knowrob_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_lisp _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_genlisp)
add_dependencies(knowrob_genlisp knowrob_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_nodejs(knowrob
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(knowrob_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_nodejs _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_gennodejs)
add_dependencies(knowrob_gennodejs knowrob_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_nodejs)

### Section generating for lang: genowl
### Generating Messages
_generate_msg_owl(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_owl(knowrob
  ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_owl}"
)

add_custom_target(knowrob_generate_messages_owl
  DEPENDS ${ALL_GEN_OUTPUT_FILES_owl}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_owl)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_owl _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_genowl)
add_dependencies(knowrob_genowl knowrob_generate_messages_owl)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_owl)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(knowrob
  "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob
)

### Generating Services

### Generating Module File
_generate_module_py(knowrob
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(knowrob_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(knowrob_generate_messages knowrob_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neem/work/kr_ws/src/knowrob/msg/EventToken.msg" NAME_WE)
add_dependencies(knowrob_generate_messages_py _knowrob_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(knowrob_genpy)
add_dependencies(knowrob_genpy knowrob_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS knowrob_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/knowrob)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/knowrob
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(knowrob_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/knowrob)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/knowrob
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(knowrob_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/knowrob)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/knowrob
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(knowrob_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/knowrob)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/knowrob
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(knowrob_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genowl_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/knowrob)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genowl_INSTALL_DIR}/knowrob
    DESTINATION ${genowl_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_owl)
  add_dependencies(knowrob_generate_messages_owl geometry_msgs_generate_messages_owl)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/knowrob/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(knowrob_generate_messages_py geometry_msgs_generate_messages_py)
endif()
