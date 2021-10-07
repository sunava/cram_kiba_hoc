
(cl:in-package :asdf)

(defsystem "iai_kinematics_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :iai_kinematics_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetKinematicSolverInfo" :depends-on ("_package_GetKinematicSolverInfo"))
    (:file "_package_GetKinematicSolverInfo" :depends-on ("_package"))
    (:file "GetPositionFK" :depends-on ("_package_GetPositionFK"))
    (:file "_package_GetPositionFK" :depends-on ("_package"))
    (:file "GetPositionIK" :depends-on ("_package_GetPositionIK"))
    (:file "_package_GetPositionIK" :depends-on ("_package"))
    (:file "GetWeightedIK" :depends-on ("_package_GetWeightedIK"))
    (:file "_package_GetWeightedIK" :depends-on ("_package"))
  ))