
(cl:in-package :asdf)

(defsystem "rosprolog-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JSONWrapper" :depends-on ("_package_JSONWrapper"))
    (:file "_package_JSONWrapper" :depends-on ("_package"))
  ))