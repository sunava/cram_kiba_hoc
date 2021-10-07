; Auto-generated. Do not edit!


(cl:in-package person_msgs-msg)


;//! \htmlinclude Skeleton3D.msg.html

(cl:defclass <Skeleton3D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (numberOfJoints
    :reader numberOfJoints
    :initarg :numberOfJoints
    :type cl:integer
    :initform 0)
   (joints3D
    :reader joints3D
    :initarg :joints3D
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Skeleton3D (<Skeleton3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Skeleton3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Skeleton3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name person_msgs-msg:<Skeleton3D> is deprecated: use person_msgs-msg:Skeleton3D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Skeleton3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:header-val is deprecated.  Use person_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'numberOfJoints-val :lambda-list '(m))
(cl:defmethod numberOfJoints-val ((m <Skeleton3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:numberOfJoints-val is deprecated.  Use person_msgs-msg:numberOfJoints instead.")
  (numberOfJoints m))

(cl:ensure-generic-function 'joints3D-val :lambda-list '(m))
(cl:defmethod joints3D-val ((m <Skeleton3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:joints3D-val is deprecated.  Use person_msgs-msg:joints3D instead.")
  (joints3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Skeleton3D>) ostream)
  "Serializes a message object of type '<Skeleton3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'numberOfJoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints3D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints3D))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Skeleton3D>) istream)
  "Deserializes a message object of type '<Skeleton3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfJoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints3D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints3D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Skeleton3D>)))
  "Returns string type for a message object of type '<Skeleton3D>"
  "person_msgs/Skeleton3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Skeleton3D)))
  "Returns string type for a message object of type 'Skeleton3D"
  "person_msgs/Skeleton3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Skeleton3D>)))
  "Returns md5sum for a message object of type '<Skeleton3D>"
  "fde309dad1d25aa95db98383a3e75e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Skeleton3D)))
  "Returns md5sum for a message object of type 'Skeleton3D"
  "fde309dad1d25aa95db98383a3e75e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Skeleton3D>)))
  "Returns full string definition for message of type '<Skeleton3D>"
  (cl:format cl:nil "std_msgs/Header header~%~%int32 numberOfJoints~%float32[] joints3D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Skeleton3D)))
  "Returns full string definition for message of type 'Skeleton3D"
  (cl:format cl:nil "std_msgs/Header header~%~%int32 numberOfJoints~%float32[] joints3D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Skeleton3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints3D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Skeleton3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Skeleton3D
    (cl:cons ':header (header msg))
    (cl:cons ':numberOfJoints (numberOfJoints msg))
    (cl:cons ':joints3D (joints3D msg))
))
