; Auto-generated. Do not edit!


(cl:in-package iai_control_msgs-msg)


;//! \htmlinclude pose_w_joints.msg.html

(cl:defclass <pose_w_joints> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass pose_w_joints (<pose_w_joints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_w_joints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_w_joints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_control_msgs-msg:<pose_w_joints> is deprecated: use iai_control_msgs-msg:pose_w_joints instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <pose_w_joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_control_msgs-msg:joint_values-val is deprecated.  Use iai_control_msgs-msg:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_w_joints>) ostream)
  "Serializes a message object of type '<pose_w_joints>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_w_joints>) istream)
  "Deserializes a message object of type '<pose_w_joints>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_w_joints>)))
  "Returns string type for a message object of type '<pose_w_joints>"
  "iai_control_msgs/pose_w_joints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_w_joints)))
  "Returns string type for a message object of type 'pose_w_joints"
  "iai_control_msgs/pose_w_joints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_w_joints>)))
  "Returns md5sum for a message object of type '<pose_w_joints>"
  "50b3293f6e585f2a02888f333d3c3e8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_w_joints)))
  "Returns md5sum for a message object of type 'pose_w_joints"
  "50b3293f6e585f2a02888f333d3c3e8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_w_joints>)))
  "Returns full string definition for message of type '<pose_w_joints>"
  (cl:format cl:nil "float32[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_w_joints)))
  "Returns full string definition for message of type 'pose_w_joints"
  (cl:format cl:nil "float32[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_w_joints>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_w_joints>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_w_joints
    (cl:cons ':joint_values (joint_values msg))
))
