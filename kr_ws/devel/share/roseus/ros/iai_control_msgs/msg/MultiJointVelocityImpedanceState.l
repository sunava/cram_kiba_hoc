;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::MultiJointVelocityImpedanceState)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'MultiJointVelocityImpedanceState (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYIMPEDANCESTATE")
  (make-package "IAI_CONTROL_MSGS::MULTIJOINTVELOCITYIMPEDANCESTATE"))

(in-package "ROS")
;;//! \htmlinclude MultiJointVelocityImpedanceState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iai_control_msgs::MultiJointVelocityImpedanceState
  :super ros::object
  :slots (_header _joint_names _velocity _stiffness _damping ))

(defmethod iai_control_msgs::MultiJointVelocityImpedanceState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stiffness __stiffness) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _joint_names __joint_names)
   (setq _velocity __velocity)
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _stiffness
    (* 8    (length _stiffness)) 4
    ;; float64[] _damping
    (* 8    (length _damping)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _stiffness
     (write-long (length _stiffness) s)
     (dotimes (i (length _stiffness))
       (sys::poke (elt _stiffness i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _stiffness
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stiffness (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stiffness i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get iai_control_msgs::MultiJointVelocityImpedanceState :md5sum-) "0874c4d51e4ef30bf87226823df75a2c")
(setf (get iai_control_msgs::MultiJointVelocityImpedanceState :datatype-) "iai_control_msgs/MultiJointVelocityImpedanceState")
(setf (get iai_control_msgs::MultiJointVelocityImpedanceState :definition-)
      "#Header
Header header

# joints we are commanding
string[] joint_names

# commands send to low-level controller
float64[] velocity     #joint velocity in rad/s
float64[] stiffness    #joint stiffness in Nm/rad
float64[] damping      #joint damping (normalized, 0.7 is critically dampped)

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



(provide :iai_control_msgs/MultiJointVelocityImpedanceState "0874c4d51e4ef30bf87226823df75a2c")


