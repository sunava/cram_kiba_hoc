; Auto-generated. Do not edit!


(cl:in-package rosprolog-srv)


;//! \htmlinclude JSONWrapper-request.msg.html

(cl:defclass <JSONWrapper-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (json_data
    :reader json_data
    :initarg :json_data
    :type cl:string
    :initform ""))
)

(cl:defclass JSONWrapper-request (<JSONWrapper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JSONWrapper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JSONWrapper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosprolog-srv:<JSONWrapper-request> is deprecated: use rosprolog-srv:JSONWrapper-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JSONWrapper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosprolog-srv:mode-val is deprecated.  Use rosprolog-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'json_data-val :lambda-list '(m))
(cl:defmethod json_data-val ((m <JSONWrapper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosprolog-srv:json_data-val is deprecated.  Use rosprolog-srv:json_data instead.")
  (json_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JSONWrapper-request>) ostream)
  "Serializes a message object of type '<JSONWrapper-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JSONWrapper-request>) istream)
  "Deserializes a message object of type '<JSONWrapper-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JSONWrapper-request>)))
  "Returns string type for a service object of type '<JSONWrapper-request>"
  "rosprolog/JSONWrapperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JSONWrapper-request)))
  "Returns string type for a service object of type 'JSONWrapper-request"
  "rosprolog/JSONWrapperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JSONWrapper-request>)))
  "Returns md5sum for a message object of type '<JSONWrapper-request>"
  "711a21c0da0464ac74bbc6e6331ef069")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JSONWrapper-request)))
  "Returns md5sum for a message object of type 'JSONWrapper-request"
  "711a21c0da0464ac74bbc6e6331ef069")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JSONWrapper-request>)))
  "Returns full string definition for message of type '<JSONWrapper-request>"
  (cl:format cl:nil "string mode~%string json_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JSONWrapper-request)))
  "Returns full string definition for message of type 'JSONWrapper-request"
  (cl:format cl:nil "string mode~%string json_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JSONWrapper-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'json_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JSONWrapper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JSONWrapper-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':json_data (json_data msg))
))
;//! \htmlinclude JSONWrapper-response.msg.html

(cl:defclass <JSONWrapper-response> (roslisp-msg-protocol:ros-message)
  ((json_data
    :reader json_data
    :initarg :json_data
    :type cl:string
    :initform ""))
)

(cl:defclass JSONWrapper-response (<JSONWrapper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JSONWrapper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JSONWrapper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosprolog-srv:<JSONWrapper-response> is deprecated: use rosprolog-srv:JSONWrapper-response instead.")))

(cl:ensure-generic-function 'json_data-val :lambda-list '(m))
(cl:defmethod json_data-val ((m <JSONWrapper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosprolog-srv:json_data-val is deprecated.  Use rosprolog-srv:json_data instead.")
  (json_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JSONWrapper-response>) ostream)
  "Serializes a message object of type '<JSONWrapper-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JSONWrapper-response>) istream)
  "Deserializes a message object of type '<JSONWrapper-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JSONWrapper-response>)))
  "Returns string type for a service object of type '<JSONWrapper-response>"
  "rosprolog/JSONWrapperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JSONWrapper-response)))
  "Returns string type for a service object of type 'JSONWrapper-response"
  "rosprolog/JSONWrapperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JSONWrapper-response>)))
  "Returns md5sum for a message object of type '<JSONWrapper-response>"
  "711a21c0da0464ac74bbc6e6331ef069")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JSONWrapper-response)))
  "Returns md5sum for a message object of type 'JSONWrapper-response"
  "711a21c0da0464ac74bbc6e6331ef069")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JSONWrapper-response>)))
  "Returns full string definition for message of type '<JSONWrapper-response>"
  (cl:format cl:nil "string json_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JSONWrapper-response)))
  "Returns full string definition for message of type 'JSONWrapper-response"
  (cl:format cl:nil "string json_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JSONWrapper-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'json_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JSONWrapper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JSONWrapper-response
    (cl:cons ':json_data (json_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JSONWrapper)))
  'JSONWrapper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JSONWrapper)))
  'JSONWrapper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JSONWrapper)))
  "Returns string type for a service object of type '<JSONWrapper>"
  "rosprolog/JSONWrapper")