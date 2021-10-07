;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::MultiJointVelocityCommand)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'MultiJointVelocityCommand (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYCOMMAND")
  (make-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MultiJointVelocityCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iai_control_msgs::MultiJointVelocityCommand
  :super ros::object
  :slots (_header _velocity ))

(defmethod iai_control_msgs::MultiJointVelocityCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iai_control_msgs::MultiJointVelocityCommand :md5sum-) "c2d712284996c67e9ebdac0d389fff20")
(setf (get iai_control_msgs::MultiJointVelocityCommand :datatype-) "iai_control_msgs/MultiJointVelocityCommand")
(setf (get iai_control_msgs::MultiJointVelocityCommand :definition-)
      "Header header

# Command to move a set of velocity-resolved robot joints 
float32[] velocity     #joint velocity in rad/s

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



(provide :iai_control_msgs/MultiJointVelocityCommand "c2d712284996c67e9ebdac0d389fff20")


