;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::Status)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'Status (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::STATUS")
  (make-package "IAI_WSG_50_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iai_wsg_50_msgs::Status
  :super ros::object
  :slots (_header _status _width _speed _acc _force _force_finger0 _force_finger1 ))

(defmethod iai_wsg_50_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) "")
    ((:width __width) 0.0)
    ((:speed __speed) 0.0)
    ((:acc __acc) 0.0)
    ((:force __force) 0.0)
    ((:force_finger0 __force_finger0) 0.0)
    ((:force_finger1 __force_finger1) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (string __status))
   (setq _width (float __width))
   (setq _speed (float __speed))
   (setq _acc (float __acc))
   (setq _force (float __force))
   (setq _force_finger0 (float __force_finger0))
   (setq _force_finger1 (float __force_finger1))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:force_finger0
   (&optional __force_finger0)
   (if __force_finger0 (setq _force_finger0 __force_finger0)) _force_finger0)
  (:force_finger1
   (&optional __force_finger1)
   (if __force_finger1 (setq _force_finger1 __force_finger1)) _force_finger1)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _status
    4 (length _status)
    ;; float32 _width
    4
    ;; float32 _speed
    4
    ;; float32 _acc
    4
    ;; float32 _force
    4
    ;; float32 _force_finger0
    4
    ;; float32 _force_finger1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force_finger0
       (sys::poke _force_finger0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force_finger1
       (sys::poke _force_finger1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force_finger0
     (setq _force_finger0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force_finger1
     (setq _force_finger1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iai_wsg_50_msgs::Status :md5sum-) "2f81f277f0ca50173382b0ca1424694b")
(setf (get iai_wsg_50_msgs::Status :datatype-) "iai_wsg_50_msgs/Status")
(setf (get iai_wsg_50_msgs::Status :definition-)
      "std_msgs/Header header
string status
float32 width
float32 speed
float32 acc
float32 force
float32 force_finger0
float32 force_finger1
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



(provide :iai_wsg_50_msgs/Status "2f81f277f0ca50173382b0ca1424694b")


