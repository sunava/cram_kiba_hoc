; Auto-generated. Do not edit!


(cl:in-package data_vis_msgs-msg)


;//! \htmlinclude ValueList.msg.html

(cl:defclass <ValueList> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (value1
    :reader value1
    :initarg :value1
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (value2
    :reader value2
    :initarg :value2
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ValueList (<ValueList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValueList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValueList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name data_vis_msgs-msg:<ValueList> is deprecated: use data_vis_msgs-msg:ValueList instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ValueList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:label-val is deprecated.  Use data_vis_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <ValueList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:value1-val is deprecated.  Use data_vis_msgs-msg:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <ValueList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:value2-val is deprecated.  Use data_vis_msgs-msg:value2 instead.")
  (value2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValueList>) ostream)
  "Serializes a message object of type '<ValueList>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value1))))
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
   (cl:slot-value msg 'value1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value2))))
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
   (cl:slot-value msg 'value2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValueList>) istream)
  "Deserializes a message object of type '<ValueList>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value2)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValueList>)))
  "Returns string type for a message object of type '<ValueList>"
  "data_vis_msgs/ValueList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValueList)))
  "Returns string type for a message object of type 'ValueList"
  "data_vis_msgs/ValueList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValueList>)))
  "Returns md5sum for a message object of type '<ValueList>"
  "93606cae4b5c86869b7aa221cf2b0b01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValueList)))
  "Returns md5sum for a message object of type 'ValueList"
  "93606cae4b5c86869b7aa221cf2b0b01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValueList>)))
  "Returns full string definition for message of type '<ValueList>"
  (cl:format cl:nil "string label~%string[] value1~%string[] value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValueList)))
  "Returns full string definition for message of type 'ValueList"
  (cl:format cl:nil "string label~%string[] value1~%string[] value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValueList>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValueList>))
  "Converts a ROS message object to a list"
  (cl:list 'ValueList
    (cl:cons ':label (label msg))
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':value2 (value2 msg))
))
