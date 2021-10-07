; Auto-generated. Do not edit!


(cl:in-package json_prolog_msgs-srv)


;//! \htmlinclude PrologFinish-request.msg.html

(cl:defclass <PrologFinish-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass PrologFinish-request (<PrologFinish-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologFinish-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologFinish-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologFinish-request> is deprecated: use json_prolog_msgs-srv:PrologFinish-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PrologFinish-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:id-val is deprecated.  Use json_prolog_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologFinish-request>) ostream)
  "Serializes a message object of type '<PrologFinish-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologFinish-request>) istream)
  "Deserializes a message object of type '<PrologFinish-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologFinish-request>)))
  "Returns string type for a service object of type '<PrologFinish-request>"
  "json_prolog_msgs/PrologFinishRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologFinish-request)))
  "Returns string type for a service object of type 'PrologFinish-request"
  "json_prolog_msgs/PrologFinishRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologFinish-request>)))
  "Returns md5sum for a message object of type '<PrologFinish-request>"
  "bbfcda76036ebbe3d36caf7af80b260c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologFinish-request)))
  "Returns md5sum for a message object of type 'PrologFinish-request"
  "bbfcda76036ebbe3d36caf7af80b260c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologFinish-request>)))
  "Returns full string definition for message of type '<PrologFinish-request>"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologFinish-request)))
  "Returns full string definition for message of type 'PrologFinish-request"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologFinish-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologFinish-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologFinish-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude PrologFinish-response.msg.html

(cl:defclass <PrologFinish-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PrologFinish-response (<PrologFinish-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologFinish-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologFinish-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologFinish-response> is deprecated: use json_prolog_msgs-srv:PrologFinish-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologFinish-response>) ostream)
  "Serializes a message object of type '<PrologFinish-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologFinish-response>) istream)
  "Deserializes a message object of type '<PrologFinish-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologFinish-response>)))
  "Returns string type for a service object of type '<PrologFinish-response>"
  "json_prolog_msgs/PrologFinishResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologFinish-response)))
  "Returns string type for a service object of type 'PrologFinish-response"
  "json_prolog_msgs/PrologFinishResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologFinish-response>)))
  "Returns md5sum for a message object of type '<PrologFinish-response>"
  "bbfcda76036ebbe3d36caf7af80b260c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologFinish-response)))
  "Returns md5sum for a message object of type 'PrologFinish-response"
  "bbfcda76036ebbe3d36caf7af80b260c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologFinish-response>)))
  "Returns full string definition for message of type '<PrologFinish-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologFinish-response)))
  "Returns full string definition for message of type 'PrologFinish-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologFinish-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologFinish-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologFinish-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PrologFinish)))
  'PrologFinish-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PrologFinish)))
  'PrologFinish-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologFinish)))
  "Returns string type for a service object of type '<PrologFinish>"
  "json_prolog_msgs/PrologFinish")