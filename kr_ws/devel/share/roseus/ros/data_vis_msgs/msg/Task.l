;; Auto-generated. Do not edit!


(when (boundp 'data_vis_msgs::Task)
  (if (not (find-package "DATA_VIS_MSGS"))
    (make-package "DATA_VIS_MSGS"))
  (shadow 'Task (find-package "DATA_VIS_MSGS")))
(unless (find-package "DATA_VIS_MSGS::TASK")
  (make-package "DATA_VIS_MSGS::TASK"))

(in-package "ROS")
;;//! \htmlinclude Task.msg.html


(defclass data_vis_msgs::Task
  :super ros::object
  :slots (_id _parent _color _info _type _tip ))

(defmethod data_vis_msgs::Task
  (:init
   (&key
    ((:id __id) 0)
    ((:parent __parent) 0)
    ((:color __color) "")
    ((:info __info) "")
    ((:type __type) "")
    ((:tip __tip) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parent (round __parent))
   (setq _color (string __color))
   (setq _info (string __info))
   (setq _type (string __type))
   (setq _tip (string __tip))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parent
   (&optional __parent)
   (if __parent (setq _parent __parent)) _parent)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:tip
   (&optional __tip)
   (if __tip (setq _tip __tip)) _tip)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _parent
    4
    ;; string _color
    4 (length _color)
    ;; string _info
    4 (length _info)
    ;; string _type
    4 (length _type)
    ;; string _tip
    4 (length _tip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _parent
       (write-long _parent s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _tip
       (write-long (length _tip) s) (princ _tip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parent
     (setq _parent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get data_vis_msgs::Task :md5sum-) "165080ef33de5a23c032a947cb733600")
(setf (get data_vis_msgs::Task :datatype-) "data_vis_msgs/Task")
(setf (get data_vis_msgs::Task :definition-)
      "int32 id
int32 parent
string color
string info
string type
string tip

")



(provide :data_vis_msgs/Task "165080ef33de5a23c032a947cb733600")


