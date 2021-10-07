; Auto-generated. Do not edit!


(cl:in-package iai_pepper_demo_msgs-srv)


;//! \htmlinclude PepperComm-request.msg.html

(cl:defclass <PepperComm-request> (roslisp-msg-protocol:ros-message)
  ((speak
    :reader speak
    :initarg :speak
    :type cl:string
    :initform "")
   (point_at
    :reader point_at
    :initarg :point_at
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (get_pose
    :reader get_pose
    :initarg :get_pose
    :type cl:boolean
    :initform cl:nil)
   (get_heard
    :reader get_heard
    :initarg :get_heard
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PepperComm-request (<PepperComm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PepperComm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PepperComm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_pepper_demo_msgs-srv:<PepperComm-request> is deprecated: use iai_pepper_demo_msgs-srv:PepperComm-request instead.")))

(cl:ensure-generic-function 'speak-val :lambda-list '(m))
(cl:defmethod speak-val ((m <PepperComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:speak-val is deprecated.  Use iai_pepper_demo_msgs-srv:speak instead.")
  (speak m))

(cl:ensure-generic-function 'point_at-val :lambda-list '(m))
(cl:defmethod point_at-val ((m <PepperComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:point_at-val is deprecated.  Use iai_pepper_demo_msgs-srv:point_at instead.")
  (point_at m))

(cl:ensure-generic-function 'get_pose-val :lambda-list '(m))
(cl:defmethod get_pose-val ((m <PepperComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:get_pose-val is deprecated.  Use iai_pepper_demo_msgs-srv:get_pose instead.")
  (get_pose m))

(cl:ensure-generic-function 'get_heard-val :lambda-list '(m))
(cl:defmethod get_heard-val ((m <PepperComm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:get_heard-val is deprecated.  Use iai_pepper_demo_msgs-srv:get_heard instead.")
  (get_heard m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PepperComm-request>) ostream)
  "Serializes a message object of type '<PepperComm-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speak))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speak))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_at) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_pose) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_heard) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PepperComm-request>) istream)
  "Deserializes a message object of type '<PepperComm-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speak) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speak) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_at) istream)
    (cl:setf (cl:slot-value msg 'get_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'get_heard) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PepperComm-request>)))
  "Returns string type for a service object of type '<PepperComm-request>"
  "iai_pepper_demo_msgs/PepperCommRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PepperComm-request)))
  "Returns string type for a service object of type 'PepperComm-request"
  "iai_pepper_demo_msgs/PepperCommRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PepperComm-request>)))
  "Returns md5sum for a message object of type '<PepperComm-request>"
  "62367ba17406150d44dbf73edf243c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PepperComm-request)))
  "Returns md5sum for a message object of type 'PepperComm-request"
  "62367ba17406150d44dbf73edf243c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PepperComm-request>)))
  "Returns full string definition for message of type '<PepperComm-request>"
  (cl:format cl:nil "string speak~%geometry_msgs/PointStamped point_at~%bool get_pose~%bool get_heard~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PepperComm-request)))
  "Returns full string definition for message of type 'PepperComm-request"
  (cl:format cl:nil "string speak~%geometry_msgs/PointStamped point_at~%bool get_pose~%bool get_heard~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PepperComm-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'speak))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_at))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PepperComm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PepperComm-request
    (cl:cons ':speak (speak msg))
    (cl:cons ':point_at (point_at msg))
    (cl:cons ':get_pose (get_pose msg))
    (cl:cons ':get_heard (get_heard msg))
))
;//! \htmlinclude PepperComm-response.msg.html

(cl:defclass <PepperComm-response> (roslisp-msg-protocol:ros-message)
  ((pepper_pose
    :reader pepper_pose
    :initarg :pepper_pose
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (heard
    :reader heard
    :initarg :heard
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass PepperComm-response (<PepperComm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PepperComm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PepperComm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_pepper_demo_msgs-srv:<PepperComm-response> is deprecated: use iai_pepper_demo_msgs-srv:PepperComm-response instead.")))

(cl:ensure-generic-function 'pepper_pose-val :lambda-list '(m))
(cl:defmethod pepper_pose-val ((m <PepperComm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:pepper_pose-val is deprecated.  Use iai_pepper_demo_msgs-srv:pepper_pose instead.")
  (pepper_pose m))

(cl:ensure-generic-function 'heard-val :lambda-list '(m))
(cl:defmethod heard-val ((m <PepperComm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_pepper_demo_msgs-srv:heard-val is deprecated.  Use iai_pepper_demo_msgs-srv:heard instead.")
  (heard m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PepperComm-response>) ostream)
  "Serializes a message object of type '<PepperComm-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pepper_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'heard))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'heard))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PepperComm-response>) istream)
  "Deserializes a message object of type '<PepperComm-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pepper_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'heard) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'heard)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PepperComm-response>)))
  "Returns string type for a service object of type '<PepperComm-response>"
  "iai_pepper_demo_msgs/PepperCommResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PepperComm-response)))
  "Returns string type for a service object of type 'PepperComm-response"
  "iai_pepper_demo_msgs/PepperCommResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PepperComm-response>)))
  "Returns md5sum for a message object of type '<PepperComm-response>"
  "62367ba17406150d44dbf73edf243c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PepperComm-response)))
  "Returns md5sum for a message object of type 'PepperComm-response"
  "62367ba17406150d44dbf73edf243c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PepperComm-response>)))
  "Returns full string definition for message of type '<PepperComm-response>"
  (cl:format cl:nil "geometry_msgs/TransformStamped pepper_pose~%string[] heard~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PepperComm-response)))
  "Returns full string definition for message of type 'PepperComm-response"
  (cl:format cl:nil "geometry_msgs/TransformStamped pepper_pose~%string[] heard~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PepperComm-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pepper_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'heard) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PepperComm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PepperComm-response
    (cl:cons ':pepper_pose (pepper_pose msg))
    (cl:cons ':heard (heard msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PepperComm)))
  'PepperComm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PepperComm)))
  'PepperComm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PepperComm)))
  "Returns string type for a service object of type '<PepperComm>"
  "iai_pepper_demo_msgs/PepperComm")