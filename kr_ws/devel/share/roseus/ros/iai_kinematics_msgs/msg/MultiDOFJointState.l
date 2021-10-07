;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::MultiDOFJointState)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'MultiDOFJointState (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::MULTIDOFJOINTSTATE")
  (make-package "IAI_KINEMATICS_MSGS::MULTIDOFJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude MultiDOFJointState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iai_kinematics_msgs::MultiDOFJointState
  :super ros::object
  :slots (_stamp _joint_names _frame_ids _child_frame_ids _poses ))

(defmethod iai_kinematics_msgs::MultiDOFJointState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:frame_ids __frame_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:child_frame_ids __child_frame_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _joint_names __joint_names)
   (setq _frame_ids __frame_ids)
   (setq _child_frame_ids __child_frame_ids)
   (setq _poses __poses)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:frame_ids
   (&optional __frame_ids)
   (if __frame_ids (setq _frame_ids __frame_ids)) _frame_ids)
  (:child_frame_ids
   (&optional __child_frame_ids)
   (if __child_frame_ids (setq _child_frame_ids __child_frame_ids)) _child_frame_ids)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; string[] _frame_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _frame_ids)) 4
    ;; string[] _child_frame_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _child_frame_ids)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _frame_ids
     (write-long (length _frame_ids) s)
     (dolist (elem _frame_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _child_frame_ids
     (write-long (length _child_frame_ids) s)
     (dolist (elem _child_frame_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _frame_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frame_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _frame_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _child_frame_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _child_frame_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _child_frame_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iai_kinematics_msgs::MultiDOFJointState :md5sum-) "ddd04f13c06870db031db8d5c0a6379d")
(setf (get iai_kinematics_msgs::MultiDOFJointState :datatype-) "iai_kinematics_msgs/MultiDOFJointState")
(setf (get iai_kinematics_msgs::MultiDOFJointState :definition-)
      "#A representation of a multi-dof joint state
time stamp
string[] joint_names
string[] frame_ids
string[] child_frame_ids
geometry_msgs/Pose[] poses

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



(provide :iai_kinematics_msgs/MultiDOFJointState "ddd04f13c06870db031db8d5c0a6379d")


