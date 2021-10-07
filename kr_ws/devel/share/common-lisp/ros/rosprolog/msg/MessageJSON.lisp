; Auto-generated. Do not edit!


(cl:in-package rosprolog-msg)


;//! \htmlinclude MessageJSON.msg.html

(cl:defclass <MessageJSON> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (json_data
    :reader json_data
    :initarg :json_data
    :type cl:string
    :initform ""))
)

(cl:defclass MessageJSON (<MessageJSON>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageJSON>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageJSON)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosprolog-msg:<MessageJSON> is deprecated: use rosprolog-msg:MessageJSON instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <MessageJSON>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosprolog-msg:topic_name-val is deprecated.  Use rosprolog-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'json_data-val :lambda-list '(m))
(cl:defmethod json_data-val ((m <MessageJSON>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosprolog-msg:json_data-val is deprecated.  Use rosprolog-msg:json_data instead.")
  (json_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageJSON>) ostream)
  "Serializes a message object of type '<MessageJSON>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageJSON>) istream)
  "Deserializes a message object of type '<MessageJSON>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageJSON>)))
  "Returns string type for a message object of type '<MessageJSON>"
  "rosprolog/MessageJSON")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageJSON)))
  "Returns string type for a message object of type 'MessageJSON"
  "rosprolog/MessageJSON")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageJSON>)))
  "Returns md5sum for a message object of type '<MessageJSON>"
  "857e02159eb61b757a9aeb0effde4aa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageJSON)))
  "Returns md5sum for a message object of type 'MessageJSON"
  "857e02159eb61b757a9aeb0effde4aa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageJSON>)))
  "Returns full string definition for message of type '<MessageJSON>"
  (cl:format cl:nil "~%string topic_name~%string json_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageJSON)))
  "Returns full string definition for message of type 'MessageJSON"
  (cl:format cl:nil "~%string topic_name~%string json_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageJSON>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'json_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageJSON>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageJSON
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':json_data (json_data msg))
))
