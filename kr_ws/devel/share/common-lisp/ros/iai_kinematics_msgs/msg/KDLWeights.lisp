; Auto-generated. Do not edit!


(cl:in-package iai_kinematics_msgs-msg)


;//! \htmlinclude KDLWeights.msg.html

(cl:defclass <KDLWeights> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (weight_ts
    :reader weight_ts
    :initarg :weight_ts
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0))
   (weight_js
    :reader weight_js
    :initarg :weight_js
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lambda
    :reader lambda
    :initarg :lambda
    :type cl:float
    :initform 0.0))
)

(cl:defclass KDLWeights (<KDLWeights>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KDLWeights>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KDLWeights)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_kinematics_msgs-msg:<KDLWeights> is deprecated: use iai_kinematics_msgs-msg:KDLWeights instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <KDLWeights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-msg:mode-val is deprecated.  Use iai_kinematics_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'weight_ts-val :lambda-list '(m))
(cl:defmethod weight_ts-val ((m <KDLWeights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-msg:weight_ts-val is deprecated.  Use iai_kinematics_msgs-msg:weight_ts instead.")
  (weight_ts m))

(cl:ensure-generic-function 'weight_js-val :lambda-list '(m))
(cl:defmethod weight_js-val ((m <KDLWeights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-msg:weight_js-val is deprecated.  Use iai_kinematics_msgs-msg:weight_js instead.")
  (weight_js m))

(cl:ensure-generic-function 'lambda-val :lambda-list '(m))
(cl:defmethod lambda-val ((m <KDLWeights>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_kinematics_msgs-msg:lambda-val is deprecated.  Use iai_kinematics_msgs-msg:lambda instead.")
  (lambda m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KDLWeights>)))
    "Constants for message type '<KDLWeights>"
  '((:INVALID_MODE . 0)
    (:SET_TS . 1)
    (:SET_JS . 2)
    (:SET_LAMBDA . 4)
    (:SET_TS_JS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KDLWeights)))
    "Constants for message type 'KDLWeights"
  '((:INVALID_MODE . 0)
    (:SET_TS . 1)
    (:SET_JS . 2)
    (:SET_LAMBDA . 4)
    (:SET_TS_JS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KDLWeights>) ostream)
  "Serializes a message object of type '<KDLWeights>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'weight_ts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weight_js))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'weight_js))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lambda))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KDLWeights>) istream)
  "Deserializes a message object of type '<KDLWeights>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weight_ts) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'weight_ts)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weight_js) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weight_js)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lambda) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KDLWeights>)))
  "Returns string type for a message object of type '<KDLWeights>"
  "iai_kinematics_msgs/KDLWeights")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KDLWeights)))
  "Returns string type for a message object of type 'KDLWeights"
  "iai_kinematics_msgs/KDLWeights")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KDLWeights>)))
  "Returns md5sum for a message object of type '<KDLWeights>"
  "986315cd29a99987092b708377dfd2ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KDLWeights)))
  "Returns md5sum for a message object of type 'KDLWeights"
  "986315cd29a99987092b708377dfd2ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KDLWeights>)))
  "Returns full string definition for message of type '<KDLWeights>"
  (cl:format cl:nil "byte INVALID_MODE = 0~%byte SET_TS = 1~%byte SET_JS = 2~%byte SET_LAMBDA = 4~%byte SET_TS_JS = 3~%~%byte mode                  # or-combination of values to set~%float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order~%float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order~%float64 lambda             # Lambda value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KDLWeights)))
  "Returns full string definition for message of type 'KDLWeights"
  (cl:format cl:nil "byte INVALID_MODE = 0~%byte SET_TS = 1~%byte SET_JS = 2~%byte SET_LAMBDA = 4~%byte SET_TS_JS = 3~%~%byte mode                  # or-combination of values to set~%float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order~%float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order~%float64 lambda             # Lambda value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KDLWeights>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'weight_ts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weight_js) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KDLWeights>))
  "Converts a ROS message object to a list"
  (cl:list 'KDLWeights
    (cl:cons ':mode (mode msg))
    (cl:cons ':weight_ts (weight_ts msg))
    (cl:cons ':weight_js (weight_js msg))
    (cl:cons ':lambda (lambda msg))
))
