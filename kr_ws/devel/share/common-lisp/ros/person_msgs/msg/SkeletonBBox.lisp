; Auto-generated. Do not edit!


(cl:in-package person_msgs-msg)


;//! \htmlinclude SkeletonBBox.msg.html

(cl:defclass <SkeletonBBox> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dimension3D
    :reader dimension3D
    :initarg :dimension3D
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (centroid3D
    :reader centroid3D
    :initarg :centroid3D
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (dimension2D
    :reader dimension2D
    :initarg :dimension2D
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (centroid2D
    :reader centroid2D
    :initarg :centroid2D
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass SkeletonBBox (<SkeletonBBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SkeletonBBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SkeletonBBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name person_msgs-msg:<SkeletonBBox> is deprecated: use person_msgs-msg:SkeletonBBox instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SkeletonBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:header-val is deprecated.  Use person_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dimension3D-val :lambda-list '(m))
(cl:defmethod dimension3D-val ((m <SkeletonBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:dimension3D-val is deprecated.  Use person_msgs-msg:dimension3D instead.")
  (dimension3D m))

(cl:ensure-generic-function 'centroid3D-val :lambda-list '(m))
(cl:defmethod centroid3D-val ((m <SkeletonBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:centroid3D-val is deprecated.  Use person_msgs-msg:centroid3D instead.")
  (centroid3D m))

(cl:ensure-generic-function 'dimension2D-val :lambda-list '(m))
(cl:defmethod dimension2D-val ((m <SkeletonBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:dimension2D-val is deprecated.  Use person_msgs-msg:dimension2D instead.")
  (dimension2D m))

(cl:ensure-generic-function 'centroid2D-val :lambda-list '(m))
(cl:defmethod centroid2D-val ((m <SkeletonBBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader person_msgs-msg:centroid2D-val is deprecated.  Use person_msgs-msg:centroid2D instead.")
  (centroid2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SkeletonBBox>) ostream)
  "Serializes a message object of type '<SkeletonBBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension3D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid3D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension2D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid2D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SkeletonBBox>) istream)
  "Deserializes a message object of type '<SkeletonBBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension3D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid3D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension2D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid2D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SkeletonBBox>)))
  "Returns string type for a message object of type '<SkeletonBBox>"
  "person_msgs/SkeletonBBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SkeletonBBox)))
  "Returns string type for a message object of type 'SkeletonBBox"
  "person_msgs/SkeletonBBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SkeletonBBox>)))
  "Returns md5sum for a message object of type '<SkeletonBBox>"
  "7381be9dad84730eae9a875b5e16a8fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SkeletonBBox)))
  "Returns md5sum for a message object of type 'SkeletonBBox"
  "7381be9dad84730eae9a875b5e16a8fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SkeletonBBox>)))
  "Returns full string definition for message of type '<SkeletonBBox>"
  (cl:format cl:nil "std_msgs/Header header~%~%#Dimension 3D~%geometry_msgs/Point32 dimension3D~%~%#Center 3D~%geometry_msgs/Point32 centroid3D~%~%#Dimension 2D~%geometry_msgs/Point32 dimension2D~%~%#Center 2D~%geometry_msgs/Point32 centroid2D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SkeletonBBox)))
  "Returns full string definition for message of type 'SkeletonBBox"
  (cl:format cl:nil "std_msgs/Header header~%~%#Dimension 3D~%geometry_msgs/Point32 dimension3D~%~%#Center 3D~%geometry_msgs/Point32 centroid3D~%~%#Dimension 2D~%geometry_msgs/Point32 dimension2D~%~%#Center 2D~%geometry_msgs/Point32 centroid2D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SkeletonBBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension3D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid3D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension2D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid2D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SkeletonBBox>))
  "Converts a ROS message object to a list"
  (cl:list 'SkeletonBBox
    (cl:cons ':header (header msg))
    (cl:cons ':dimension3D (dimension3D msg))
    (cl:cons ':centroid3D (centroid3D msg))
    (cl:cons ':dimension2D (dimension2D msg))
    (cl:cons ':centroid2D (centroid2D msg))
))
