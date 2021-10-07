
(cl:in-package :asdf)

(defsystem "data_vis_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DataVis" :depends-on ("_package_DataVis"))
    (:file "_package_DataVis" :depends-on ("_package"))
    (:file "Speech" :depends-on ("_package_Speech"))
    (:file "_package_Speech" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
    (:file "TaskTree" :depends-on ("_package_TaskTree"))
    (:file "_package_TaskTree" :depends-on ("_package"))
    (:file "ValueList" :depends-on ("_package_ValueList"))
    (:file "_package_ValueList" :depends-on ("_package"))
  ))