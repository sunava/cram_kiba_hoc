;; Auto-generated. Do not edit!


(when (boundp 'person_msgs::Skeleton3D)
  (if (not (find-package "PERSON_MSGS"))
    (make-package "PERSON_MSGS"))
  (shadow 'Skeleton3D (find-package "PERSON_MSGS")))
(unless (find-package "PERSON_MSGS::SKELETON3D")
  (make-package "PERSON_MSGS::SKELETON3D"))

(in-package "ROS")
;;//! \htmlinclude Skeleton3D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass person_msgs::Skeleton3D
  :super ros::object
  :slots (_header _numberOfJoints _joints3D ))

(defmethod person_msgs::Skeleton3D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:numberOfJoints __numberOfJoints) 0)
    ((:joints3D __joints3D) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _numberOfJoints (round __numberOfJoints))
   (setq _joints3D __joints3D)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:numberOfJoints
   (&optional __numberOfJoints)
   (if __numberOfJoints (setq _numberOfJoints __numberOfJoints)) _numberOfJoints)
  (:joints3D
   (&optional __joints3D)
   (if __joints3D (setq _joints3D __joints3D)) _joints3D)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _numberOfJoints
    4
    ;; float32[] _joints3D
    (* 4    (length _joints3D)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _numberOfJoints
       (write-long _numberOfJoints s)
     ;; float32[] _joints3D
     (write-long (length _joints3D) s)
     (dotimes (i (length _joints3D))
       (sys::poke (elt _joints3D i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _numberOfJoints
     (setq _numberOfJoints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _joints3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints3D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints3D i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get person_msgs::Skeleton3D :md5sum-) "fde309dad1d25aa95db98383a3e75e70")
(setf (get person_msgs::Skeleton3D :datatype-) "person_msgs/Skeleton3D")
(setf (get person_msgs::Skeleton3D :definition-)
      "std_msgs/Header header

int32 numberOfJoints
float32[] joints3D


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

")



(provide :person_msgs/Skeleton3D "fde309dad1d25aa95db98383a3e75e70")


