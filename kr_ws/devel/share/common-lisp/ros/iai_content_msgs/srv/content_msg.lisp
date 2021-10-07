; Auto-generated. Do not edit!


(cl:in-package iai_content_msgs-srv)


;//! \htmlinclude content_msg-request.msg.html

(cl:defclass <content_msg-request> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_grasped
    :reader depth_grasped
    :initarg :depth_grasped
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass content_msg-request (<content_msg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <content_msg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'content_msg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_content_msgs-srv:<content_msg-request> is deprecated: use iai_content_msgs-srv:content_msg-request instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <content_msg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_content_msgs-srv:depth-val is deprecated.  Use iai_content_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'depth_grasped-val :lambda-list '(m))
(cl:defmethod depth_grasped-val ((m <content_msg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_content_msgs-srv:depth_grasped-val is deprecated.  Use iai_content_msgs-srv:depth_grasped instead.")
  (depth_grasped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <content_msg-request>) ostream)
  "Serializes a message object of type '<content_msg-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_grasped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <content_msg-request>) istream)
  "Deserializes a message object of type '<content_msg-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_grasped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<content_msg-request>)))
  "Returns string type for a service object of type '<content_msg-request>"
  "iai_content_msgs/content_msgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'content_msg-request)))
  "Returns string type for a service object of type 'content_msg-request"
  "iai_content_msgs/content_msgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<content_msg-request>)))
  "Returns md5sum for a message object of type '<content_msg-request>"
  "cd8f4c57d396801edf6a2140ccb6506e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'content_msg-request)))
  "Returns md5sum for a message object of type 'content_msg-request"
  "cd8f4c57d396801edf6a2140ccb6506e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<content_msg-request>)))
  "Returns full string definition for message of type '<content_msg-request>"
  (cl:format cl:nil "sensor_msgs/Image depth ~%sensor_msgs/Image depth_grasped~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'content_msg-request)))
  "Returns full string definition for message of type 'content_msg-request"
  (cl:format cl:nil "sensor_msgs/Image depth ~%sensor_msgs/Image depth_grasped~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <content_msg-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_grasped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <content_msg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'content_msg-request
    (cl:cons ':depth (depth msg))
    (cl:cons ':depth_grasped (depth_grasped msg))
))
;//! \htmlinclude content_msg-response.msg.html

(cl:defclass <content_msg-response> (roslisp-msg-protocol:ros-message)
  ((content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass content_msg-response (<content_msg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <content_msg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'content_msg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_content_msgs-srv:<content_msg-response> is deprecated: use iai_content_msgs-srv:content_msg-response instead.")))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <content_msg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_content_msgs-srv:content-val is deprecated.  Use iai_content_msgs-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <content_msg-response>) ostream)
  "Serializes a message object of type '<content_msg-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <content_msg-response>) istream)
  "Deserializes a message object of type '<content_msg-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<content_msg-response>)))
  "Returns string type for a service object of type '<content_msg-response>"
  "iai_content_msgs/content_msgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'content_msg-response)))
  "Returns string type for a service object of type 'content_msg-response"
  "iai_content_msgs/content_msgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<content_msg-response>)))
  "Returns md5sum for a message object of type '<content_msg-response>"
  "cd8f4c57d396801edf6a2140ccb6506e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'content_msg-response)))
  "Returns md5sum for a message object of type 'content_msg-response"
  "cd8f4c57d396801edf6a2140ccb6506e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<content_msg-response>)))
  "Returns full string definition for message of type '<content_msg-response>"
  (cl:format cl:nil "string content~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'content_msg-response)))
  "Returns full string definition for message of type 'content_msg-response"
  (cl:format cl:nil "string content~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <content_msg-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <content_msg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'content_msg-response
    (cl:cons ':content (content msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'content_msg)))
  'content_msg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'content_msg)))
  'content_msg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'content_msg)))
  "Returns string type for a service object of type '<content_msg>"
  "iai_content_msgs/content_msg")