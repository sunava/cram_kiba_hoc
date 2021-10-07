;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::RobotState)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'RobotState (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::ROBOTSTATE")
  (make-package "IAI_KINEMATICS_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass iai_kinematics_msgs::RobotState
  :super ros::object
  :slots (_joint_state _multi_dof_joint_state ))

(defmethod iai_kinematics_msgs::RobotState
  (:init
   (&key
    ((:joint_state __joint_state) (instance sensor_msgs::JointState :init))
    ((:multi_dof_joint_state __multi_dof_joint_state) (instance iai_kinematics_msgs::MultiDOFJointState :init))
    )
   (send-super :init)
   (setq _joint_state __joint_state)
   (setq _multi_dof_joint_state __multi_dof_joint_state)
   self)
  (:joint_state
   (&rest __joint_state)
   (if (keywordp (car __joint_state))
       (send* _joint_state __joint_state)
     (progn
       (if __joint_state (setq _joint_state (car __joint_state)))
       _joint_state)))
  (:multi_dof_joint_state
   (&rest __multi_dof_joint_state)
   (if (keywordp (car __multi_dof_joint_state))
       (send* _multi_dof_joint_state __multi_dof_joint_state)
     (progn
       (if __multi_dof_joint_state (setq _multi_dof_joint_state (car __multi_dof_joint_state)))
       _multi_dof_joint_state)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _joint_state
    (send _joint_state :serialization-length)
    ;; iai_kinematics_msgs/MultiDOFJointState _multi_dof_joint_state
    (send _multi_dof_joint_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _joint_state
       (send _joint_state :serialize s)
     ;; iai_kinematics_msgs/MultiDOFJointState _multi_dof_joint_state
       (send _multi_dof_joint_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _joint_state
     (send _joint_state :deserialize buf ptr-) (incf ptr- (send _joint_state :serialization-length))
   ;; iai_kinematics_msgs/MultiDOFJointState _multi_dof_joint_state
     (send _multi_dof_joint_state :deserialize buf ptr-) (incf ptr- (send _multi_dof_joint_state :serialization-length))
   ;;
   self)
  )

(setf (get iai_kinematics_msgs::RobotState :md5sum-) "970d46b2ca41b9686adbdaeb592d97a7")
(setf (get iai_kinematics_msgs::RobotState :datatype-) "iai_kinematics_msgs/RobotState")
(setf (get iai_kinematics_msgs::RobotState :definition-)
      "# This message contains information about the robot state, i.e. the positions of its joints and links
sensor_msgs/JointState joint_state
iai_kinematics_msgs/MultiDOFJointState multi_dof_joint_state

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: iai_kinematics_msgs/MultiDOFJointState
#A representation of a multi-dof joint state
time stamp
string[] joint_names
string[] frame_ids
string[] child_frame_ids
geometry_msgs/Pose[] poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :iai_kinematics_msgs/RobotState "970d46b2ca41b9686adbdaeb592d97a7")


