;; Auto-generated. Do not edit!


(when (boundp 'person_msgs::Skeleton2D)
  (if (not (find-package "PERSON_MSGS"))
    (make-package "PERSON_MSGS"))
  (shadow 'Skeleton2D (find-package "PERSON_MSGS")))
(unless (find-package "PERSON_MSGS::SKELETON2D")
  (make-package "PERSON_MSGS::SKELETON2D"))

(in-package "ROS")
;;//! \htmlinclude Skeleton2D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass person_msgs::Skeleton2D
  :super ros::object
  :slots (_header _numberOfJoints _joints2D ))

(defmethod person_msgs::Skeleton2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:numberOfJoints __numberOfJoints) 0)
    ((:joints2D __joints2D) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _numberOfJoints (round __numberOfJoints))
   (setq _joints2D __joints2D)
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
  (:joints2D
   (&optional __joints2D)
   (if __joints2D (setq _joints2D __joints2D)) _joints2D)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _numberOfJoints
    4
    ;; float32[] _joints2D
    (* 4    (length _joints2D)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _numberOfJoints
       (write-long _numberOfJoints s)
     ;; float32[] _joints2D
     (write-long (length _joints2D) s)
     (dotimes (i (length _joints2D))
       (sys::poke (elt _joints2D i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _numberOfJoints
     (setq _numberOfJoints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _joints2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints2D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints2D i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get person_msgs::Skeleton2D :md5sum-) "29355678924726e97e4d383a555e84ec")
(setf (get person_msgs::Skeleton2D :datatype-) "person_msgs/Skeleton2D")
(setf (get person_msgs::Skeleton2D :definition-)
      "std_msgs/Header header

int32 numberOfJoints
float32[] joints2D



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



(provide :person_msgs/Skeleton2D "29355678924726e97e4d383a555e84ec")


