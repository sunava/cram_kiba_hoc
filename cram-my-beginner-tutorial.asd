(defsystem cram-my-beginner-tutorial
  :depends-on (roslisp cram-language turtlesim-msg turtlesim-srv cl-transforms geometry_msgs-msg)
  :components
  ((:module "src"
            :components
            ((:file "package")
	     (:file "simple-plans" :depends-on ("package" "control-turtlesim"))
             (:file "control-turtlesim" :depends-on ("package"))))))
