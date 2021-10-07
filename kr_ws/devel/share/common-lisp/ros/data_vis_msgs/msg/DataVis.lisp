; Auto-generated. Do not edit!


(cl:in-package data_vis_msgs-msg)


;//! \htmlinclude DataVis.msg.html

(cl:defclass <DataVis> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (xlabel
    :reader xlabel
    :initarg :xlabel
    :type cl:string
    :initform "")
   (ylabel
    :reader ylabel
    :initarg :ylabel
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (fontsize
    :reader fontsize
    :initarg :fontsize
    :type cl:string
    :initform "")
   (values
    :reader values
    :initarg :values
    :type (cl:vector data_vis_msgs-msg:ValueList)
   :initform (cl:make-array 0 :element-type 'data_vis_msgs-msg:ValueList :initial-element (cl:make-instance 'data_vis_msgs-msg:ValueList))))
)

(cl:defclass DataVis (<DataVis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataVis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataVis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name data_vis_msgs-msg:<DataVis> is deprecated: use data_vis_msgs-msg:DataVis instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:id-val is deprecated.  Use data_vis_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:type-val is deprecated.  Use data_vis_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:title-val is deprecated.  Use data_vis_msgs-msg:title instead.")
  (title m))

(cl:ensure-generic-function 'xlabel-val :lambda-list '(m))
(cl:defmethod xlabel-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:xlabel-val is deprecated.  Use data_vis_msgs-msg:xlabel instead.")
  (xlabel m))

(cl:ensure-generic-function 'ylabel-val :lambda-list '(m))
(cl:defmethod ylabel-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:ylabel-val is deprecated.  Use data_vis_msgs-msg:ylabel instead.")
  (ylabel m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:width-val is deprecated.  Use data_vis_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:height-val is deprecated.  Use data_vis_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'fontsize-val :lambda-list '(m))
(cl:defmethod fontsize-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:fontsize-val is deprecated.  Use data_vis_msgs-msg:fontsize instead.")
  (fontsize m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <DataVis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:values-val is deprecated.  Use data_vis_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DataVis>)))
    "Constants for message type '<DataVis>"
  '((:TYPE_PIECHART . 0)
    (:TYPE_BARCHART . 1)
    (:TYPE_TREECHART . 2)
    (:TYPE_TIMELINE . 3)
    (:TYPE_LINECHART . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DataVis)))
    "Constants for message type 'DataVis"
  '((:TYPE_PIECHART . 0)
    (:TYPE_BARCHART . 1)
    (:TYPE_TREECHART . 2)
    (:TYPE_TIMELINE . 3)
    (:TYPE_LINECHART . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataVis>) ostream)
  "Serializes a message object of type '<DataVis>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'xlabel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'xlabel))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ylabel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ylabel))
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fontsize))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fontsize))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataVis>) istream)
  "Deserializes a message object of type '<DataVis>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xlabel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'xlabel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ylabel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ylabel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fontsize) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fontsize) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'data_vis_msgs-msg:ValueList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataVis>)))
  "Returns string type for a message object of type '<DataVis>"
  "data_vis_msgs/DataVis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataVis)))
  "Returns string type for a message object of type 'DataVis"
  "data_vis_msgs/DataVis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataVis>)))
  "Returns md5sum for a message object of type '<DataVis>"
  "54fc13c6e72b87a9c5ab7e772c90e8f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataVis)))
  "Returns md5sum for a message object of type 'DataVis"
  "54fc13c6e72b87a9c5ab7e772c90e8f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataVis>)))
  "Returns full string definition for message of type '<DataVis>"
  (cl:format cl:nil "int32 TYPE_PIECHART=0~%int32 TYPE_BARCHART=1~%int32 TYPE_TREECHART=2~%int32 TYPE_TIMELINE=3~%int32 TYPE_LINECHART=4~%~%string id~%int32 type~%string title~%string xlabel~%string ylabel~%int32 width~%int32 height~%string fontsize~%ValueList[] values~%~%================================================================================~%MSG: data_vis_msgs/ValueList~%string label~%string[] value1~%string[] value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataVis)))
  "Returns full string definition for message of type 'DataVis"
  (cl:format cl:nil "int32 TYPE_PIECHART=0~%int32 TYPE_BARCHART=1~%int32 TYPE_TREECHART=2~%int32 TYPE_TIMELINE=3~%int32 TYPE_LINECHART=4~%~%string id~%int32 type~%string title~%string xlabel~%string ylabel~%int32 width~%int32 height~%string fontsize~%ValueList[] values~%~%================================================================================~%MSG: data_vis_msgs/ValueList~%string label~%string[] value1~%string[] value2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataVis>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4 (cl:length (cl:slot-value msg 'title))
     4 (cl:length (cl:slot-value msg 'xlabel))
     4 (cl:length (cl:slot-value msg 'ylabel))
     4
     4
     4 (cl:length (cl:slot-value msg 'fontsize))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataVis>))
  "Converts a ROS message object to a list"
  (cl:list 'DataVis
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':title (title msg))
    (cl:cons ':xlabel (xlabel msg))
    (cl:cons ':ylabel (ylabel msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':fontsize (fontsize msg))
    (cl:cons ':values (values msg))
))
