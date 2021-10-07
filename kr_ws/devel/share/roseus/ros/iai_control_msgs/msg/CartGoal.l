;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::CartGoal)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'CartGoal (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::CARTGOAL")
  (make-package "IAI_CONTROL_MSGS::CARTGOAL"))

(in-package "ROS")
;;//! \htmlinclude CartGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iai_control_msgs::CartGoal
  :super ros::object
  :slots (_pose _ee_frame_name ))

(defmethod iai_control_msgs::CartGoal
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:ee_frame_name __ee_frame_name) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _ee_frame_name (string __ee_frame_name))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:ee_frame_name
   (&optional __ee_frame_name)
   (if __ee_frame_name (setq _ee_frame_name __ee_frame_name)) _ee_frame_name)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _ee_frame_name
    4 (length _ee_frame_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _ee_frame_name
       (write-long (length _ee_frame_name) s) (princ _ee_frame_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _ee_frame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ee_frame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get iai_control_msgs::CartGoal :md5sum-) "635ae40b63305e709867162d912265c3")
(setf (get iai_control_msgs::CartGoal :datatype-) "iai_control_msgs/CartGoal")
(setf (get iai_control_msgs::CartGoal :definition-)
      "# Command to give a cartesian goal to a robot
geometry_msgs/PoseStamped pose   # Has the stamp, and the Pose of the goal
string ee_frame_name  # Is the name of the EndEffector frame


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :iai_control_msgs/CartGoal "635ae40b63305e709867162d912265c3")


