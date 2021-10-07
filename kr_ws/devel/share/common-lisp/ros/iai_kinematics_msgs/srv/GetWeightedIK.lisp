; Auto-generated. Do not edit!


(cl:in-package iai_kinematics_msgs-srv)


;//! \htmlinclude GetWeightedIK-request.msg.html

(cl:defclass <GetWeightedIK-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (tool_frame
    :reader tool_frame
    :initarg :tool_frame
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (ik_seed
    :reader ik_seed
    :initarg :ik_seed
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (weights
    :reader weights
    :initarg :weights
    :type iai_kinematics_msgs-msg:KDLWeights
    :initform (cl:make-instance 'iai_kinematics_msgs-msg:KDLWeights)))
)

(cl:defclass GetWeightedIK-request (<GetWeightedIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWeightedIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWeightedIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_kinematics_msgs-srv:<GetWeightedIK-request> is deprecated: use iai_kinematics_msgs-srv:GetWeightedIK-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetWeightedIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:pose-val is deprecated.  Use iai_kinematics_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'tool_frame-val :lambda-list '(m))
(cl:defmethod tool_frame-val ((m <GetWeightedIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:tool_frame-val is deprecated.  Use iai_kinematics_msgs-srv:tool_frame instead.")
  (tool_frame m))

(cl:ensure-generic-function 'ik_seed-val :lambda-list '(m))
(cl:defmethod ik_seed-val ((m <GetWeightedIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:ik_seed-val is deprecated.  Use iai_kinematics_msgs-srv:ik_seed instead.")
  (ik_seed m))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <GetWeightedIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:weights-val is deprecated.  Use iai_kinematics_msgs-srv:weights instead.")
  (weights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWeightedIK-request>) ostream)
  "Serializes a message object of type '<GetWeightedIK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tool_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_seed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'weights) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWeightedIK-request>) istream)
  "Deserializes a message object of type '<GetWeightedIK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tool_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_seed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'weights) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWeightedIK-request>)))
  "Returns string type for a service object of type '<GetWeightedIK-request>"
  "iai_kinematics_msgs/GetWeightedIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWeightedIK-request)))
  "Returns string type for a service object of type 'GetWeightedIK-request"
  "iai_kinematics_msgs/GetWeightedIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWeightedIK-request>)))
  "Returns md5sum for a message object of type '<GetWeightedIK-request>"
  "ae963d0cab638b025249ba90e48a170c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWeightedIK-request)))
  "Returns md5sum for a message object of type 'GetWeightedIK-request"
  "ae963d0cab638b025249ba90e48a170c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWeightedIK-request>)))
  "Returns full string definition for message of type '<GetWeightedIK-request>"
  (cl:format cl:nil "# the desired pose of the tool frame~%geometry_msgs/PoseStamped pose~%~%# tool frame defauts to x_wrist_roll_link~%geometry_msgs/Pose tool_frame~%~%# the joint space configuration to resolve redundancy~%sensor_msgs/JointState ik_seed~%~%# Weight matrices for IK solver~%iai_kinematics_msgs/KDLWeights weights~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: iai_kinematics_msgs/KDLWeights~%byte INVALID_MODE = 0~%byte SET_TS = 1~%byte SET_JS = 2~%byte SET_LAMBDA = 4~%byte SET_TS_JS = 3~%~%byte mode                  # or-combination of values to set~%float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order~%float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order~%float64 lambda             # Lambda value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWeightedIK-request)))
  "Returns full string definition for message of type 'GetWeightedIK-request"
  (cl:format cl:nil "# the desired pose of the tool frame~%geometry_msgs/PoseStamped pose~%~%# tool frame defauts to x_wrist_roll_link~%geometry_msgs/Pose tool_frame~%~%# the joint space configuration to resolve redundancy~%sensor_msgs/JointState ik_seed~%~%# Weight matrices for IK solver~%iai_kinematics_msgs/KDLWeights weights~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: iai_kinematics_msgs/KDLWeights~%byte INVALID_MODE = 0~%byte SET_TS = 1~%byte SET_JS = 2~%byte SET_LAMBDA = 4~%byte SET_TS_JS = 3~%~%byte mode                  # or-combination of values to set~%float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order~%float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order~%float64 lambda             # Lambda value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWeightedIK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_seed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'weights))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWeightedIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWeightedIK-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':tool_frame (tool_frame msg))
    (cl:cons ':ik_seed (ik_seed msg))
    (cl:cons ':weights (weights msg))
))
;//! \htmlinclude GetWeightedIK-response.msg.html

(cl:defclass <GetWeightedIK-response> (roslisp-msg-protocol:ros-message)
  ((solution
    :reader solution
    :initarg :solution
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (error_code
    :reader error_code
    :initarg :error_code
    :type iai_kinematics_msgs-msg:ErrorCodes
    :initform (cl:make-instance 'iai_kinematics_msgs-msg:ErrorCodes)))
)

(cl:defclass GetWeightedIK-response (<GetWeightedIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWeightedIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWeightedIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_kinematics_msgs-srv:<GetWeightedIK-response> is deprecated: use iai_kinematics_msgs-srv:GetWeightedIK-response instead.")))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <GetWeightedIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:solution-val is deprecated.  Use iai_kinematics_msgs-srv:solution instead.")
  (solution m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetWeightedIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-srv:error_code-val is deprecated.  Use iai_kinematics_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWeightedIK-response>) ostream)
  "Serializes a message object of type '<GetWeightedIK-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'solution) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWeightedIK-response>) istream)
  "Deserializes a message object of type '<GetWeightedIK-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'solution) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWeightedIK-response>)))
  "Returns string type for a service object of type '<GetWeightedIK-response>"
  "iai_kinematics_msgs/GetWeightedIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWeightedIK-response)))
  "Returns string type for a service object of type 'GetWeightedIK-response"
  "iai_kinematics_msgs/GetWeightedIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWeightedIK-response>)))
  "Returns md5sum for a message object of type '<GetWeightedIK-response>"
  "ae963d0cab638b025249ba90e48a170c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWeightedIK-response)))
  "Returns md5sum for a message object of type 'GetWeightedIK-response"
  "ae963d0cab638b025249ba90e48a170c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWeightedIK-response>)))
  "Returns full string definition for message of type '<GetWeightedIK-response>"
  (cl:format cl:nil "sensor_msgs/JointState solution~%~%iai_kinematics_msgs/ErrorCodes error_code~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iai_kinematics_msgs/ErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWeightedIK-response)))
  "Returns full string definition for message of type 'GetWeightedIK-response"
  (cl:format cl:nil "sensor_msgs/JointState solution~%~%iai_kinematics_msgs/ErrorCodes error_code~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iai_kinematics_msgs/ErrorCodes~%int32 val~%~%# overall behavior~%int32 PLANNING_FAILED=-1~%int32 SUCCESS=1~%int32 TIMED_OUT=-2~%~%# start state errors~%int32 START_STATE_IN_COLLISION=-3~%int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4~%~%# goal errors~%int32 GOAL_IN_COLLISION=-5~%int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6~%~%# robot state~%int32 INVALID_ROBOT_STATE=-7~%int32 INCOMPLETE_ROBOT_STATE=-8~%~%# planning request errors~%int32 INVALID_PLANNER_ID=-9~%int32 INVALID_NUM_PLANNING_ATTEMPTS=-10~%int32 INVALID_ALLOWED_PLANNING_TIME=-11~%int32 INVALID_GROUP_NAME=-12~%int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13~%int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14~%int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15~%int32 INVALID_PATH_JOINT_CONSTRAINTS=-16~%int32 INVALID_PATH_POSITION_CONSTRAINTS=-17~%int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18~%~%# state/trajectory monitor errors~%int32 INVALID_TRAJECTORY=-19~%int32 INVALID_INDEX=-20~%int32 JOINT_LIMITS_VIOLATED=-21~%int32 PATH_CONSTRAINTS_VIOLATED=-22~%int32 COLLISION_CONSTRAINTS_VIOLATED=-23~%int32 GOAL_CONSTRAINTS_VIOLATED=-24~%int32 JOINTS_NOT_MOVING=-25~%int32 TRAJECTORY_CONTROLLER_FAILED=-26~%~%# system errors~%int32 FRAME_TRANSFORM_FAILURE=-27~%int32 COLLISION_CHECKING_UNAVAILABLE=-28~%int32 ROBOT_STATE_STALE=-29~%int32 SENSOR_INFO_STALE=-30~%~%# kinematics errors~%int32 NO_IK_SOLUTION=-31~%int32 INVALID_LINK_NAME=-32~%int32 IK_LINK_IN_COLLISION=-33~%int32 NO_FK_SOLUTION=-34~%int32 KINEMATICS_STATE_IN_COLLISION=-35~%~%# general errors~%int32 INVALID_TIMEOUT=-36~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWeightedIK-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'solution))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWeightedIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWeightedIK-response
    (cl:cons ':solution (solution msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWeightedIK)))
  'GetWeightedIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWeightedIK)))
  'GetWeightedIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWeightedIK)))
  "Returns string type for a service object of type '<GetWeightedIK>"
  "iai_kinematics_msgs/GetWeightedIK")