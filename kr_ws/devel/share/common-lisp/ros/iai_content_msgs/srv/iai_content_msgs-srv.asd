
(cl:in-package :asdf)

(defsystem "iai_content_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "content_msg" :depends-on ("_package_content_msg"))
    (:file "_package_content_msg" :depends-on ("_package"))
  ))