
(cl:in-package :asdf)

(defsystem "iai_pepper_demo_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "PepperComm" :depends-on ("_package_PepperComm"))
    (:file "_package_PepperComm" :depends-on ("_package"))
  ))