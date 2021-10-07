
(cl:in-package :asdf)

(defsystem "iai_kinematics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ErrorCodes" :depends-on ("_package_ErrorCodes"))
    (:file "_package_ErrorCodes" :depends-on ("_package"))
    (:file "JointLimits" :depends-on ("_package_JointLimits"))
    (:file "_package_JointLimits" :depends-on ("_package"))
    (:file "KDLWeights" :depends-on ("_package_KDLWeights"))
    (:file "_package_KDLWeights" :depends-on ("_package"))
    (:file "KinematicSolverInfo" :depends-on ("_package_KinematicSolverInfo"))
    (:file "_package_KinematicSolverInfo" :depends-on ("_package"))
    (:file "MultiDOFJointState" :depends-on ("_package_MultiDOFJointState"))
    (:file "_package_MultiDOFJointState" :depends-on ("_package"))
    (:file "PositionIKRequest" :depends-on ("_package_PositionIKRequest"))
    (:file "_package_PositionIKRequest" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))