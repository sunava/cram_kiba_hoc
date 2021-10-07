
(cl:in-package :asdf)

(defsystem "json_prolog_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PrologFinish" :depends-on ("_package_PrologFinish"))
    (:file "_package_PrologFinish" :depends-on ("_package"))
    (:file "PrologNextSolution" :depends-on ("_package_PrologNextSolution"))
    (:file "_package_PrologNextSolution" :depends-on ("_package"))
    (:file "PrologQuery" :depends-on ("_package_PrologQuery"))
    (:file "_package_PrologQuery" :depends-on ("_package"))
  ))