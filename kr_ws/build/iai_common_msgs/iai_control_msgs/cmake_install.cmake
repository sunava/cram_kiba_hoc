# Install script for directory: /home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/neem/work/kr_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/msg" TYPE FILE FILES
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/MultiJointVelocityCommand.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/MultiJointVelocityImpedanceCommand.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/MultiJointVelocityImpedanceState.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/CartGoal.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/CartState.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/JointLimits.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/PowerState.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/msg/pose_w_joints.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/action" TYPE FILE FILES "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/action/PTU.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/msg" TYPE FILE FILES
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUAction.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUActionGoal.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUActionResult.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUActionFeedback.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUGoal.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUResult.msg"
    "/home/neem/work/kr_ws/devel/share/iai_control_msgs/msg/PTUFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/cmake" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_control_msgs/catkin_generated/installspace/iai_control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/include/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/roseus/ros/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/common-lisp/ros/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/gennodejs/ros/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/neem/work/kr_ws/devel/lib/python2.7/dist-packages/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/lib/python2.7/dist-packages/iai_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_control_msgs/catkin_generated/installspace/iai_control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/cmake" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_control_msgs/catkin_generated/installspace/iai_control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs/cmake" TYPE FILE FILES
    "/home/neem/work/kr_ws/build/iai_common_msgs/iai_control_msgs/catkin_generated/installspace/iai_control_msgsConfig.cmake"
    "/home/neem/work/kr_ws/build/iai_common_msgs/iai_control_msgs/catkin_generated/installspace/iai_control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_control_msgs" TYPE FILE FILES "/home/neem/work/kr_ws/src/iai_common_msgs/iai_control_msgs/package.xml")
endif()

