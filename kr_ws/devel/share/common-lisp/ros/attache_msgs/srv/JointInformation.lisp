; Auto-generated. Do not edit!


(cl:in-package attache_msgs-srv)


;//! \htmlinclude JointInformation-request.msg.html

(cl:defclass <JointInformation-request> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform ""))
)

(cl:defclass JointInformation-request (<JointInformation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointInformation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointInformation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<JointInformation-request> is deprecated: use attache_msgs-srv:JointInformation-request instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <JointInformation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:model-val is deprecated.  Use attache_msgs-srv:model instead.")
  (model m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <JointInformation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:joint-val is deprecated.  Use attache_msgs-srv:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointInformation-request>) ostream)
  "Serializes a message object of type '<JointInformation-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointInformation-request>) istream)
  "Deserializes a message object of type '<JointInformation-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointInformation-request>)))
  "Returns string type for a service object of type '<JointInformation-request>"
  "attache_msgs/JointInformationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInformation-request)))
  "Returns string type for a service object of type 'JointInformation-request"
  "attache_msgs/JointInformationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointInformation-request>)))
  "Returns md5sum for a message object of type '<JointInformation-request>"
  "dfe961022f062be71a8d5fe97f8cfbcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointInformation-request)))
  "Returns md5sum for a message object of type 'JointInformation-request"
  "dfe961022f062be71a8d5fe97f8cfbcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointInformation-request>)))
  "Returns full string definition for message of type '<JointInformation-request>"
  (cl:format cl:nil "string model~%string joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointInformation-request)))
  "Returns full string definition for message of type 'JointInformation-request"
  (cl:format cl:nil "string model~%string joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointInformation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'joint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointInformation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointInformation-request
    (cl:cons ':model (model msg))
    (cl:cons ':joint (joint msg))
))
;//! \htmlinclude JointInformation-response.msg.html

(cl:defclass <JointInformation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointInformation-response (<JointInformation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointInformation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointInformation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<JointInformation-response> is deprecated: use attache_msgs-srv:JointInformation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JointInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:success-val is deprecated.  Use attache_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <JointInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:position-val is deprecated.  Use attache_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <JointInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:min-val is deprecated.  Use attache_msgs-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <JointInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:max-val is deprecated.  Use attache_msgs-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointInformation-response>) ostream)
  "Serializes a message object of type '<JointInformation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointInformation-response>) istream)
  "Deserializes a message object of type '<JointInformation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointInformation-response>)))
  "Returns string type for a service object of type '<JointInformation-response>"
  "attache_msgs/JointInformationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInformation-response)))
  "Returns string type for a service object of type 'JointInformation-response"
  "attache_msgs/JointInformationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointInformation-response>)))
  "Returns md5sum for a message object of type '<JointInformation-response>"
  "dfe961022f062be71a8d5fe97f8cfbcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointInformation-response)))
  "Returns md5sum for a message object of type 'JointInformation-response"
  "dfe961022f062be71a8d5fe97f8cfbcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointInformation-response>)))
  "Returns full string definition for message of type '<JointInformation-response>"
  (cl:format cl:nil "bool success~%float32 position~%float32 min~%float32 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointInformation-response)))
  "Returns full string definition for message of type 'JointInformation-response"
  (cl:format cl:nil "bool success~%float32 position~%float32 min~%float32 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointInformation-response>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointInformation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointInformation-response
    (cl:cons ':success (success msg))
    (cl:cons ':position (position msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointInformation)))
  'JointInformation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointInformation)))
  'JointInformation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInformation)))
  "Returns string type for a service object of type '<JointInformation>"
  "attache_msgs/JointInformation")