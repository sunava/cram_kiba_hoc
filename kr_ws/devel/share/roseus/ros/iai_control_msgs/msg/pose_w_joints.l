;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::pose_w_joints)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'pose_w_joints (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::POSE_W_JOINTS")
  (make-package "IAI_CONTROL_MSGS::POSE_W_JOINTS"))

(in-package "ROS")
;;//! \htmlinclude pose_w_joints.msg.html


(defclass iai_control_msgs::pose_w_joints
  :super ros::object
  :slots (_joint_values ))

(defmethod iai_control_msgs::pose_w_joints
  (:init
   (&key
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_values __joint_values)
   self)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_values
    (* 4    (length _joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_values
     (write-long (length _joint_values) s)
     (dotimes (i (length _joint_values))
       (sys::poke (elt _joint_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iai_control_msgs::pose_w_joints :md5sum-) "50b3293f6e585f2a02888f333d3c3e8a")
(setf (get iai_control_msgs::pose_w_joints :datatype-) "iai_control_msgs/pose_w_joints")
(setf (get iai_control_msgs::pose_w_joints :definition-)
      "float32[] joint_values

")



(provide :iai_control_msgs/pose_w_joints "50b3293f6e585f2a02888f333d3c3e8a")


