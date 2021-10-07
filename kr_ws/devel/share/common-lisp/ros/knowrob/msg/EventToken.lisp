; Auto-generated. Do not edit!


(cl:in-package knowrob-msg)


;//! \htmlinclude EventToken.msg.html

(cl:defclass <EventToken> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (polarization
    :reader polarization
    :initarg :polarization
    :type cl:integer
    :initform 0)
   (event_type
    :reader event_type
    :initarg :event_type
    :type cl:string
    :initform "")
   (participants
    :reader participants
    :initarg :participants
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass EventToken (<EventToken>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventToken>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventToken)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name knowrob-msg:<EventToken> is deprecated: use knowrob-msg:EventToken instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <EventToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader knowrob-msg:timestamp-val is deprecated.  Use knowrob-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'polarization-val :lambda-list '(m))
(cl:defmethod polarization-val ((m <EventToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader knowrob-msg:polarization-val is deprecated.  Use knowrob-msg:polarization instead.")
  (polarization m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <EventToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader knowrob-msg:event_type-val is deprecated.  Use knowrob-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'participants-val :lambda-list '(m))
(cl:defmethod participants-val ((m <EventToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader knowrob-msg:participants-val is deprecated.  Use knowrob-msg:participants instead.")
  (participants m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EventToken>)))
    "Constants for message type '<EventToken>"
  '((:EVENT_BEGIN . 0)
    (:EVENT_END . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EventToken)))
    "Constants for message type 'EventToken"
  '((:EVENT_BEGIN . 0)
    (:EVENT_END . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventToken>) ostream)
  "Serializes a message object of type '<EventToken>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'polarization)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'participants))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'participants))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventToken>) istream)
  "Deserializes a message object of type '<EventToken>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'polarization) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'participants) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'participants)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventToken>)))
  "Returns string type for a message object of type '<EventToken>"
  "knowrob/EventToken")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventToken)))
  "Returns string type for a message object of type 'EventToken"
  "knowrob/EventToken")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventToken>)))
  "Returns md5sum for a message object of type '<EventToken>"
  "ef1605ad2e6ea74763902600ec3f2947")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventToken)))
  "Returns md5sum for a message object of type 'EventToken"
  "ef1605ad2e6ea74763902600ec3f2947")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventToken>)))
  "Returns full string definition for message of type '<EventToken>"
  (cl:format cl:nil "~%uint8 EVENT_BEGIN=0~%uint8 EVENT_END=1~%~%float64 timestamp~%int32 polarization~%string event_type~%string[] participants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventToken)))
  "Returns full string definition for message of type 'EventToken"
  (cl:format cl:nil "~%uint8 EVENT_BEGIN=0~%uint8 EVENT_END=1~%~%float64 timestamp~%int32 polarization~%string event_type~%string[] participants~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventToken>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'event_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'participants) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventToken>))
  "Converts a ROS message object to a list"
  (cl:list 'EventToken
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':polarization (polarization msg))
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':participants (participants msg))
))
