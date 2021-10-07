;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::GetWeightedIK)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'GetWeightedIK (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIK")
  (make-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIK"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIKREQUEST")
  (make-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIKREQUEST"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIKRESPONSE")
  (make-package "IAI_KINEMATICS_MSGS::GETWEIGHTEDIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass iai_kinematics_msgs::GetWeightedIKRequest
  :super ros::object
  :slots (_pose _tool_frame _ik_seed _weights ))

(defmethod iai_kinematics_msgs::GetWeightedIKRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:tool_frame __tool_frame) (instance geometry_msgs::Pose :init))
    ((:ik_seed __ik_seed) (instance sensor_msgs::JointState :init))
    ((:weights __weights) (instance iai_kinematics_msgs::KDLWeights :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _tool_frame __tool_frame)
   (setq _ik_seed __ik_seed)
   (setq _weights __weights)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:tool_frame
   (&rest __tool_frame)
   (if (keywordp (car __tool_frame))
       (send* _tool_frame __tool_frame)
     (progn
       (if __tool_frame (setq _tool_frame (car __tool_frame)))
       _tool_frame)))
  (:ik_seed
   (&rest __ik_seed)
   (if (keywordp (car __ik_seed))
       (send* _ik_seed __ik_seed)
     (progn
       (if __ik_seed (setq _ik_seed (car __ik_seed)))
       _ik_seed)))
  (:weights
   (&rest __weights)
   (if (keywordp (car __weights))
       (send* _weights __weights)
     (progn
       (if __weights (setq _weights (car __weights)))
       _weights)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _tool_frame
    (send _tool_frame :serialization-length)
    ;; sensor_msgs/JointState _ik_seed
    (send _ik_seed :serialization-length)
    ;; iai_kinematics_msgs/KDLWeights _weights
    (send _weights :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _tool_frame
       (send _tool_frame :serialize s)
     ;; sensor_msgs/JointState _ik_seed
       (send _ik_seed :serialize s)
     ;; iai_kinematics_msgs/KDLWeights _weights
       (send _weights :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _tool_frame
     (send _tool_frame :deserialize buf ptr-) (incf ptr- (send _tool_frame :serialization-length))
   ;; sensor_msgs/JointState _ik_seed
     (send _ik_seed :deserialize buf ptr-) (incf ptr- (send _ik_seed :serialization-length))
   ;; iai_kinematics_msgs/KDLWeights _weights
     (send _weights :deserialize buf ptr-) (incf ptr- (send _weights :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetWeightedIKResponse
  :super ros::object
  :slots (_solution _error_code ))

(defmethod iai_kinematics_msgs::GetWeightedIKResponse
  (:init
   (&key
    ((:solution __solution) (instance sensor_msgs::JointState :init))
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
    ;; sensor_msgs/JointState _solution
    (send _solution :serialization-length)
    ;; iai_kinematics_msgs/ErrorCodes _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _solution
       (send _solution :serialize s)
     ;; iai_kinematics_msgs/ErrorCodes _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _solution
     (send _solution :deserialize buf ptr-) (incf ptr- (send _solution :serialization-length))
   ;; iai_kinematics_msgs/ErrorCodes _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetWeightedIK
  :super ros::object
  :slots ())

(setf (get iai_kinematics_msgs::GetWeightedIK :md5sum-) "ae963d0cab638b025249ba90e48a170c")
(setf (get iai_kinematics_msgs::GetWeightedIK :datatype-) "iai_kinematics_msgs/GetWeightedIK")
(setf (get iai_kinematics_msgs::GetWeightedIK :request) iai_kinematics_msgs::GetWeightedIKRequest)
(setf (get iai_kinematics_msgs::GetWeightedIK :response) iai_kinematics_msgs::GetWeightedIKResponse)

(defmethod iai_kinematics_msgs::GetWeightedIKRequest
  (:response () (instance iai_kinematics_msgs::GetWeightedIKResponse :init)))

(setf (get iai_kinematics_msgs::GetWeightedIKRequest :md5sum-) "ae963d0cab638b025249ba90e48a170c")
(setf (get iai_kinematics_msgs::GetWeightedIKRequest :datatype-) "iai_kinematics_msgs/GetWeightedIKRequest")
(setf (get iai_kinematics_msgs::GetWeightedIKRequest :definition-)
      "# the desired pose of the tool frame
geometry_msgs/PoseStamped pose

# tool frame defauts to x_wrist_roll_link
geometry_msgs/Pose tool_frame

# the joint space configuration to resolve redundancy
sensor_msgs/JointState ik_seed

# Weight matrices for IK solver
iai_kinematics_msgs/KDLWeights weights


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
MSG: iai_kinematics_msgs/KDLWeights
byte INVALID_MODE = 0
byte SET_TS = 1
byte SET_JS = 2
byte SET_LAMBDA = 4
byte SET_TS_JS = 3

byte mode                  # or-combination of values to set
float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order
float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order
float64 lambda             # Lambda value
---
sensor_msgs/JointState solution

iai_kinematics_msgs/ErrorCodes error_code


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

(setf (get iai_kinematics_msgs::GetWeightedIKResponse :md5sum-) "ae963d0cab638b025249ba90e48a170c")
(setf (get iai_kinematics_msgs::GetWeightedIKResponse :datatype-) "iai_kinematics_msgs/GetWeightedIKResponse")
(setf (get iai_kinematics_msgs::GetWeightedIKResponse :definition-)
      "# the desired pose of the tool frame
geometry_msgs/PoseStamped pose

# tool frame defauts to x_wrist_roll_link
geometry_msgs/Pose tool_frame

# the joint space configuration to resolve redundancy
sensor_msgs/JointState ik_seed

# Weight matrices for IK solver
iai_kinematics_msgs/KDLWeights weights


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
MSG: iai_kinematics_msgs/KDLWeights
byte INVALID_MODE = 0
byte SET_TS = 1
byte SET_JS = 2
byte SET_LAMBDA = 4
byte SET_TS_JS = 3

byte mode                  # or-combination of values to set
float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order
float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order
float64 lambda             # Lambda value
---
sensor_msgs/JointState solution

iai_kinematics_msgs/ErrorCodes error_code


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



(provide :iai_kinematics_msgs/GetWeightedIK "ae963d0cab638b025249ba90e48a170c")


