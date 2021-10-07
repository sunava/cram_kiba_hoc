;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::GetPositionFK)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'GetPositionFK (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONFK")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONFK"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONFKREQUEST")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONFKREQUEST"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONFKRESPONSE")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONFKRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iai_kinematics_msgs::GetPositionFKRequest
  :super ros::object
  :slots (_header _fk_link_names _robot_state ))

(defmethod iai_kinematics_msgs::GetPositionFKRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fk_link_names __fk_link_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:robot_state __robot_state) (instance iai_kinematics_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fk_link_names __fk_link_names)
   (setq _robot_state __robot_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fk_link_names
   (&optional __fk_link_names)
   (if __fk_link_names (setq _fk_link_names __fk_link_names)) _fk_link_names)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _fk_link_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _fk_link_names)) 4
    ;; iai_kinematics_msgs/RobotState _robot_state
    (send _robot_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _fk_link_names
     (write-long (length _fk_link_names) s)
     (dolist (elem _fk_link_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; iai_kinematics_msgs/RobotState _robot_state
       (send _robot_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _fk_link_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fk_link_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _fk_link_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; iai_kinematics_msgs/RobotState _robot_state
     (send _robot_state :deserialize buf ptr-) (incf ptr- (send _robot_state :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetPositionFKResponse
  :super ros::object
  :slots (_pose_stamped _fk_link_names _error_code ))

(defmethod iai_kinematics_msgs::GetPositionFKResponse
  (:init
   (&key
    ((:pose_stamped __pose_stamped) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:fk_link_names __fk_link_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:error_code __error_code) (instance iai_kinematics_msgs::ErrorCodes :init))
    )
   (send-super :init)
   (setq _pose_stamped __pose_stamped)
   (setq _fk_link_names __fk_link_names)
   (setq _error_code __error_code)
   self)
  (:pose_stamped
   (&rest __pose_stamped)
   (if (keywordp (car __pose_stamped))
       (send* _pose_stamped __pose_stamped)
     (progn
       (if __pose_stamped (setq _pose_stamped (car __pose_stamped)))
       _pose_stamped)))
  (:fk_link_names
   (&optional __fk_link_names)
   (if __fk_link_names (setq _fk_link_names __fk_link_names)) _fk_link_names)
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _pose_stamped
    (apply #'+ (send-all _pose_stamped :serialization-length)) 4
    ;; string[] _fk_link_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _fk_link_names)) 4
    ;; iai_kinematics_msgs/ErrorCodes _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _pose_stamped
     (write-long (length _pose_stamped) s)
     (dolist (elem _pose_stamped)
       (send elem :serialize s)
       )
     ;; string[] _fk_link_names
     (write-long (length _fk_link_names) s)
     (dolist (elem _fk_link_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; iai_kinematics_msgs/ErrorCodes _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _pose_stamped
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_stamped (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _pose_stamped)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _fk_link_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fk_link_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _fk_link_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; iai_kinematics_msgs/ErrorCodes _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetPositionFK
  :super ros::object
  :slots ())

(setf (get iai_kinematics_msgs::GetPositionFK :md5sum-) "2088007c8963e2252a67c872affa0985")
(setf (get iai_kinematics_msgs::GetPositionFK :datatype-) "iai_kinematics_msgs/GetPositionFK")
(setf (get iai_kinematics_msgs::GetPositionFK :request) iai_kinematics_msgs::GetPositionFKRequest)
(setf (get iai_kinematics_msgs::GetPositionFK :response) iai_kinematics_msgs::GetPositionFKResponse)

(defmethod iai_kinematics_msgs::GetPositionFKRequest
  (:response () (instance iai_kinematics_msgs::GetPositionFKResponse :init)))

(setf (get iai_kinematics_msgs::GetPositionFKRequest :md5sum-) "2088007c8963e2252a67c872affa0985")
(setf (get iai_kinematics_msgs::GetPositionFKRequest :datatype-) "iai_kinematics_msgs/GetPositionFKRequest")
(setf (get iai_kinematics_msgs::GetPositionFKRequest :definition-)
      "# A service definition for a standard forward kinematics service
# The frame_id in the header message is the frame in which 
# the forward kinematics poses will be returned
Header header

# A vector of link name for which forward kinematics must be computed
string[] fk_link_names

# A robot state consisting of joint names and joint positions to be used for forward kinematics
iai_kinematics_msgs/RobotState robot_state

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
---
# The resultant vector of PoseStamped messages that contains the (stamped) poses of the requested links
geometry_msgs/PoseStamped[] pose_stamped

# The list of link names corresponding to the poses
string[] fk_link_names

iai_kinematics_msgs/ErrorCodes error_code


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
MSG: iai_kinematics_msgs/ErrorCodes
int32 val

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

(setf (get iai_kinematics_msgs::GetPositionFKResponse :md5sum-) "2088007c8963e2252a67c872affa0985")
(setf (get iai_kinematics_msgs::GetPositionFKResponse :datatype-) "iai_kinematics_msgs/GetPositionFKResponse")
(setf (get iai_kinematics_msgs::GetPositionFKResponse :definition-)
      "# A service definition for a standard forward kinematics service
# The frame_id in the header message is the frame in which 
# the forward kinematics poses will be returned
Header header

# A vector of link name for which forward kinematics must be computed
string[] fk_link_names

# A robot state consisting of joint names and joint positions to be used for forward kinematics
iai_kinematics_msgs/RobotState robot_state

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
---
# The resultant vector of PoseStamped messages that contains the (stamped) poses of the requested links
geometry_msgs/PoseStamped[] pose_stamped

# The list of link names corresponding to the poses
string[] fk_link_names

iai_kinematics_msgs/ErrorCodes error_code


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
MSG: iai_kinematics_msgs/ErrorCodes
int32 val

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



(provide :iai_kinematics_msgs/GetPositionFK "2088007c8963e2252a67c872affa0985")


