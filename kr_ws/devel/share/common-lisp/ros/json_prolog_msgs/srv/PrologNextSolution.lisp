; Auto-generated. Do not edit!


(cl:in-package json_prolog_msgs-srv)


;//! \htmlinclude PrologNextSolution-request.msg.html

(cl:defclass <PrologNextSolution-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass PrologNextSolution-request (<PrologNextSolution-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologNextSolution-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologNextSolution-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologNextSolution-request> is deprecated: use json_prolog_msgs-srv:PrologNextSolution-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PrologNextSolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:id-val is deprecated.  Use json_prolog_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologNextSolution-request>) ostream)
  "Serializes a message object of type '<PrologNextSolution-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologNextSolution-request>) istream)
  "Deserializes a message object of type '<PrologNextSolution-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologNextSolution-request>)))
  "Returns string type for a service object of type '<PrologNextSolution-request>"
  "json_prolog_msgs/PrologNextSolutionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologNextSolution-request)))
  "Returns string type for a service object of type 'PrologNextSolution-request"
  "json_prolog_msgs/PrologNextSolutionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologNextSolution-request>)))
  "Returns md5sum for a message object of type '<PrologNextSolution-request>"
  "b101f472df7bcb78cc53cd5a17ecbda9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologNextSolution-request)))
  "Returns md5sum for a message object of type 'PrologNextSolution-request"
  "b101f472df7bcb78cc53cd5a17ecbda9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologNextSolution-request>)))
  "Returns full string definition for message of type '<PrologNextSolution-request>"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologNextSolution-request)))
  "Returns full string definition for message of type 'PrologNextSolution-request"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologNextSolution-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologNextSolution-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologNextSolution-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude PrologNextSolution-response.msg.html

(cl:defclass <PrologNextSolution-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (solution
    :reader solution
    :initarg :solution
    :type cl:string
    :initform ""))
)

(cl:defclass PrologNextSolution-response (<PrologNextSolution-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologNextSolution-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologNextSolution-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologNextSolution-response> is deprecated: use json_prolog_msgs-srv:PrologNextSolution-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PrologNextSolution-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:status-val is deprecated.  Use json_prolog_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <PrologNextSolution-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:solution-val is deprecated.  Use json_prolog_msgs-srv:solution instead.")
  (solution m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PrologNextSolution-response>)))
    "Constants for message type '<PrologNextSolution-response>"
  '((:NO_SOLUTION . 0)
    (:WRONG_ID . 1)
    (:QUERY_FAILED . 2)
    (:OK . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PrologNextSolution-response)))
    "Constants for message type 'PrologNextSolution-response"
  '((:NO_SOLUTION . 0)
    (:WRONG_ID . 1)
    (:QUERY_FAILED . 2)
    (:OK . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologNextSolution-response>) ostream)
  "Serializes a message object of type '<PrologNextSolution-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologNextSolution-response>) istream)
  "Deserializes a message object of type '<PrologNextSolution-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologNextSolution-response>)))
  "Returns string type for a service object of type '<PrologNextSolution-response>"
  "json_prolog_msgs/PrologNextSolutionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologNextSolution-response)))
  "Returns string type for a service object of type 'PrologNextSolution-response"
  "json_prolog_msgs/PrologNextSolutionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologNextSolution-response>)))
  "Returns md5sum for a message object of type '<PrologNextSolution-response>"
  "b101f472df7bcb78cc53cd5a17ecbda9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologNextSolution-response)))
  "Returns md5sum for a message object of type 'PrologNextSolution-response"
  "b101f472df7bcb78cc53cd5a17ecbda9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologNextSolution-response>)))
  "Returns full string definition for message of type '<PrologNextSolution-response>"
  (cl:format cl:nil "byte NO_SOLUTION = 0~%byte WRONG_ID = 1~%byte QUERY_FAILED = 2~%byte OK = 3~%~%byte status~%string solution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologNextSolution-response)))
  "Returns full string definition for message of type 'PrologNextSolution-response"
  (cl:format cl:nil "byte NO_SOLUTION = 0~%byte WRONG_ID = 1~%byte QUERY_FAILED = 2~%byte OK = 3~%~%byte status~%string solution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologNextSolution-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'solution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologNextSolution-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologNextSolution-response
    (cl:cons ':status (status msg))
    (cl:cons ':solution (solution msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PrologNextSolution)))
  'PrologNextSolution-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PrologNextSolution)))
  'PrologNextSolution-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologNextSolution)))
  "Returns string type for a service object of type '<PrologNextSolution>"
  "json_prolog_msgs/PrologNextSolution")