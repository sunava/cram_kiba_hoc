
(cl:in-package :asdf)

(defsystem "rosprolog-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MessageJSON" :depends-on ("_package_MessageJSON"))
    (:file "_package_MessageJSON" :depends-on ("_package"))
  ))