; Auto-generated. Do not edit!


(cl:in-package designator_integration_msgs-msg)


;//! \htmlinclude DesignatorResponse.msg.html

(cl:defclass <DesignatorResponse> (roslisp-msg-protocol:ros-message)
  ((designators
    :reader designators
    :initarg :designators
    :type (cl:vector designator_integration_msgs-msg:Designator)
   :initform (cl:make-array 0 :element-type 'designator_integration_msgs-msg:Designator :initial-element (cl:make-instance 'designator_integration_msgs-msg:Designator))))
)

(cl:defclass DesignatorResponse (<DesignatorResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesignatorResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesignatorResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name designator_integration_msgs-msg:<DesignatorResponse> is deprecated: use designator_integration_msgs-msg:DesignatorResponse instead.")))

(cl:ensure-generic-function 'designators-val :lambda-list '(m))
(cl:defmethod designators-val ((m <DesignatorResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:designators-val is deprecated.  Use designator_integration_msgs-msg:designators instead.")
  (designators m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesignatorResponse>) ostream)
  "Serializes a message object of type '<DesignatorResponse>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'designators))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'designators))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesignatorResponse>) istream)
  "Deserializes a message object of type '<DesignatorResponse>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'designators) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'designators)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'designator_integration_msgs-msg:Designator))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesignatorResponse>)))
  "Returns string type for a message object of type '<DesignatorResponse>"
  "designator_integration_msgs/DesignatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesignatorResponse)))
  "Returns string type for a message object of type 'DesignatorResponse"
  "designator_integration_msgs/DesignatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesignatorResponse>)))
  "Returns md5sum for a message object of type '<DesignatorResponse>"
  "5e1c47281b8926f8c6a258f1189eb923")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesignatorResponse)))
  "Returns md5sum for a message object of type 'DesignatorResponse"
  "5e1c47281b8926f8c6a258f1189eb923")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesignatorResponse>)))
  "Returns full string definition for message of type '<DesignatorResponse>"
  (cl:format cl:nil "Designator[] designators~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesignatorResponse)))
  "Returns full string definition for message of type 'DesignatorResponse"
  (cl:format cl:nil "Designator[] designators~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesignatorResponse>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'designators) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesignatorResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'DesignatorResponse
    (cl:cons ':designators (designators msg))
))
