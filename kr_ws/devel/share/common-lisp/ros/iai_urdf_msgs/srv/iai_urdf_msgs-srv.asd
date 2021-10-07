
(cl:in-package :asdf)

(defsystem "iai_urdf_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AlterUrdf" :depends-on ("_package_AlterUrdf"))
    (:file "_package_AlterUrdf" :depends-on ("_package"))
  ))