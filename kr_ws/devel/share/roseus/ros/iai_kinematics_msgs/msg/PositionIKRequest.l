;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::PositionIKRequest)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'PositionIKRequest (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::POSITIONIKREQUEST")
  (make-package "IAI_KINEMATICS_MSGS::POSITIONIKREQUEST"))

(in-package "ROS")
;;//! \htmlinclude PositionIKRequest.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iai_kinematics_msgs::PositionIKRequest
  :super ros::object
  :slots (_ik_link_name _pose_stamped _ik_seed_state _robot_state ))

(defmethod iai_kinematics_msgs::PositionIKRequest
  (:init
   (&key
    ((:ik_link_name __ik_link_name) "")
    ((:pose_stamped __pose_stamped) (instance geometry_msgs::PoseStamped :init))
    ((:ik_seed_state __ik_seed_state) (instance iai_kinematics_msgs::RobotState :init))
    ((:robot_state __robot_state) (instance iai_kinematics_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _ik_link_name (string __ik_link_name))
   (setq _pose_stamped __pose_stamped)
   (setq _ik_seed_state __ik_seed_state)
   (setq _robot_state __robot_state)
   self)
  (:ik_link_name
   (&optional __ik_link_name)
   (if __ik_link_name (setq _ik_link_name __ik_link_name)) _ik_link_name)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:ik_seed_state
   (&rest __ik_seed_state)
   (if (keywordp (car __ik_seed_state))
       (send* _ik_seed_state __ik_seed_state)
     (progn
       (if __ik_seed_state (setq _ik_seed_state (car __ik_seed_state)))
       _ik_seed_state)))
  (:robot_state
   (&rest __robot_state)
   (if (keywordp (car __robot_state))
       (send* _robot_state __robot_state)
     (progn
       (if __robot_state (setq _robot_state (car __robot_state)))
       _robot_state)))
  (:serialization-length
   ()
   (+
    ;; string _ik_link_name
    4 (length _ik_link_name)
    ;; geometry_msgs/PoseStamped _pose_stamped
    (send _pose_stamped :serialization-length)
    ;; iai_kinematics_msgs/RobotState _ik_seed_state
    (send _ik_seed_state :serialization-length)
    ;; iai_kinematics_msgs/RobotState _robot_state
    (send _robot_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ik_link_name
       (write-long (length _ik_link_name) s) (princ _ik_link_name s)
     ;; geometry_msgs/PoseStamped _pose_stamped
       (send _pose_stamped :serialize s)
     ;; iai_kinematics_msgs/RobotState _ik_seed_state
       (send _ik_seed_state :serialize s)
     ;; iai_kinematics_msgs/RobotState _robot_state
       (send _robot_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ik_link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ik_link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose_stamped
     (send _pose_stamped :deserialize buf ptr-) (incf ptr- (send _pose_stamped :serialization-length))
   ;; iai_kinematics_msgs/RobotState _ik_seed_state
     (send _ik_seed_state :deserialize buf ptr-) (incf ptr- (send _ik_seed_state :serialization-length))
   ;; iai_kinematics_msgs/RobotState _robot_state
     (send _robot_state :deserialize buf ptr-) (incf ptr- (send _robot_state :serialization-length))
   ;;
   self)
  )

(setf (get iai_kinematics_msgs::PositionIKRequest :md5sum-) "737bb756c6253bdd460b1383d0b12dac")
(setf (get iai_kinematics_msgs::PositionIKRequest :datatype-) "iai_kinematics_msgs/PositionIKRequest")
(setf (get iai_kinematics_msgs::PositionIKRequest :definition-)
      "# A Position IK request message
# The name of the link for which we are computing IK
string ik_link_name

# The (stamped) pose of the link
geometry_msgs/PoseStamped pose_stamped

# A RobotState consisting of hint/seed positions for the IK computation. 
# These may be used to seed the IK search. 
# The seed state MUST contain state for all joints to be used by the IK solver
# to compute IK. The list of joints that the IK solver deals with can be found using
# the kinematics_msgs/GetKinematicSolverInfo
iai_kinematics_msgs/RobotState ik_seed_state

# Additional state information can be provided here to specify the starting positions 
# of other joints/links on the robot.
iai_kinematics_msgs/RobotState robot_state

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: iai_kinematics_msgs/RobotState
# This message contains information about the robot state, i.e. the positions of its joints and links
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
MSG: iai_kinematics_msgs/MultiDOFJointState
#A representation of a multi-dof joint state
time stamp
string[] joint_names
string[] frame_ids
string[] child_frame_ids
geometry_msgs/Pose[] poses

")



(provide :iai_kinematics_msgs/PositionIKRequest "737bb756c6253bdd460b1383d0b12dac")


