;; Auto-generated. Do not edit!


(when (boundp 'person_msgs::PointEvents)
  (if (not (find-package "PERSON_MSGS"))
    (make-package "PERSON_MSGS"))
  (shadow 'PointEvents (find-package "PERSON_MSGS")))
(unless (find-package "PERSON_MSGS::POINTEVENTS")
  (make-package "PERSON_MSGS::POINTEVENTS"))

(in-package "ROS")
;;//! \htmlinclude PointEvents.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass person_msgs::PointEvents
  :super ros::object
  :slots (_header _start _pointTo _leftHand _rightHand ))

(defmethod person_msgs::PointEvents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:start __start) (instance geometry_msgs::Vector3 :init))
    ((:pointTo __pointTo) (instance geometry_msgs::Vector3 :init))
    ((:leftHand __leftHand) 0)
    ((:rightHand __rightHand) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _start __start)
   (setq _pointTo __pointTo)
   (setq _leftHand (round __leftHand))
   (setq _rightHand (round __rightHand))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:pointTo
   (&rest __pointTo)
   (if (keywordp (car __pointTo))
       (send* _pointTo __pointTo)
     (progn
       (if __pointTo (setq _pointTo (car __pointTo)))
       _pointTo)))
  (:leftHand
   (&optional __leftHand)
   (if __leftHand (setq _leftHand __leftHand)) _leftHand)
  (:rightHand
   (&optional __rightHand)
   (if __rightHand (setq _rightHand __rightHand)) _rightHand)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _start
    (send _start :serialization-length)
    ;; geometry_msgs/Vector3 _pointTo
    (send _pointTo :serialization-length)
    ;; int8 _leftHand
    1
    ;; int8 _rightHand
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _start
       (send _start :serialize s)
     ;; geometry_msgs/Vector3 _pointTo
       (send _pointTo :serialize s)
     ;; int8 _leftHand
       (write-byte _leftHand s)
     ;; int8 _rightHand
       (write-byte _rightHand s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Vector3 _pointTo
     (send _pointTo :deserialize buf ptr-) (incf ptr- (send _pointTo :serialization-length))
   ;; int8 _leftHand
     (setq _leftHand (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _leftHand 127) (setq _leftHand (- _leftHand 256)))
   ;; int8 _rightHand
     (setq _rightHand (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rightHand 127) (setq _rightHand (- _rightHand 256)))
   ;;
   self)
  )

(setf (get person_msgs::PointEvents :md5sum-) "7cee902a1c7ee58854a293430e44aa05")
(setf (get person_msgs::PointEvents :datatype-) "person_msgs/PointEvents")
(setf (get person_msgs::PointEvents :definition-)
      "std_msgs/Header header

#Start of the joint
geometry_msgs/Vector3 start

#Vector direction
geometry_msgs/Vector3 pointTo

int8 leftHand
int8 rightHand


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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :person_msgs/PointEvents "7cee902a1c7ee58854a293430e44aa05")


