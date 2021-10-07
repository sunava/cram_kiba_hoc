; Auto-generated. Do not edit!


(cl:in-package grasp_stability_msgs-srv)


;//! \htmlinclude Control-request.msg.html

(cl:defclass <Control-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (measurement_context_id
    :reader measurement_context_id
    :initarg :measurement_context_id
    :type cl:string
    :initform ""))
)

(cl:defclass Control-request (<Control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasp_stability_msgs-srv:<Control-request> is deprecated: use grasp_stability_msgs-srv:Control-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-srv:command-val is deprecated.  Use grasp_stability_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'measurement_context_id-val :lambda-list '(m))
(cl:defmethod measurement_context_id-val ((m <Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-srv:measurement_context_id-val is deprecated.  Use grasp_stability_msgs-srv:measurement_context_id instead.")
  (measurement_context_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Control-request>)))
    "Constants for message type '<Control-request>"
  '((:CTRL_START . 0)
    (:CTRL_STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Control-request)))
    "Constants for message type 'Control-request"
  '((:CTRL_START . 0)
    (:CTRL_STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control-request>) ostream)
  "Serializes a message object of type '<Control-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'measurement_context_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'measurement_context_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control-request>) istream)
  "Deserializes a message object of type '<Control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'measurement_context_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'measurement_context_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control-request>)))
  "Returns string type for a service object of type '<Control-request>"
  "grasp_stability_msgs/ControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control-request)))
  "Returns string type for a service object of type 'Control-request"
  "grasp_stability_msgs/ControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control-request>)))
  "Returns md5sum for a message object of type '<Control-request>"
  "bf72fbddb94b79305e5d568733fc59be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control-request)))
  "Returns md5sum for a message object of type 'Control-request"
  "bf72fbddb94b79305e5d568733fc59be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control-request>)))
  "Returns full string definition for message of type '<Control-request>"
  (cl:format cl:nil "int32 CTRL_START=0~%int32 CTRL_STOP=1~%int32 command~%string measurement_context_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control-request)))
  "Returns full string definition for message of type 'Control-request"
  (cl:format cl:nil "int32 CTRL_START=0~%int32 CTRL_STOP=1~%int32 command~%string measurement_context_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'measurement_context_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Control-request
    (cl:cons ':command (command msg))
    (cl:cons ':measurement_context_id (measurement_context_id msg))
))
;//! \htmlinclude Control-response.msg.html

(cl:defclass <Control-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass Control-response (<Control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasp_stability_msgs-srv:<Control-response> is deprecated: use grasp_stability_msgs-srv:Control-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-srv:result-val is deprecated.  Use grasp_stability_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Control-response>)))
    "Constants for message type '<Control-response>"
  '((:FAILURE . 0)
    (:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Control-response)))
    "Constants for message type 'Control-response"
  '((:FAILURE . 0)
    (:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control-response>) ostream)
  "Serializes a message object of type '<Control-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control-response>) istream)
  "Deserializes a message object of type '<Control-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control-response>)))
  "Returns string type for a service object of type '<Control-response>"
  "grasp_stability_msgs/ControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control-response)))
  "Returns string type for a service object of type 'Control-response"
  "grasp_stability_msgs/ControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control-response>)))
  "Returns md5sum for a message object of type '<Control-response>"
  "bf72fbddb94b79305e5d568733fc59be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control-response)))
  "Returns md5sum for a message object of type 'Control-response"
  "bf72fbddb94b79305e5d568733fc59be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control-response>)))
  "Returns full string definition for message of type '<Control-response>"
  (cl:format cl:nil "int32 FAILURE=0~%int32 SUCCESS=1~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control-response)))
  "Returns full string definition for message of type 'Control-response"
  (cl:format cl:nil "int32 FAILURE=0~%int32 SUCCESS=1~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Control-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Control)))
  'Control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Control)))
  'Control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control)))
  "Returns string type for a service object of type '<Control>"
  "grasp_stability_msgs/Control")