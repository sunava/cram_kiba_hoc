;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Binding)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Binding (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::BINDING")
  (make-package "PLANNING_MSGS::BINDING"))

(in-package "ROS")
;;//! \htmlinclude Binding.msg.html


(intern "*STRING*" (find-package "PLANNING_MSGS::BINDING"))
(shadow '*STRING* (find-package "PLANNING_MSGS::BINDING"))
(defconstant planning_msgs::Binding::*STRING* 0)
(intern "*INT*" (find-package "PLANNING_MSGS::BINDING"))
(shadow '*INT* (find-package "PLANNING_MSGS::BINDING"))
(defconstant planning_msgs::Binding::*INT* 1)
(intern "*FLOAT*" (find-package "PLANNING_MSGS::BINDING"))
(shadow '*FLOAT* (find-package "PLANNING_MSGS::BINDING"))
(defconstant planning_msgs::Binding::*FLOAT* 2)
(intern "*SYMBOL*" (find-package "PLANNING_MSGS::BINDING"))
(shadow '*SYMBOL* (find-package "PLANNING_MSGS::BINDING"))
(defconstant planning_msgs::Binding::*SYMBOL* 3)
(defclass planning_msgs::Binding
  :super ros::object
  :slots (_type _key _value ))

(defmethod planning_msgs::Binding
  (:init
   (&key
    ((:type __type) 0)
    ((:key __key) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _key (string __key))
   (setq _value (string __value))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; string _key
    4 (length _key)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::Binding :md5sum-) "0d24c1741be04b38a3ed9116a981e7fa")
(setf (get planning_msgs::Binding :datatype-) "planning_msgs/Binding")
(setf (get planning_msgs::Binding :definition-)
      "# Constants for determining the datatype encapsulated in the `value` string
int32 STRING=0
int32 INT=1
int32 FLOAT=2
int32 SYMBOL=3

# The actual fields
int32 type
string key
string value

")



(provide :planning_msgs/Binding "0d24c1741be04b38a3ed9116a981e7fa")


