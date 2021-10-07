; Auto-generated. Do not edit!


(cl:in-package iai_control_msgs-msg)


;//! \htmlinclude MultiJointVelocityImpedanceCommand.msg.html

(cl:defclass <MultiJointVelocityImpedanceCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (stiffness
    :reader stiffness
    :initarg :stiffness
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (damping
    :reader damping
    :initarg :damping
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (add_torque
    :reader add_torque
    :initarg :add_torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MultiJointVelocityImpedanceCommand (<MultiJointVelocityImpedanceCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiJointVelocityImpedanceCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiJointVelocityImpedanceCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_control_msgs-msg:<MultiJointVelocityImpedanceCommand> is deprecated: use iai_control_msgs-msg:MultiJointVelocityImpedanceCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MultiJointVelocityImpedanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:header-val is deprecated.  Use iai_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MultiJointVelocityImpedanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:velocity-val is deprecated.  Use iai_control_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <MultiJointVelocityImpedanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:stiffness-val is deprecated.  Use iai_control_msgs-msg:stiffness instead.")
  (stiffness m))

(cl:ensure-generic-function 'damping-val :lambda-list '(m))
(cl:defmethod damping-val ((m <MultiJointVelocityImpedanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:damping-val is deprecated.  Use iai_control_msgs-msg:damping instead.")
  (damping m))

(cl:ensure-generic-function 'add_torque-val :lambda-list '(m))
(cl:defmethod add_torque-val ((m <MultiJointVelocityImpedanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:add_torque-val is deprecated.  Use iai_control_msgs-msg:add_torque instead.")
  (add_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiJointVelocityImpedanceCommand>) ostream)
  "Serializes a message object of type '<MultiJointVelocityImpedanceCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stiffness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'stiffness))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'damping))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'damping))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'add_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'add_torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiJointVelocityImpedanceCommand>) istream)
  "Deserializes a message object of type '<MultiJointVelocityImpedanceCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stiffness) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stiffness)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'damping) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'damping)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'add_torque) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'add_torque)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiJointVelocityImpedanceCommand>)))
  "Returns string type for a message object of type '<MultiJointVelocityImpedanceCommand>"
  "iai_control_msgs/MultiJointVelocityImpedanceCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiJointVelocityImpedanceCommand)))
  "Returns string type for a message object of type 'MultiJointVelocityImpedanceCommand"
  "iai_control_msgs/MultiJointVelocityImpedanceCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiJointVelocityImpedanceCommand>)))
  "Returns md5sum for a message object of type '<MultiJointVelocityImpedanceCommand>"
  "d4747ea02611dd2a7cda90f6dce148aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiJointVelocityImpedanceCommand)))
  "Returns md5sum for a message object of type 'MultiJointVelocityImpedanceCommand"
  "d4747ea02611dd2a7cda90f6dce148aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiJointVelocityImpedanceCommand>)))
  "Returns full string definition for message of type '<MultiJointVelocityImpedanceCommand>"
  (cl:format cl:nil "#Header~%Header header~%~%# Command to move a set of velocity-resolved robot joints ~%float32[] velocity     #joint velocity in rad/s~%float32[] stiffness    #joint stiffness in Nm/rad~%float32[] damping      #joint damping (normalized, 0.7 is critically dampped)~%~%# Experimental field: DO NOT USE unless you really know what you are doing!~%float32[] add_torque   #additional joint torque in Nm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiJointVelocityImpedanceCommand)))
  "Returns full string definition for message of type 'MultiJointVelocityImpedanceCommand"
  (cl:format cl:nil "#Header~%Header header~%~%# Command to move a set of velocity-resolved robot joints ~%float32[] velocity     #joint velocity in rad/s~%float32[] stiffness    #joint stiffness in Nm/rad~%float32[] damping      #joint damping (normalized, 0.7 is critically dampped)~%~%# Experimental field: DO NOT USE unless you really know what you are doing!~%float32[] add_torque   #additional joint torque in Nm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiJointVelocityImpedanceCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stiffness) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'damping) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'add_torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiJointVelocityImpedanceCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiJointVelocityImpedanceCommand
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':stiffness (stiffness msg))
    (cl:cons ':damping (damping msg))
    (cl:cons ':add_torque (add_torque msg))
))
