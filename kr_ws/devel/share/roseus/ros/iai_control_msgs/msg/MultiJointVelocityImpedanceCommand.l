;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::MultiJointVelocityImpedanceCommand)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'MultiJointVelocityImpedanceCommand (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYIMPEDANCECOMMAND")
  (make-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYIMPEDANCECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MultiJointVelocityImpedanceCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iai_control_msgs::MultiJointVelocityImpedanceCommand
  :super ros::object
  :slots (_header _velocity _stiffness _damping _add_torque ))

(defmethod iai_control_msgs::MultiJointVelocityImpedanceCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stiffness __stiffness) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:add_torque __add_torque) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity __velocity)
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   (setq _add_torque __add_torque)
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
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:add_torque
   (&optional __add_torque)
   (if __add_torque (setq _add_torque __add_torque)) _add_torque)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; float32[] _stiffness
    (* 4    (length _stiffness)) 4
    ;; float32[] _damping
    (* 4    (length _damping)) 4
    ;; float32[] _add_torque
    (* 4    (length _add_torque)) 4
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
     ;; float32[] _stiffness
     (write-long (length _stiffness) s)
     (dotimes (i (length _stiffness))
       (sys::poke (elt _stiffness i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _add_torque
     (write-long (length _add_torque) s)
     (dotimes (i (length _add_torque))
       (sys::poke (elt _add_torque i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _stiffness
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stiffness (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stiffness i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _add_torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _add_torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _add_torque i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iai_control_msgs::MultiJointVelocityImpedanceCommand :md5sum-) "d4747ea02611dd2a7cda90f6dce148aa")
(setf (get iai_control_msgs::MultiJointVelocityImpedanceCommand :datatype-) "iai_control_msgs/MultiJointVelocityImpedanceCommand")
(setf (get iai_control_msgs::MultiJointVelocityImpedanceCommand :definition-)
      "#Header
Header header

# Command to move a set of velocity-resolved robot joints 
float32[] velocity     #joint velocity in rad/s
float32[] stiffness    #joint stiffness in Nm/rad
float32[] damping      #joint damping (normalized, 0.7 is critically dampped)

# Experimental field: DO NOT USE unless you really know what you are doing!
float32[] add_torque   #additional joint torque in Nm

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



(provide :iai_control_msgs/MultiJointVelocityImpedanceCommand "d4747ea02611dd2a7cda90f6dce148aa")


