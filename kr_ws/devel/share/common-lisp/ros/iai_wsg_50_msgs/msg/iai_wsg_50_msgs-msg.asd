
(cl:in-package :asdf)

(defsystem "iai_wsg_50_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Cmd" :depends-on ("_package_Cmd"))
    (:file "_package_Cmd" :depends-on ("_package"))
    (:file "PositionCmd" :depends-on ("_package_PositionCmd"))
    (:file "_package_PositionCmd" :depends-on ("_package"))
    (:file "SpeedCmd" :depends-on ("_package_SpeedCmd"))
    (:file "_package_SpeedCmd" :depends-on ("_package"))
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
  ))