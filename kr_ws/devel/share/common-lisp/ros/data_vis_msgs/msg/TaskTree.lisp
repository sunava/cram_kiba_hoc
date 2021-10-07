; Auto-generated. Do not edit!


(cl:in-package data_vis_msgs-msg)


;//! \htmlinclude TaskTree.msg.html

(cl:defclass <TaskTree> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (tree
    :reader tree
    :initarg :tree
    :type (cl:vector data_vis_msgs-msg:Task)
   :initform (cl:make-array 0 :element-type 'data_vis_msgs-msg:Task :initial-element (cl:make-instance 'data_vis_msgs-msg:Task))))
)

(cl:defclass TaskTree (<TaskTree>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskTree>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskTree)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name data_vis_msgs-msg:<TaskTree> is deprecated: use data_vis_msgs-msg:TaskTree instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <TaskTree>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:height-val is deprecated.  Use data_vis_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <TaskTree>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:width-val is deprecated.  Use data_vis_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'tree-val :lambda-list '(m))
(cl:defmethod tree-val ((m <TaskTree>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_vis_msgs-msg:tree-val is deprecated.  Use data_vis_msgs-msg:tree instead.")
  (tree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskTree>) ostream)
  "Serializes a message object of type '<TaskTree>"
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tree))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskTree>) istream)
  "Deserializes a message object of type '<TaskTree>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tree) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tree)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'data_vis_msgs-msg:Task))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskTree>)))
  "Returns string type for a message object of type '<TaskTree>"
  "data_vis_msgs/TaskTree")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskTree)))
  "Returns string type for a message object of type 'TaskTree"
  "data_vis_msgs/TaskTree")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskTree>)))
  "Returns md5sum for a message object of type '<TaskTree>"
  "68804d281c645f8fa26a5b5cf3727638")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskTree)))
  "Returns md5sum for a message object of type 'TaskTree"
  "68804d281c645f8fa26a5b5cf3727638")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskTree>)))
  "Returns full string definition for message of type '<TaskTree>"
  (cl:format cl:nil "int32 height~%int32 width~%Task[] tree~%~%================================================================================~%MSG: data_vis_msgs/Task~%int32 id~%int32 parent~%string color~%string info~%string type~%string tip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskTree)))
  "Returns full string definition for message of type 'TaskTree"
  (cl:format cl:nil "int32 height~%int32 width~%Task[] tree~%~%================================================================================~%MSG: data_vis_msgs/Task~%int32 id~%int32 parent~%string color~%string info~%string type~%string tip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskTree>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tree) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskTree>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskTree
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':tree (tree msg))
))
