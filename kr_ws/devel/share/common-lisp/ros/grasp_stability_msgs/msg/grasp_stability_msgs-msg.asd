
(cl:in-package :asdf)

(defsystem "grasp_stability_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GraspStability" :depends-on ("_package_GraspStability"))
    (:file "_package_GraspStability" :depends-on ("_package"))
  ))