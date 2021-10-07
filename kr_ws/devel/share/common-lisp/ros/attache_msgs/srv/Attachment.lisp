; Auto-generated. Do not edit!


(cl:in-package attache_msgs-srv)


;//! \htmlinclude Attachment-request.msg.html

(cl:defclass <Attachment-request> (roslisp-msg-protocol:ros-message)
  ((model1
    :reader model1
    :initarg :model1
    :type cl:string
    :initform "")
   (link1
    :reader link1
    :initarg :link1
    :type cl:string
    :initform "")
   (model2
    :reader model2
    :initarg :model2
    :type cl:string
    :initform "")
   (link2
    :reader link2
    :initarg :link2
    :type cl:string
    :initform ""))
)

(cl:defclass Attachment-request (<Attachment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Attachment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Attachment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<Attachment-request> is deprecated: use attache_msgs-srv:Attachment-request instead.")))

(cl:ensure-generic-function 'model1-val :lambda-list '(m))
(cl:defmethod model1-val ((m <Attachment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:model1-val is deprecated.  Use attache_msgs-srv:model1 instead.")
  (model1 m))

(cl:ensure-generic-function 'link1-val :lambda-list '(m))
(cl:defmethod link1-val ((m <Attachment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:link1-val is deprecated.  Use attache_msgs-srv:link1 instead.")
  (link1 m))

(cl:ensure-generic-function 'model2-val :lambda-list '(m))
(cl:defmethod model2-val ((m <Attachment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:model2-val is deprecated.  Use attache_msgs-srv:model2 instead.")
  (model2 m))

(cl:ensure-generic-function 'link2-val :lambda-list '(m))
(cl:defmethod link2-val ((m <Attachment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:link2-val is deprecated.  Use attache_msgs-srv:link2 instead.")
  (link2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Attachment-request>) ostream)
  "Serializes a message object of type '<Attachment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model2))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Attachment-request>) istream)
  "Deserializes a message object of type '<Attachment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Attachment-request>)))
  "Returns string type for a service object of type '<Attachment-request>"
  "attache_msgs/AttachmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attachment-request)))
  "Returns string type for a service object of type 'Attachment-request"
  "attache_msgs/AttachmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Attachment-request>)))
  "Returns md5sum for a message object of type '<Attachment-request>"
  "c66622a43bf3cac88540c60ce36d5b63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Attachment-request)))
  "Returns md5sum for a message object of type 'Attachment-request"
  "c66622a43bf3cac88540c60ce36d5b63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Attachment-request>)))
  "Returns full string definition for message of type '<Attachment-request>"
  (cl:format cl:nil "string model1~%string link1~%~%string model2~%string link2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Attachment-request)))
  "Returns full string definition for message of type 'Attachment-request"
  (cl:format cl:nil "string model1~%string link1~%~%string model2~%string link2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Attachment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model1))
     4 (cl:length (cl:slot-value msg 'link1))
     4 (cl:length (cl:slot-value msg 'model2))
     4 (cl:length (cl:slot-value msg 'link2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Attachment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Attachment-request
    (cl:cons ':model1 (model1 msg))
    (cl:cons ':link1 (link1 msg))
    (cl:cons ':model2 (model2 msg))
    (cl:cons ':link2 (link2 msg))
))
;//! \htmlinclude Attachment-response.msg.html

(cl:defclass <Attachment-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Attachment-response (<Attachment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Attachment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Attachment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attache_msgs-srv:<Attachment-response> is deprecated: use attache_msgs-srv:Attachment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Attachment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attache_msgs-srv:success-val is deprecated.  Use attache_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Attachment-response>) ostream)
  "Serializes a message object of type '<Attachment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Attachment-response>) istream)
  "Deserializes a message object of type '<Attachment-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Attachment-response>)))
  "Returns string type for a service object of type '<Attachment-response>"
  "attache_msgs/AttachmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attachment-response)))
  "Returns string type for a service object of type 'Attachment-response"
  "attache_msgs/AttachmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Attachment-response>)))
  "Returns md5sum for a message object of type '<Attachment-response>"
  "c66622a43bf3cac88540c60ce36d5b63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Attachment-response)))
  "Returns md5sum for a message object of type 'Attachment-response"
  "c66622a43bf3cac88540c60ce36d5b63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Attachment-response>)))
  "Returns full string definition for message of type '<Attachment-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Attachment-response)))
  "Returns full string definition for message of type 'Attachment-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Attachment-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Attachment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Attachment-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Attachment)))
  'Attachment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Attachment)))
  'Attachment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attachment)))
  "Returns string type for a service object of type '<Attachment>"
  "attache_msgs/Attachment")