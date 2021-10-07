
(cl:in-package :asdf)

(defsystem "designator_integration_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :designator_integration_msgs-msg
)
  :components ((:file "_package")
    (:file "DesignatorCommunication" :depends-on ("_package_DesignatorCommunication"))
    (:file "_package_DesignatorCommunication" :depends-on ("_package"))
  ))