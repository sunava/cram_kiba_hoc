;; Auto-generated. Do not edit!


(when (boundp 'person_msgs::Person)
  (if (not (find-package "PERSON_MSGS"))
    (make-package "PERSON_MSGS"))
  (shadow 'Person (find-package "PERSON_MSGS")))
(unless (find-package "PERSON_MSGS::PERSON")
  (make-package "PERSON_MSGS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass person_msgs::Person
  :super ros::object
  :slots (_header _confidence _source _inFieldOfView _x _y _z _theta ))

(defmethod person_msgs::Person
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:confidence __confidence) 0.0)
    ((:source __source) 0)
    ((:inFieldOfView __inFieldOfView) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _confidence (float __confidence))
   (setq _source (round __source))
   (setq _inFieldOfView (round __inFieldOfView))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:inFieldOfView
   (&optional __inFieldOfView)
   (if __inFieldOfView (setq _inFieldOfView __inFieldOfView)) _inFieldOfView)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _confidence
    4
    ;; int32 _source
    4
    ;; int32 _inFieldOfView
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _source
       (write-long _source s)
     ;; int32 _inFieldOfView
       (write-long _inFieldOfView s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _source
     (setq _source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _inFieldOfView
     (setq _inFieldOfView (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get person_msgs::Person :md5sum-) "fc555d9a5642fa886394e751e13aa823")
(setf (get person_msgs::Person :datatype-) "person_msgs/Person")
(setf (get person_msgs::Person :definition-)
      "std_msgs/Header header

#Confidence is a float ranging 0.0 to 1.0
float32 confidence

int32 source
int32 inFieldOfView

#Pose
float32 x
float32 y
float32 z
float32 theta


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



(provide :person_msgs/Person "fc555d9a5642fa886394e751e13aa823")


