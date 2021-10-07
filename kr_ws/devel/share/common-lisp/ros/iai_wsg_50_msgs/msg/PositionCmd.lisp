; Auto-generated. Do not edit!


(cl:in-package iai_wsg_50_msgs-msg)


;//! \htmlinclude PositionCmd.msg.html

(cl:defclass <PositionCmd> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0)
   (speed
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

(cl:defclass PositionCmd (<PositionCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_wsg_50_msgs-msg:<PositionCmd> is deprecated: use iai_wsg_50_msgs-msg:PositionCmd instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <PositionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_wsg_50_msgs-msg:pos-val is deprecated.  Use iai_wsg_50_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <PositionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_wsg_50_msgs-msg:speed-val is deprecated.  Use iai_wsg_50_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <PositionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_wsg_50_msgs-msg:force-val is deprecated.  Use iai_wsg_50_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCmd>) ostream)
  "Serializes a message object of type '<PositionCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCmd>) istream)
  "Deserializes a message object of type '<PositionCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCmd>)))
  "Returns string type for a message object of type '<PositionCmd>"
  "iai_wsg_50_msgs/PositionCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCmd)))
  "Returns string type for a message object of type 'PositionCmd"
  "iai_wsg_50_msgs/PositionCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCmd>)))
  "Returns md5sum for a message object of type '<PositionCmd>"
  "e4b5784d0977ce480c64af4841d95d2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCmd)))
  "Returns md5sum for a message object of type 'PositionCmd"
  "e4b5784d0977ce480c64af4841d95d2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCmd>)))
  "Returns full string definition for message of type '<PositionCmd>"
  (cl:format cl:nil "float32 pos~%float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCmd)))
  "Returns full string definition for message of type 'PositionCmd"
  (cl:format cl:nil "float32 pos~%float32 speed~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCmd>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCmd
    (cl:cons ':pos (pos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
