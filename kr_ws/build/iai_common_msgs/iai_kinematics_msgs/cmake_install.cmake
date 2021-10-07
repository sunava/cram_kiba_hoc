# Install script for directory: /home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs/msg" TYPE FILE FILES
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/ErrorCodes.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/JointLimits.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/KDLWeights.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/KinematicSolverInfo.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/MultiDOFJointState.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/PositionIKRequest.msg"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/msg/RobotState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs/srv" TYPE FILE FILES
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/srv/GetKinematicSolverInfo.srv"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/srv/GetPositionFK.srv"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/srv/GetPositionIK.srv"
    "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/srv/GetWeightedIK.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs/cmake" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_kinematics_msgs/catkin_generated/installspace/iai_kinematics_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/include/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/roseus/ros/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/common-lisp/ros/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/share/gennodejs/ros/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/neem/work/kr_ws/devel/lib/python2.7/dist-packages/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/neem/work/kr_ws/devel/lib/python2.7/dist-packages/iai_kinematics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_kinematics_msgs/catkin_generated/installspace/iai_kinematics_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs/cmake" TYPE FILE FILES "/home/neem/work/kr_ws/build/iai_common_msgs/iai_kinematics_msgs/catkin_generated/installspace/iai_kinematics_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs/cmake" TYPE FILE FILES
    "/home/neem/work/kr_ws/build/iai_common_msgs/iai_kinematics_msgs/catkin_generated/installspace/iai_kinematics_msgsConfig.cmake"
    "/home/neem/work/kr_ws/build/iai_common_msgs/iai_kinematics_msgs/catkin_generated/installspace/iai_kinematics_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iai_kinematics_msgs" TYPE FILE FILES "/home/neem/work/kr_ws/src/iai_common_msgs/iai_kinematics_msgs/package.xml")
endif()

