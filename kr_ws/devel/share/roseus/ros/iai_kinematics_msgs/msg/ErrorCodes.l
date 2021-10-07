;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::ErrorCodes)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'ErrorCodes (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::ERRORCODES")
  (make-package "IAI_KINEMATICS_MSGS::ERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude ErrorCodes.msg.html


(intern "*PLANNING_FAILED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*PLANNING_FAILED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*PLANNING_FAILED* -1)
(intern "*SUCCESS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*SUCCESS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*SUCCESS* 1)
(intern "*TIMED_OUT*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*TIMED_OUT* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*TIMED_OUT* -2)
(intern "*START_STATE_IN_COLLISION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*START_STATE_IN_COLLISION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*START_STATE_IN_COLLISION* -3)
(intern "*START_STATE_VIOLATES_PATH_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*START_STATE_VIOLATES_PATH_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*START_STATE_VIOLATES_PATH_CONSTRAINTS* -4)
(intern "*GOAL_IN_COLLISION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*GOAL_IN_COLLISION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*GOAL_IN_COLLISION* -5)
(intern "*GOAL_VIOLATES_PATH_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*GOAL_VIOLATES_PATH_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*GOAL_VIOLATES_PATH_CONSTRAINTS* -6)
(intern "*INVALID_ROBOT_STATE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_ROBOT_STATE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_ROBOT_STATE* -7)
(intern "*INCOMPLETE_ROBOT_STATE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INCOMPLETE_ROBOT_STATE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INCOMPLETE_ROBOT_STATE* -8)
(intern "*INVALID_PLANNER_ID*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_PLANNER_ID* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_PLANNER_ID* -9)
(intern "*INVALID_NUM_PLANNING_ATTEMPTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_NUM_PLANNING_ATTEMPTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_NUM_PLANNING_ATTEMPTS* -10)
(intern "*INVALID_ALLOWED_PLANNING_TIME*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_ALLOWED_PLANNING_TIME* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_ALLOWED_PLANNING_TIME* -11)
(intern "*INVALID_GROUP_NAME*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_GROUP_NAME* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_GROUP_NAME* -12)
(intern "*INVALID_GOAL_JOINT_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_GOAL_JOINT_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_GOAL_JOINT_CONSTRAINTS* -13)
(intern "*INVALID_GOAL_POSITION_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_GOAL_POSITION_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_GOAL_POSITION_CONSTRAINTS* -14)
(intern "*INVALID_GOAL_ORIENTATION_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_GOAL_ORIENTATION_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_GOAL_ORIENTATION_CONSTRAINTS* -15)
(intern "*INVALID_PATH_JOINT_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_PATH_JOINT_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_PATH_JOINT_CONSTRAINTS* -16)
(intern "*INVALID_PATH_POSITION_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_PATH_POSITION_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_PATH_POSITION_CONSTRAINTS* -17)
(intern "*INVALID_PATH_ORIENTATION_CONSTRAINTS*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_PATH_ORIENTATION_CONSTRAINTS* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_PATH_ORIENTATION_CONSTRAINTS* -18)
(intern "*INVALID_TRAJECTORY*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_TRAJECTORY* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_TRAJECTORY* -19)
(intern "*INVALID_INDEX*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_INDEX* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_INDEX* -20)
(intern "*JOINT_LIMITS_VIOLATED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*JOINT_LIMITS_VIOLATED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*JOINT_LIMITS_VIOLATED* -21)
(intern "*PATH_CONSTRAINTS_VIOLATED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*PATH_CONSTRAINTS_VIOLATED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*PATH_CONSTRAINTS_VIOLATED* -22)
(intern "*COLLISION_CONSTRAINTS_VIOLATED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*COLLISION_CONSTRAINTS_VIOLATED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*COLLISION_CONSTRAINTS_VIOLATED* -23)
(intern "*GOAL_CONSTRAINTS_VIOLATED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*GOAL_CONSTRAINTS_VIOLATED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*GOAL_CONSTRAINTS_VIOLATED* -24)
(intern "*JOINTS_NOT_MOVING*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*JOINTS_NOT_MOVING* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*JOINTS_NOT_MOVING* -25)
(intern "*TRAJECTORY_CONTROLLER_FAILED*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*TRAJECTORY_CONTROLLER_FAILED* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*TRAJECTORY_CONTROLLER_FAILED* -26)
(intern "*FRAME_TRANSFORM_FAILURE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*FRAME_TRANSFORM_FAILURE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*FRAME_TRANSFORM_FAILURE* -27)
(intern "*COLLISION_CHECKING_UNAVAILABLE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*COLLISION_CHECKING_UNAVAILABLE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*COLLISION_CHECKING_UNAVAILABLE* -28)
(intern "*ROBOT_STATE_STALE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*ROBOT_STATE_STALE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*ROBOT_STATE_STALE* -29)
(intern "*SENSOR_INFO_STALE*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*SENSOR_INFO_STALE* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*SENSOR_INFO_STALE* -30)
(intern "*NO_IK_SOLUTION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*NO_IK_SOLUTION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*NO_IK_SOLUTION* -31)
(intern "*INVALID_LINK_NAME*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_LINK_NAME* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_LINK_NAME* -32)
(intern "*IK_LINK_IN_COLLISION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*IK_LINK_IN_COLLISION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*IK_LINK_IN_COLLISION* -33)
(intern "*NO_FK_SOLUTION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*NO_FK_SOLUTION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*NO_FK_SOLUTION* -34)
(intern "*KINEMATICS_STATE_IN_COLLISION*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*KINEMATICS_STATE_IN_COLLISION* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*KINEMATICS_STATE_IN_COLLISION* -35)
(intern "*INVALID_TIMEOUT*" (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(shadow '*INVALID_TIMEOUT* (find-package "IAI_KINEMATICS_MSGS::ERRORCODES"))
(defconstant iai_kinematics_msgs::ErrorCodes::*INVALID_TIMEOUT* -36)
(defclass iai_kinematics_msgs::ErrorCodes
  :super ros::object
  :slots (_val ))

(defmethod iai_kinematics_msgs::ErrorCodes
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iai_kinematics_msgs::ErrorCodes :md5sum-) "5acf26755415e1ec18a6d523028f204d")
(setf (get iai_kinematics_msgs::ErrorCodes :datatype-) "iai_kinematics_msgs/ErrorCodes")
(setf (get iai_kinematics_msgs::ErrorCodes :definition-)
      "int32 val

# overall behavior
int32 PLANNING_FAILED=-1
int32 SUCCESS=1
int32 TIMED_OUT=-2

# start state errors
int32 START_STATE_IN_COLLISION=-3
int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4

# goal errors
int32 GOAL_IN_COLLISION=-5
int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6

# robot state
int32 INVALID_ROBOT_STATE=-7
int32 INCOMPLETE_ROBOT_STATE=-8

# planning request errors
int32 INVALID_PLANNER_ID=-9
int32 INVALID_NUM_PLANNING_ATTEMPTS=-10
int32 INVALID_ALLOWED_PLANNING_TIME=-11
int32 INVALID_GROUP_NAME=-12
int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13
int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14
int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15
int32 INVALID_PATH_JOINT_CONSTRAINTS=-16
int32 INVALID_PATH_POSITION_CONSTRAINTS=-17
int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18

# state/trajectory monitor errors
int32 INVALID_TRAJECTORY=-19
int32 INVALID_INDEX=-20
int32 JOINT_LIMITS_VIOLATED=-21
int32 PATH_CONSTRAINTS_VIOLATED=-22
int32 COLLISION_CONSTRAINTS_VIOLATED=-23
int32 GOAL_CONSTRAINTS_VIOLATED=-24
int32 JOINTS_NOT_MOVING=-25
int32 TRAJECTORY_CONTROLLER_FAILED=-26

# system errors
int32 FRAME_TRANSFORM_FAILURE=-27
int32 COLLISION_CHECKING_UNAVAILABLE=-28
int32 ROBOT_STATE_STALE=-29
int32 SENSOR_INFO_STALE=-30

# kinematics errors
int32 NO_IK_SOLUTION=-31
int32 INVALID_LINK_NAME=-32
int32 IK_LINK_IN_COLLISION=-33
int32 NO_FK_SOLUTION=-34
int32 KINEMATICS_STATE_IN_COLLISION=-35

# general errors
int32 INVALID_TIMEOUT=-36


")



(provide :iai_kinematics_msgs/ErrorCodes "5acf26755415e1ec18a6d523028f204d")


