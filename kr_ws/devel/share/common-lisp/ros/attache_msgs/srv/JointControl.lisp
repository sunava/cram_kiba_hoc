; Auto-generated. Do not edit!


(cl:in-package attache_msgs-srv)


;//! \htmlinclude JointControl-request.msg.html

(cl:defclass <JointControl-request> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (hold_position
    :reader hold_position
    :initarg :hold_position
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointControl-request (<JointControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<JointControl-request> is deprecated: use attache_msgs-srv:JointControl-request instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:model-val is deprecated.  Use attache_msgs-srv:model instead.")
  (model m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:joint-val is deprecated.  Use attache_msgs-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:position-val is deprecated.  Use attache_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'hold_position-val :lambda-list '(m))
(cl:defmethod hold_position-val ((m <JointControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:hold_position-val is deprecated.  Use attache_msgs-srv:hold_position instead.")
  (hold_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControl-request>) ostream)
  "Serializes a message object of type '<JointControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hold_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControl-request>) istream)
  "Deserializes a message object of type '<JointControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'hold_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControl-request>)))
  "Returns string type for a service object of type '<JointControl-request>"
  "attache_msgs/JointControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl-request)))
  "Returns string type for a service object of type 'JointControl-request"
  "attache_msgs/JointControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControl-request>)))
  "Returns md5sum for a message object of type '<JointControl-request>"
  "a612aff16b21bbbc8123bb6dd90ae211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControl-request)))
  "Returns md5sum for a message object of type 'JointControl-request"
  "a612aff16b21bbbc8123bb6dd90ae211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControl-request>)))
  "Returns full string definition for message of type '<JointControl-request>"
  (cl:format cl:nil "string model~%string joint~%float32 position~%bool hold_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControl-request)))
  "Returns full string definition for message of type 'JointControl-request"
  (cl:format cl:nil "string model~%string joint~%float32 position~%bool hold_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'joint))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControl-request
    (cl:cons ':model (model msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':position (position msg))
    (cl:cons ':hold_position (hold_position msg))
))
;//! \htmlinclude JointControl-response.msg.html

(cl:defclass <JointControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointControl-response (<JointControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<JointControl-response> is deprecated: use attache_msgs-srv:JointControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JointControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:success-val is deprecated.  Use attache_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControl-response>) ostream)
  "Serializes a message object of type '<JointControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControl-response>) istream)
  "Deserializes a message object of type '<JointControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControl-response>)))
  "Returns string type for a service object of type '<JointControl-response>"
  "attache_msgs/JointControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl-response)))
  "Returns string type for a service object of type 'JointControl-response"
  "attache_msgs/JointControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControl-response>)))
  "Returns md5sum for a message object of type '<JointControl-response>"
  "a612aff16b21bbbc8123bb6dd90ae211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControl-response)))
  "Returns md5sum for a message object of type 'JointControl-response"
  "a612aff16b21bbbc8123bb6dd90ae211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControl-response>)))
  "Returns full string definition for message of type '<JointControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControl-response)))
  "Returns full string definition for message of type 'JointControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointControl)))
  'JointControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointControl)))
  'JointControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControl)))
  "Returns string type for a service object of type '<JointControl>"
  "attache_msgs/JointControl")