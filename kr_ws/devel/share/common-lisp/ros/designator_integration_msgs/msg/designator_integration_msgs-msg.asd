
(cl:in-package :asdf)

(defsystem "designator_integration_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Designator" :depends-on ("_package_Designator"))
    (:file "_package_Designator" :depends-on ("_package"))
    (:file "DesignatorRequest" :depends-on ("_package_DesignatorRequest"))
    (:file "_package_DesignatorRequest" :depends-on ("_package"))
    (:file "DesignatorResponse" :depends-on ("_package_DesignatorResponse"))
    (:file "_package_DesignatorResponse" :depends-on ("_package"))
    (:file "KeyValuePair" :depends-on ("_package_KeyValuePair"))
    (:file "_package_KeyValuePair" :depends-on ("_package"))
  ))