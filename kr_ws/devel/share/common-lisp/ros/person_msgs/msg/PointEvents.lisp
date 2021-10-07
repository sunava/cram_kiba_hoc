; Auto-generated. Do not edit!


(cl:in-package person_msgs-msg)


;//! \htmlinclude PointEvents.msg.html

(cl:defclass <PointEvents> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pointTo
    :reader pointTo
    :initarg :pointTo
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (leftHand
    :reader leftHand
    :initarg :leftHand
    :type cl:fixnum
    :initform 0)
   (rightHand
    :reader rightHand
    :initarg :rightHand
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PointEvents (<PointEvents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointEvents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointEvents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name person_msgs-msg:<PointEvents> is deprecated: use person_msgs-msg:PointEvents instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:header-val is deprecated.  Use person_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PointEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:start-val is deprecated.  Use person_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'pointTo-val :lambda-list '(m))
(cl:defmethod pointTo-val ((m <PointEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:pointTo-val is deprecated.  Use person_msgs-msg:pointTo instead.")
  (pointTo m))

(cl:ensure-generic-function 'leftHand-val :lambda-list '(m))
(cl:defmethod leftHand-val ((m <PointEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:leftHand-val is deprecated.  Use person_msgs-msg:leftHand instead.")
  (leftHand m))

(cl:ensure-generic-function 'rightHand-val :lambda-list '(m))
(cl:defmethod rightHand-val ((m <PointEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:rightHand-val is deprecated.  Use person_msgs-msg:rightHand instead.")
  (rightHand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointEvents>) ostream)
  "Serializes a message object of type '<PointEvents>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointTo) ostream)
  (cl:let* ((signed (cl:slot-value msg 'leftHand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightHand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointEvents>) istream)
  "Deserializes a message object of type '<PointEvents>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointTo) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftHand) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightHand) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointEvents>)))
  "Returns string type for a message object of type '<PointEvents>"
  "person_msgs/PointEvents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointEvents)))
  "Returns string type for a message object of type 'PointEvents"
  "person_msgs/PointEvents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointEvents>)))
  "Returns md5sum for a message object of type '<PointEvents>"
  "7cee902a1c7ee58854a293430e44aa05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointEvents)))
  "Returns md5sum for a message object of type 'PointEvents"
  "7cee902a1c7ee58854a293430e44aa05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointEvents>)))
  "Returns full string definition for message of type '<PointEvents>"
  (cl:format cl:nil "std_msgs/Header header~%~%#Start of the joint~%geometry_msgs/Vector3 start~%~%#Vector direction~%geometry_msgs/Vector3 pointTo~%~%int8 leftHand~%int8 rightHand~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointEvents)))
  "Returns full string definition for message of type 'PointEvents"
  (cl:format cl:nil "std_msgs/Header header~%~%#Start of the joint~%geometry_msgs/Vector3 start~%~%#Vector direction~%geometry_msgs/Vector3 pointTo~%~%int8 leftHand~%int8 rightHand~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointEvents>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointTo))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointEvents>))
  "Converts a ROS message object to a list"
  (cl:list 'PointEvents
    (cl:cons ':header (header msg))
    (cl:cons ':start (start msg))
    (cl:cons ':pointTo (pointTo msg))
    (cl:cons ':leftHand (leftHand msg))
    (cl:cons ':rightHand (rightHand msg))
))
