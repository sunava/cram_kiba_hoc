;; Auto-generated. Do not edit!


(when (boundp 'person_msgs::SkeletonBBox)
  (if (not (find-package "PERSON_MSGS"))
    (make-package "PERSON_MSGS"))
  (shadow 'SkeletonBBox (find-package "PERSON_MSGS")))
(unless (find-package "PERSON_MSGS::SKELETONBBOX")
  (make-package "PERSON_MSGS::SKELETONBBOX"))

(in-package "ROS")
;;//! \htmlinclude SkeletonBBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass person_msgs::SkeletonBBox
  :super ros::object
  :slots (_header _dimension3D _centroid3D _dimension2D _centroid2D ))

(defmethod person_msgs::SkeletonBBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dimension3D __dimension3D) (instance geometry_msgs::Point32 :init))
    ((:centroid3D __centroid3D) (instance geometry_msgs::Point32 :init))
    ((:dimension2D __dimension2D) (instance geometry_msgs::Point32 :init))
    ((:centroid2D __centroid2D) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _dimension3D __dimension3D)
   (setq _centroid3D __centroid3D)
   (setq _dimension2D __dimension2D)
   (setq _centroid2D __centroid2D)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dimension3D
   (&rest __dimension3D)
   (if (keywordp (car __dimension3D))
       (send* _dimension3D __dimension3D)
     (progn
       (if __dimension3D (setq _dimension3D (car __dimension3D)))
       _dimension3D)))
  (:centroid3D
   (&rest __centroid3D)
   (if (keywordp (car __centroid3D))
       (send* _centroid3D __centroid3D)
     (progn
       (if __centroid3D (setq _centroid3D (car __centroid3D)))
       _centroid3D)))
  (:dimension2D
   (&rest __dimension2D)
   (if (keywordp (car __dimension2D))
       (send* _dimension2D __dimension2D)
     (progn
       (if __dimension2D (setq _dimension2D (car __dimension2D)))
       _dimension2D)))
  (:centroid2D
   (&rest __centroid2D)
   (if (keywordp (car __centroid2D))
       (send* _centroid2D __centroid2D)
     (progn
       (if __centroid2D (setq _centroid2D (car __centroid2D)))
       _centroid2D)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point32 _dimension3D
    (send _dimension3D :serialization-length)
    ;; geometry_msgs/Point32 _centroid3D
    (send _centroid3D :serialization-length)
    ;; geometry_msgs/Point32 _dimension2D
    (send _dimension2D :serialization-length)
    ;; geometry_msgs/Point32 _centroid2D
    (send _centroid2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point32 _dimension3D
       (send _dimension3D :serialize s)
     ;; geometry_msgs/Point32 _centroid3D
       (send _centroid3D :serialize s)
     ;; geometry_msgs/Point32 _dimension2D
       (send _dimension2D :serialize s)
     ;; geometry_msgs/Point32 _centroid2D
       (send _centroid2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point32 _dimension3D
     (send _dimension3D :deserialize buf ptr-) (incf ptr- (send _dimension3D :serialization-length))
   ;; geometry_msgs/Point32 _centroid3D
     (send _centroid3D :deserialize buf ptr-) (incf ptr- (send _centroid3D :serialization-length))
   ;; geometry_msgs/Point32 _dimension2D
     (send _dimension2D :deserialize buf ptr-) (incf ptr- (send _dimension2D :serialization-length))
   ;; geometry_msgs/Point32 _centroid2D
     (send _centroid2D :deserialize buf ptr-) (incf ptr- (send _centroid2D :serialization-length))
   ;;
   self)
  )

(setf (get person_msgs::SkeletonBBox :md5sum-) "7381be9dad84730eae9a875b5e16a8fa")
(setf (get person_msgs::SkeletonBBox :datatype-) "person_msgs/SkeletonBBox")
(setf (get person_msgs::SkeletonBBox :definition-)
      "std_msgs/Header header

#Dimension 3D
geometry_msgs/Point32 dimension3D

#Center 3D
geometry_msgs/Point32 centroid3D

#Dimension 2D
geometry_msgs/Point32 dimension2D

#Center 2D
geometry_msgs/Point32 centroid2D


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

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :person_msgs/SkeletonBBox "7381be9dad84730eae9a875b5e16a8fa")


