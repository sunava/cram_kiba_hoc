;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::GetPositionIK)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'GetPositionIK (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONIK")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONIK"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONIKREQUEST")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONIKREQUEST"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETPOSITIONIKRESPONSE")
  (make-package "IAI_KINEMATICS_MSGS::GETPOSITIONIKRESPONSE"))

(in-package "ROS")





(defclass iai_kinematics_msgs::GetPositionIKRequest
  :super ros::object
  :slots (_ik_request _timeout ))

(defmethod iai_kinematics_msgs::GetPositionIKRequest
  (:init
   (&key
    ((:ik_request __ik_request) (instance iai_kinematics_msgs::PositionIKRequest :init))
    ((:timeout __timeout) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ik_request __ik_request)
   (setq _timeout __timeout)
   self)
  (:ik_request
   (&rest __ik_request)
   (if (keywordp (car __ik_request))
       (send* _ik_request __ik_request)
     (progn
       (if __ik_request (setq _ik_request (car __ik_request)))
       _ik_request)))
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; iai_kinematics_msgs/PositionIKRequest _ik_request
    (send _ik_request :serialization-length)
    ;; duration _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iai_kinematics_msgs/PositionIKRequest _ik_request
       (send _ik_request :serialize s)
     ;; duration _timeout
       (write-long (send _timeout :sec) s) (write-long (send _timeout :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iai_kinematics_msgs/PositionIKRequest _ik_request
     (send _ik_request :deserialize buf ptr-) (incf ptr- (send _ik_request :serialization-length))
   ;; duration _timeout
     (send _timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetPositionIKResponse
  :super ros::object
  :slots (_solution _error_code ))

(defmethod iai_kinematics_msgs::GetPositionIKResponse
  (:init
   (&key
    ((:solution __solution) (instance iai_kinematics_msgs::RobotState :init))
    ((:error_code __error_code) (instance iai_kinematics_msgs::ErrorCodes :init))
    )
   (send-super :init)
   (setq _solution __solution)
   (setq _error_code __error_code)
   self)
  (:solution
   (&rest __solution)
   (if (keywordp (car __solution))
       (send* _solution __solution)
     (progn
       (if __solution (setq _solution (car __solution)))
       _solution)))
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
    ;; iai_kinematics_msgs/RobotState _solution
    (send _solution :serialization-length)
    ;; iai_kinematics_msgs/ErrorCodes _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iai_kinematics_msgs/RobotState _solution
       (send _solution :serialize s)
     ;; iai_kinematics_msgs/ErrorCodes _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iai_kinematics_msgs/RobotState _solution
     (send _solution :deserialize buf ptr-) (incf ptr- (send _solution :serialization-length))
   ;; iai_kinematics_msgs/ErrorCodes _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetPositionIK
  :super ros::object
  :slots ())

(setf (get iai_kinematics_msgs::GetPositionIK :md5sum-) "6d82fcb918d48c6d8a708bc55e34ace2")
(setf (get iai_kinematics_msgs::GetPositionIK :datatype-) "iai_kinematics_msgs/GetPositionIK")
(setf (get iai_kinematics_msgs::GetPositionIK :request) iai_kinematics_msgs::GetPositionIKRequest)
(setf (get iai_kinematics_msgs::GetPositionIK :response) iai_kinematics_msgs::GetPositionIKResponse)

(defmethod iai_kinematics_msgs::GetPositionIKRequest
  (:response () (instance iai_kinematics_msgs::GetPositionIKResponse :init)))

(setf (get iai_kinematics_msgs::GetPositionIKRequest :md5sum-) "6d82fcb918d48c6d8a708bc55e34ace2")
(setf (get iai_kinematics_msgs::GetPositionIKRequest :datatype-) "iai_kinematics_msgs/GetPositionIKRequest")
(setf (get iai_kinematics_msgs::GetPositionIKRequest :definition-)
      "# A service call to carry out an inverse kinematics computation
# The inverse kinematics request
iai_kinematics_msgs/PositionIKRequest ik_request
# Maximum allowed time for IK calculation
duration timeout

================================================================================
MSG: iai_kinematics_msgs/PositionIKRequest
# A Position IK request message
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
---
# The returned solution 
# (in the same order as the list of joints specified in the IKRequest message)
iai_kinematics_msgs/RobotState solution

iai_kinematics_msgs/ErrorCodes error_code


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

(setf (get iai_kinematics_msgs::GetPositionIKResponse :md5sum-) "6d82fcb918d48c6d8a708bc55e34ace2")
(setf (get iai_kinematics_msgs::GetPositionIKResponse :datatype-) "iai_kinematics_msgs/GetPositionIKResponse")
(setf (get iai_kinematics_msgs::GetPositionIKResponse :definition-)
      "# A service call to carry out an inverse kinematics computation
# The inverse kinematics request
iai_kinematics_msgs/PositionIKRequest ik_request
# Maximum allowed time for IK calculation
duration timeout

================================================================================
MSG: iai_kinematics_msgs/PositionIKRequest
# A Position IK request message
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
---
# The returned solution 
# (in the same order as the list of joints specified in the IKRequest message)
iai_kinematics_msgs/RobotState solution

iai_kinematics_msgs/ErrorCodes error_code


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



(provide :iai_kinematics_msgs/GetPositionIK "6d82fcb918d48c6d8a708bc55e34ace2")


