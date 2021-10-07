; Auto-generated. Do not edit!


(cl:in-package json_prolog_msgs-srv)


;//! \htmlinclude PrologQuery-request.msg.html

(cl:defclass <PrologQuery-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (query
    :reader query
    :initarg :query
    :type cl:string
    :initform ""))
)

(cl:defclass PrologQuery-request (<PrologQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologQuery-request> is deprecated: use json_prolog_msgs-srv:PrologQuery-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <PrologQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:mode-val is deprecated.  Use json_prolog_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PrologQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:id-val is deprecated.  Use json_prolog_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <PrologQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:query-val is deprecated.  Use json_prolog_msgs-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PrologQuery-request>)))
    "Constants for message type '<PrologQuery-request>"
  '((:ALL_SOLUTIONS . 0)
    (:INCREMENTAL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PrologQuery-request)))
    "Constants for message type 'PrologQuery-request"
  '((:ALL_SOLUTIONS . 0)
    (:INCREMENTAL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologQuery-request>) ostream)
  "Serializes a message object of type '<PrologQuery-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologQuery-request>) istream)
  "Deserializes a message object of type '<PrologQuery-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologQuery-request>)))
  "Returns string type for a service object of type '<PrologQuery-request>"
  "json_prolog_msgs/PrologQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologQuery-request)))
  "Returns string type for a service object of type 'PrologQuery-request"
  "json_prolog_msgs/PrologQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologQuery-request>)))
  "Returns md5sum for a message object of type '<PrologQuery-request>"
  "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologQuery-request)))
  "Returns md5sum for a message object of type 'PrologQuery-request"
  "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologQuery-request>)))
  "Returns full string definition for message of type '<PrologQuery-request>"
  (cl:format cl:nil "# The following constants, together with the `mode' slot, allow for~%# configuring how the prolog engine is supposed to generate~%# solutions. ALL_SOLUTIONS indicates that the query should be~%# processed completely immediately. INCREMENTAL indicates that only~%# one solution should be generated at one time whenever the~%# next_solution is called.~%~%byte ALL_SOLUTIONS=0~%byte INCREMENTAL=1~%~%byte mode~%string id~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologQuery-request)))
  "Returns full string definition for message of type 'PrologQuery-request"
  (cl:format cl:nil "# The following constants, together with the `mode' slot, allow for~%# configuring how the prolog engine is supposed to generate~%# solutions. ALL_SOLUTIONS indicates that the query should be~%# processed completely immediately. INCREMENTAL indicates that only~%# one solution should be generated at one time whenever the~%# next_solution is called.~%~%byte ALL_SOLUTIONS=0~%byte INCREMENTAL=1~%~%byte mode~%string id~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologQuery-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologQuery-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':id (id msg))
    (cl:cons ':query (query msg))
))
;//! \htmlinclude PrologQuery-response.msg.html

(cl:defclass <PrologQuery-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass PrologQuery-response (<PrologQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrologQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrologQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name json_prolog_msgs-srv:<PrologQuery-response> is deprecated: use json_prolog_msgs-srv:PrologQuery-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <PrologQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:ok-val is deprecated.  Use json_prolog_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PrologQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader json_prolog_msgs-srv:message-val is deprecated.  Use json_prolog_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrologQuery-response>) ostream)
  "Serializes a message object of type '<PrologQuery-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrologQuery-response>) istream)
  "Deserializes a message object of type '<PrologQuery-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrologQuery-response>)))
  "Returns string type for a service object of type '<PrologQuery-response>"
  "json_prolog_msgs/PrologQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologQuery-response)))
  "Returns string type for a service object of type 'PrologQuery-response"
  "json_prolog_msgs/PrologQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrologQuery-response>)))
  "Returns md5sum for a message object of type '<PrologQuery-response>"
  "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrologQuery-response)))
  "Returns md5sum for a message object of type 'PrologQuery-response"
  "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrologQuery-response>)))
  "Returns full string definition for message of type '<PrologQuery-response>"
  (cl:format cl:nil "bool ok~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrologQuery-response)))
  "Returns full string definition for message of type 'PrologQuery-response"
  (cl:format cl:nil "bool ok~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrologQuery-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrologQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PrologQuery-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PrologQuery)))
  'PrologQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PrologQuery)))
  'PrologQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrologQuery)))
  "Returns string type for a service object of type '<PrologQuery>"
  "json_prolog_msgs/PrologQuery")