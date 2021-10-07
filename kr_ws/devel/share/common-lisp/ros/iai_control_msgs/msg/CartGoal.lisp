; Auto-generated. Do not edit!


(cl:in-package iai_control_msgs-msg)


;//! \htmlinclude CartGoal.msg.html

(cl:defclass <CartGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (ee_frame_name
    :reader ee_frame_name
    :initarg :ee_frame_name
    :type cl:string
    :initform ""))
)

(cl:defclass CartGoal (<CartGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_control_msgs-msg:<CartGoal> is deprecated: use iai_control_msgs-msg:CartGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CartGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:pose-val is deprecated.  Use iai_control_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'ee_frame_name-val :lambda-list '(m))
(cl:defmethod ee_frame_name-val ((m <CartGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:ee_frame_name-val is deprecated.  Use iai_control_msgs-msg:ee_frame_name instead.")
  (ee_frame_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartGoal>) ostream)
  "Serializes a message object of type '<CartGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ee_frame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ee_frame_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartGoal>) istream)
  "Deserializes a message object of type '<CartGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_frame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ee_frame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartGoal>)))
  "Returns string type for a message object of type '<CartGoal>"
  "iai_control_msgs/CartGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartGoal)))
  "Returns string type for a message object of type 'CartGoal"
  "iai_control_msgs/CartGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartGoal>)))
  "Returns md5sum for a message object of type '<CartGoal>"
  "635ae40b63305e709867162d912265c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartGoal)))
  "Returns md5sum for a message object of type 'CartGoal"
  "635ae40b63305e709867162d912265c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartGoal>)))
  "Returns full string definition for message of type '<CartGoal>"
  (cl:format cl:nil "# Command to give a cartesian goal to a robot~%geometry_msgs/PoseStamped pose   # Has the stamp, and the Pose of the goal~%string ee_frame_name  # Is the name of the EndEffector frame~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartGoal)))
  "Returns full string definition for message of type 'CartGoal"
  (cl:format cl:nil "# Command to give a cartesian goal to a robot~%geometry_msgs/PoseStamped pose   # Has the stamp, and the Pose of the goal~%string ee_frame_name  # Is the name of the EndEffector frame~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'ee_frame_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CartGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':ee_frame_name (ee_frame_name msg))
))
