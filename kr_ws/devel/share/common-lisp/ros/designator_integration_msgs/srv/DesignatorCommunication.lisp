; Auto-generated. Do not edit!


(cl:in-package designator_integration_msgs-srv)


;//! \htmlinclude DesignatorCommunication-request.msg.html

(cl:defclass <DesignatorCommunication-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type designator_integration_msgs-msg:DesignatorRequest
    :initform (cl:make-instance 'designator_integration_msgs-msg:DesignatorRequest)))
)

(cl:defclass DesignatorCommunication-request (<DesignatorCommunication-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesignatorCommunication-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesignatorCommunication-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name designator_integration_msgs-srv:<DesignatorCommunication-request> is deprecated: use designator_integration_msgs-srv:DesignatorCommunication-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <DesignatorCommunication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-srv:request-val is deprecated.  Use designator_integration_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesignatorCommunication-request>) ostream)
  "Serializes a message object of type '<DesignatorCommunication-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesignatorCommunication-request>) istream)
  "Deserializes a message object of type '<DesignatorCommunication-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesignatorCommunication-request>)))
  "Returns string type for a service object of type '<DesignatorCommunication-request>"
  "designator_integration_msgs/DesignatorCommunicationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesignatorCommunication-request)))
  "Returns string type for a service object of type 'DesignatorCommunication-request"
  "designator_integration_msgs/DesignatorCommunicationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesignatorCommunication-request>)))
  "Returns md5sum for a message object of type '<DesignatorCommunication-request>"
  "8f8b294dbadbca716e0316b887c4f788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesignatorCommunication-request)))
  "Returns md5sum for a message object of type 'DesignatorCommunication-request"
  "8f8b294dbadbca716e0316b887c4f788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesignatorCommunication-request>)))
  "Returns full string definition for message of type '<DesignatorCommunication-request>"
  (cl:format cl:nil "DesignatorRequest request~%~%================================================================================~%MSG: designator_integration_msgs/DesignatorRequest~%Designator designator~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesignatorCommunication-request)))
  "Returns full string definition for message of type 'DesignatorCommunication-request"
  (cl:format cl:nil "DesignatorRequest request~%~%================================================================================~%MSG: designator_integration_msgs/DesignatorRequest~%Designator designator~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesignatorCommunication-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesignatorCommunication-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DesignatorCommunication-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude DesignatorCommunication-response.msg.html

(cl:defclass <DesignatorCommunication-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type designator_integration_msgs-msg:DesignatorResponse
    :initform (cl:make-instance 'designator_integration_msgs-msg:DesignatorResponse)))
)

(cl:defclass DesignatorCommunication-response (<DesignatorCommunication-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesignatorCommunication-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesignatorCommunication-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name designator_integration_msgs-srv:<DesignatorCommunication-response> is deprecated: use designator_integration_msgs-srv:DesignatorCommunication-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <DesignatorCommunication-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-srv:response-val is deprecated.  Use designator_integration_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesignatorCommunication-response>) ostream)
  "Serializes a message object of type '<DesignatorCommunication-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesignatorCommunication-response>) istream)
  "Deserializes a message object of type '<DesignatorCommunication-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesignatorCommunication-response>)))
  "Returns string type for a service object of type '<DesignatorCommunication-response>"
  "designator_integration_msgs/DesignatorCommunicationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesignatorCommunication-response)))
  "Returns string type for a service object of type 'DesignatorCommunication-response"
  "designator_integration_msgs/DesignatorCommunicationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesignatorCommunication-response>)))
  "Returns md5sum for a message object of type '<DesignatorCommunication-response>"
  "8f8b294dbadbca716e0316b887c4f788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesignatorCommunication-response)))
  "Returns md5sum for a message object of type 'DesignatorCommunication-response"
  "8f8b294dbadbca716e0316b887c4f788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesignatorCommunication-response>)))
  "Returns full string definition for message of type '<DesignatorCommunication-response>"
  (cl:format cl:nil "DesignatorResponse response~%~%================================================================================~%MSG: designator_integration_msgs/DesignatorResponse~%Designator[] designators~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesignatorCommunication-response)))
  "Returns full string definition for message of type 'DesignatorCommunication-response"
  (cl:format cl:nil "DesignatorResponse response~%~%================================================================================~%MSG: designator_integration_msgs/DesignatorResponse~%Designator[] designators~%~%================================================================================~%MSG: designator_integration_msgs/Designator~%int32 TYPE_OBJECT=0~%int32 TYPE_ACTION=1~%int32 TYPE_LOCATION=2~%int32 TYPE_HUMAN=3~%~%int32 type~%~%KeyValuePair[] description~%~%================================================================================~%MSG: designator_integration_msgs/KeyValuePair~%# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesignatorCommunication-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesignatorCommunication-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DesignatorCommunication-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DesignatorCommunication)))
  'DesignatorCommunication-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DesignatorCommunication)))
  'DesignatorCommunication-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesignatorCommunication)))
  "Returns string type for a service object of type '<DesignatorCommunication>"
  "designator_integration_msgs/DesignatorCommunication")