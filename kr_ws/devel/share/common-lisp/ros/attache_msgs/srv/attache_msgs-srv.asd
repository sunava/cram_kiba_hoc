
(cl:in-package :asdf)

(defsystem "attache_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Attachment" :depends-on ("_package_Attachment"))
    (:file "_package_Attachment" :depends-on ("_package"))
    (:file "JointControl" :depends-on ("_package_JointControl"))
    (:file "_package_JointControl" :depends-on ("_package"))
    (:file "JointInformation" :depends-on ("_package_JointInformation"))
    (:file "_package_JointInformation" :depends-on ("_package"))
  ))