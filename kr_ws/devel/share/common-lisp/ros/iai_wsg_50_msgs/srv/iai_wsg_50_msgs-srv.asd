
(cl:in-package :asdf)

(defsystem "iai_wsg_50_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Conf" :depends-on ("_package_Conf"))
    (:file "_package_Conf" :depends-on ("_package"))
    (:file "Incr" :depends-on ("_package_Incr"))
    (:file "_package_Incr" :depends-on ("_package"))
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
  ))