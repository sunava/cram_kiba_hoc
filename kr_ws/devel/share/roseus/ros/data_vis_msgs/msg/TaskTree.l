;; Auto-generated. Do not edit!


(when (boundp 'data_vis_msgs::TaskTree)
  (if (not (find-package "DATA_VIS_MSGS"))
    (make-package "DATA_VIS_MSGS"))
  (shadow 'TaskTree (find-package "DATA_VIS_MSGS")))
(unless (find-package "DATA_VIS_MSGS::TASKTREE")
  (make-package "DATA_VIS_MSGS::TASKTREE"))

(in-package "ROS")
;;//! \htmlinclude TaskTree.msg.html


(defclass data_vis_msgs::TaskTree
  :super ros::object
  :slots (_height _width _tree ))

(defmethod data_vis_msgs::TaskTree
  (:init
   (&key
    ((:height __height) 0)
    ((:width __width) 0)
    ((:tree __tree) (let (r) (dotimes (i 0) (push (instance data_vis_msgs::Task :init) r)) r))
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _tree __tree)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:tree
   (&rest __tree)
   (if (keywordp (car __tree))
       (send* _tree __tree)
     (progn
       (if __tree (setq _tree (car __tree)))
       _tree)))
  (:serialization-length
   ()
   (+
    ;; int32 _height
    4
    ;; int32 _width
    4
    ;; data_vis_msgs/Task[] _tree
    (apply #'+ (send-all _tree :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _height
       (write-long _height s)
     ;; int32 _width
       (write-long _width s)
     ;; data_vis_msgs/Task[] _tree
     (write-long (length _tree) s)
     (dolist (elem _tree)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; data_vis_msgs/Task[] _tree
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tree (let (r) (dotimes (i n) (push (instance data_vis_msgs::Task :init) r)) r))
     (dolist (elem- _tree)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get data_vis_msgs::TaskTree :md5sum-) "68804d281c645f8fa26a5b5cf3727638")
(setf (get data_vis_msgs::TaskTree :datatype-) "data_vis_msgs/TaskTree")
(setf (get data_vis_msgs::TaskTree :definition-)
      "int32 height
int32 width
Task[] tree

================================================================================
MSG: data_vis_msgs/Task
int32 id
int32 parent
string color
string info
string type
string tip

")



(provide :data_vis_msgs/TaskTree "68804d281c645f8fa26a5b5cf3727638")


