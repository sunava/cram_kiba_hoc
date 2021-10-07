; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Plan.msg.html

(cl:defclass <Plan> (roslisp-msg-protocol:ros-message)
  ((steps
    :reader steps
    :initarg :steps
    :type (cl:vector planning_msgs-msg:Step)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Step :initial-element (cl:make-instance 'planning_msgs-msg:Step)))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Plan (<Plan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Plan> is deprecated: use planning_msgs-msg:Plan instead.")))

(cl:ensure-generic-function 'steps-val :lambda-list '(m))
(cl:defmethod steps-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steps-val is deprecated.  Use planning_msgs-msg:steps instead.")
  (steps m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:score-val is deprecated.  Use planning_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:duration-val is deprecated.  Use planning_msgs-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plan>) ostream)
  "Serializes a message object of type '<Plan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'steps))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'duration))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plan>) istream)
  "Deserializes a message object of type '<Plan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Step))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'duration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'duration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plan>)))
  "Returns string type for a message object of type '<Plan>"
  "planning_msgs/Plan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plan)))
  "Returns string type for a message object of type 'Plan"
  "planning_msgs/Plan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plan>)))
  "Returns md5sum for a message object of type '<Plan>"
  "4b01f5f5f81e029aa892db42087b5828")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plan)))
  "Returns md5sum for a message object of type 'Plan"
  "4b01f5f5f81e029aa892db42087b5828")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plan>)))
  "Returns full string definition for message of type '<Plan>"
  (cl:format cl:nil "Step[] steps~%~%# This score is the same as the root step's score; placing it here as~%# well out of convience reasons for the receiving node.~%float32 score~%float32[] duration~%~%================================================================================~%MSG: planning_msgs/Step~%int32 id~%int32 parent~%string type~%string pattern~%string[] call_pattern~%Binding[] bindings~%float32 score~%float32[] duration~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plan)))
  "Returns full string definition for message of type 'Plan"
  (cl:format cl:nil "Step[] steps~%~%# This score is the same as the root step's score; placing it here as~%# well out of convience reasons for the receiving node.~%float32 score~%float32[] duration~%~%================================================================================~%MSG: planning_msgs/Step~%int32 id~%int32 parent~%string type~%string pattern~%string[] call_pattern~%Binding[] bindings~%float32 score~%float32[] duration~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'duration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plan>))
  "Converts a ROS message object to a list"
  (cl:list 'Plan
    (cl:cons ':steps (steps msg))
    (cl:cons ':score (score msg))
    (cl:cons ':duration (duration msg))
))
