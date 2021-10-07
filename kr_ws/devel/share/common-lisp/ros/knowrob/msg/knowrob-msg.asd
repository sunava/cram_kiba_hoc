
(cl:in-package :asdf)

(defsystem "knowrob-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EventToken" :depends-on ("_package_EventToken"))
    (:file "_package_EventToken" :depends-on ("_package"))
  ))