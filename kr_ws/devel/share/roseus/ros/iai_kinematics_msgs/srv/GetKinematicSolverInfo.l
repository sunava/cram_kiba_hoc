;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::GetKinematicSolverInfo)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'GetKinematicSolverInfo (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFO")
  (make-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFO"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFOREQUEST")
  (make-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFOREQUEST"))
(unless (find-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFORESPONSE")
  (make-package "IAI_KINEMATICS_MSGS::GETKINEMATICSOLVERINFORESPONSE"))

(in-package "ROS")





(defclass iai_kinematics_msgs::GetKinematicSolverInfoRequest
  :super ros::object
  :slots ())

(defmethod iai_kinematics_msgs::GetKinematicSolverInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetKinematicSolverInfoResponse
  :super ros::object
  :slots (_kinematic_solver_info ))

(defmethod iai_kinematics_msgs::GetKinematicSolverInfoResponse
  (:init
   (&key
    ((:kinematic_solver_info __kinematic_solver_info) (instance iai_kinematics_msgs::KinematicSolverInfo :init))
    )
   (send-super :init)
   (setq _kinematic_solver_info __kinematic_solver_info)
   self)
  (:kinematic_solver_info
   (&rest __kinematic_solver_info)
   (if (keywordp (car __kinematic_solver_info))
       (send* _kinematic_solver_info __kinematic_solver_info)
     (progn
       (if __kinematic_solver_info (setq _kinematic_solver_info (car __kinematic_solver_info)))
       _kinematic_solver_info)))
  (:serialization-length
   ()
   (+
    ;; iai_kinematics_msgs/KinematicSolverInfo _kinematic_solver_info
    (send _kinematic_solver_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iai_kinematics_msgs/KinematicSolverInfo _kinematic_solver_info
       (send _kinematic_solver_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iai_kinematics_msgs/KinematicSolverInfo _kinematic_solver_info
     (send _kinematic_solver_info :deserialize buf ptr-) (incf ptr- (send _kinematic_solver_info :serialization-length))
   ;;
   self)
  )

(defclass iai_kinematics_msgs::GetKinematicSolverInfo
  :super ros::object
  :slots ())

(setf (get iai_kinematics_msgs::GetKinematicSolverInfo :md5sum-) "9b591d98efeb66095c1b33a70221cab5")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfo :datatype-) "iai_kinematics_msgs/GetKinematicSolverInfo")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfo :request) iai_kinematics_msgs::GetKinematicSolverInfoRequest)
(setf (get iai_kinematics_msgs::GetKinematicSolverInfo :response) iai_kinematics_msgs::GetKinematicSolverInfoResponse)

(defmethod iai_kinematics_msgs::GetKinematicSolverInfoRequest
  (:response () (instance iai_kinematics_msgs::GetKinematicSolverInfoResponse :init)))

(setf (get iai_kinematics_msgs::GetKinematicSolverInfoRequest :md5sum-) "9b591d98efeb66095c1b33a70221cab5")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfoRequest :datatype-) "iai_kinematics_msgs/GetKinematicSolverInfoRequest")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfoRequest :definition-)
      "# A service call to get more information about the solver used by a node performing kinematics
---
iai_kinematics_msgs/KinematicSolverInfo kinematic_solver_info


================================================================================
MSG: iai_kinematics_msgs/KinematicSolverInfo
# A list of joints in the kinematic tree
string[] joint_names
# A list of joint limits corresponding to the joint names
iai_kinematics_msgs/JointLimits[] limits
# A list of links that the kinematics node provides solutions for
string[] link_names

================================================================================
MSG: iai_kinematics_msgs/JointLimits
# This message contains information about limits of a particular joint (or control dimension)
string joint_name

# true if the joint has position limits
bool has_position_limits

# min and max position limits
float64 min_position
float64 max_position

# true if joint has velocity limits
bool has_velocity_limits

# max velocity limit
float64 max_velocity
# min_velocity is assumed to be -max_velocity

# true if joint has acceleration limits
bool has_acceleration_limits
# max acceleration limit
float64 max_acceleration
# min_acceleration is assumed to be -max_acceleration
")

(setf (get iai_kinematics_msgs::GetKinematicSolverInfoResponse :md5sum-) "9b591d98efeb66095c1b33a70221cab5")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfoResponse :datatype-) "iai_kinematics_msgs/GetKinematicSolverInfoResponse")
(setf (get iai_kinematics_msgs::GetKinematicSolverInfoResponse :definition-)
      "# A service call to get more information about the solver used by a node performing kinematics
---
iai_kinematics_msgs/KinematicSolverInfo kinematic_solver_info


================================================================================
MSG: iai_kinematics_msgs/KinematicSolverInfo
# A list of joints in the kinematic tree
string[] joint_names
# A list of joint limits corresponding to the joint names
iai_kinematics_msgs/JointLimits[] limits
# A list of links that the kinematics node provides solutions for
string[] link_names

================================================================================
MSG: iai_kinematics_msgs/JointLimits
# This message contains information about limits of a particular joint (or control dimension)
string joint_name

# true if the joint has position limits
bool has_position_limits

# min and max position limits
float64 min_position
float64 max_position

# true if joint has velocity limits
bool has_velocity_limits

# max velocity limit
float64 max_velocity
# min_velocity is assumed to be -max_velocity

# true if joint has acceleration limits
bool has_acceleration_limits
# max acceleration limit
float64 max_acceleration
# min_acceleration is assumed to be -max_acceleration
")



(provide :iai_kinematics_msgs/GetKinematicSolverInfo "9b591d98efeb66095c1b33a70221cab5")


