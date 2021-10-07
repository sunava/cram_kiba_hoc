; Auto-generated. Do not edit!


(cl:in-package iai_control_msgs-msg)


;//! \htmlinclude CartState.msg.html

(cl:defclass <CartState> (roslisp-msg-protocol:ros-message)
  ((running
    :reader running
    :initarg :running
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:float
    :initform 0.0)
   (error_pos
    :reader error_pos
    :initarg :error_pos
    :type cl:float
    :initform 0.0)
   (error_rot
    :reader error_rot
    :initarg :error_rot
    :type cl:float
    :initform 0.0)
   (vel_norm
    :reader vel_norm
    :initarg :vel_norm
    :type cl:float
    :initform 0.0)
   (elapsed_seconds
    :reader elapsed_seconds
    :initarg :elapsed_seconds
    :type cl:float
    :initform 0.0)
   (ee_frame_name
    :reader ee_frame_name
    :initarg :ee_frame_name
    :type cl:string
    :initform "")
   (base_frame_name
    :reader base_frame_name
    :initarg :base_frame_name
    :type cl:string
    :initform ""))
)

(cl:defclass CartState (<CartState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_control_msgs-msg:<CartState> is deprecated: use iai_control_msgs-msg:CartState instead.")))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:running-val is deprecated.  Use iai_control_msgs-msg:running instead.")
  (running m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:error-val is deprecated.  Use iai_control_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'error_pos-val :lambda-list '(m))
(cl:defmethod error_pos-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:error_pos-val is deprecated.  Use iai_control_msgs-msg:error_pos instead.")
  (error_pos m))

(cl:ensure-generic-function 'error_rot-val :lambda-list '(m))
(cl:defmethod error_rot-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:error_rot-val is deprecated.  Use iai_control_msgs-msg:error_rot instead.")
  (error_rot m))

(cl:ensure-generic-function 'vel_norm-val :lambda-list '(m))
(cl:defmethod vel_norm-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:vel_norm-val is deprecated.  Use iai_control_msgs-msg:vel_norm instead.")
  (vel_norm m))

(cl:ensure-generic-function 'elapsed_seconds-val :lambda-list '(m))
(cl:defmethod elapsed_seconds-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:elapsed_seconds-val is deprecated.  Use iai_control_msgs-msg:elapsed_seconds instead.")
  (elapsed_seconds m))

(cl:ensure-generic-function 'ee_frame_name-val :lambda-list '(m))
(cl:defmethod ee_frame_name-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:ee_frame_name-val is deprecated.  Use iai_control_msgs-msg:ee_frame_name instead.")
  (ee_frame_name m))

(cl:ensure-generic-function 'base_frame_name-val :lambda-list '(m))
(cl:defmethod base_frame_name-val ((m <CartState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:base_frame_name-val is deprecated.  Use iai_control_msgs-msg:base_frame_name instead.")
  (base_frame_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartState>) ostream)
  "Serializes a message object of type '<CartState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_norm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'elapsed_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ee_frame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ee_frame_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_frame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_frame_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartState>) istream)
  "Deserializes a message object of type '<CartState>"
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_rot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_norm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elapsed_seconds) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_frame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ee_frame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_frame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_frame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartState>)))
  "Returns string type for a message object of type '<CartState>"
  "iai_control_msgs/CartState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartState)))
  "Returns string type for a message object of type 'CartState"
  "iai_control_msgs/CartState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartState>)))
  "Returns md5sum for a message object of type '<CartState>"
  "5fdee31b50bcb0376e81235255a47390")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartState)))
  "Returns md5sum for a message object of type 'CartState"
  "5fdee31b50bcb0376e81235255a47390")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartState>)))
  "Returns full string definition for message of type '<CartState>"
  (cl:format cl:nil "#Report the state of the cartesian controller~%bool running   # Is the controller active?~%float64 error  # Represents distance to the goal~%float64 error_pos # norm of the cartesian position error~%float64 error_rot # norm of the cartesian orientation error~%float64 vel_norm # norm of the commanded velocity vector~%float64 elapsed_seconds # time since the last goal was set~%~%#geometry_msgs/PoseStamped goal_pose   # Has pose of the running goal~%string ee_frame_name  # Frame at the end of the kin. chain~%string base_frame_name # Frame at the beginning of the kin. chain~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartState)))
  "Returns full string definition for message of type 'CartState"
  (cl:format cl:nil "#Report the state of the cartesian controller~%bool running   # Is the controller active?~%float64 error  # Represents distance to the goal~%float64 error_pos # norm of the cartesian position error~%float64 error_rot # norm of the cartesian orientation error~%float64 vel_norm # norm of the commanded velocity vector~%float64 elapsed_seconds # time since the last goal was set~%~%#geometry_msgs/PoseStamped goal_pose   # Has pose of the running goal~%string ee_frame_name  # Frame at the end of the kin. chain~%string base_frame_name # Frame at the beginning of the kin. chain~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartState>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'ee_frame_name))
     4 (cl:length (cl:slot-value msg 'base_frame_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartState>))
  "Converts a ROS message object to a list"
  (cl:list 'CartState
    (cl:cons ':running (running msg))
    (cl:cons ':error (error msg))
    (cl:cons ':error_pos (error_pos msg))
    (cl:cons ':error_rot (error_rot msg))
    (cl:cons ':vel_norm (vel_norm msg))
    (cl:cons ':elapsed_seconds (elapsed_seconds msg))
    (cl:cons ':ee_frame_name (ee_frame_name msg))
    (cl:cons ':base_frame_name (base_frame_name msg))
))
