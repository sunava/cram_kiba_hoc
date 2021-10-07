; Auto-generated. Do not edit!


(cl:in-package iai_wsg_50_msgs-msg)


;//! \htmlinclude SpeedCmd.msg.html

(cl:defclass <SpeedCmd> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeedCmd (<SpeedCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_wsg_50_msgs-msg:<SpeedCmd> is deprecated: use iai_wsg_50_msgs-msg:SpeedCmd instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_wsg_50_msgs-msg:speed-val is deprecated.  Use iai_wsg_50_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <SpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_wsg_50_msgs-msg:force-val is deprecated.  Use iai_wsg_50_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedCmd>) ostream)
  "Serializes a message object of type '<SpeedCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedCmd>) istream)
  "Deserializes a message object of type '<SpeedCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedCmd>)))
  "Returns string type for a message object of type '<SpeedCmd>"
  "iai_wsg_50_msgs/SpeedCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedCmd)))
  "Returns string type for a message object of type 'SpeedCmd"
  "iai_wsg_50_msgs/SpeedCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedCmd>)))
  "Returns md5sum for a message object of type '<SpeedCmd>"
  "78bc8e5b0b23e68f9c42fc33214123d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedCmd)))
  "Returns md5sum for a message object of type 'SpeedCmd"
  "78bc8e5b0b23e68f9c42fc33214123d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedCmd>)))
  "Returns full string definition for message of type '<SpeedCmd>"
  (cl:format cl:nil "float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedCmd)))
  "Returns full string definition for message of type 'SpeedCmd"
  (cl:format cl:nil "float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedCmd
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
