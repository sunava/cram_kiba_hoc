;; Auto-generated. Do not edit!


(when (boundp 'iai_content_msgs::content_msg)
  (if (not (find-package "IAI_CONTENT_MSGS"))
    (make-package "IAI_CONTENT_MSGS"))
  (shadow 'content_msg (find-package "IAI_CONTENT_MSGS")))
(unless (find-package "IAI_CONTENT_MSGS::CONTENT_MSG")
  (make-package "IAI_CONTENT_MSGS::CONTENT_MSG"))
(unless (find-package "IAI_CONTENT_MSGS::CONTENT_MSGREQUEST")
  (make-package "IAI_CONTENT_MSGS::CONTENT_MSGREQUEST"))
(unless (find-package "IAI_CONTENT_MSGS::CONTENT_MSGRESPONSE")
  (make-package "IAI_CONTENT_MSGS::CONTENT_MSGRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass iai_content_msgs::content_msgRequest
  :super ros::object
  :slots (_depth _depth_grasped ))

(defmethod iai_content_msgs::content_msgRequest
  (:init
   (&key
    ((:depth __depth) (instance sensor_msgs::Image :init))
    ((:depth_grasped __depth_grasped) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _depth __depth)
   (setq _depth_grasped __depth_grasped)
   self)
  (:depth
   (&rest __depth)
   (if (keywordp (car __depth))
       (send* _depth __depth)
     (progn
       (if __depth (setq _depth (car __depth)))
       _depth)))
  (:depth_grasped
   (&rest __depth_grasped)
   (if (keywordp (car __depth_grasped))
       (send* _depth_grasped __depth_grasped)
     (progn
       (if __depth_grasped (setq _depth_grasped (car __depth_grasped)))
       _depth_grasped)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _depth
    (send _depth :serialization-length)
    ;; sensor_msgs/Image _depth_grasped
    (send _depth_grasped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _depth
       (send _depth :serialize s)
     ;; sensor_msgs/Image _depth_grasped
       (send _depth_grasped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;; sensor_msgs/Image _depth_grasped
     (send _depth_grasped :deserialize buf ptr-) (incf ptr- (send _depth_grasped :serialization-length))
   ;;
   self)
  )

(defclass iai_content_msgs::content_msgResponse
  :super ros::object
  :slots (_content ))

(defmethod iai_content_msgs::content_msgResponse
  (:init
   (&key
    ((:content __content) "")
    )
   (send-super :init)
   (setq _content (string __content))
   self)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iai_content_msgs::content_msg
  :super ros::object
  :slots ())

(setf (get iai_content_msgs::content_msg :md5sum-) "cd8f4c57d396801edf6a2140ccb6506e")
(setf (get iai_content_msgs::content_msg :datatype-) "iai_content_msgs/content_msg")
(setf (get iai_content_msgs::content_msg :request) iai_content_msgs::content_msgRequest)
(setf (get iai_content_msgs::content_msg :response) iai_content_msgs::content_msgResponse)

(defmethod iai_content_msgs::content_msgRequest
  (:response () (instance iai_content_msgs::content_msgResponse :init)))

(setf (get iai_content_msgs::content_msgRequest :md5sum-) "cd8f4c57d396801edf6a2140ccb6506e")
(setf (get iai_content_msgs::content_msgRequest :datatype-) "iai_content_msgs/content_msgRequest")
(setf (get iai_content_msgs::content_msgRequest :definition-)
      "sensor_msgs/Image depth 
sensor_msgs/Image depth_grasped

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string content

")

(setf (get iai_content_msgs::content_msgResponse :md5sum-) "cd8f4c57d396801edf6a2140ccb6506e")
(setf (get iai_content_msgs::content_msgResponse :datatype-) "iai_content_msgs/content_msgResponse")
(setf (get iai_content_msgs::content_msgResponse :definition-)
      "sensor_msgs/Image depth 
sensor_msgs/Image depth_grasped

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
string content

")



(provide :iai_content_msgs/content_msg "cd8f4c57d396801edf6a2140ccb6506e")


