;; Auto-generated. Do not edit!


(when (boundp 'data_vis_msgs::ValueList)
  (if (not (find-package "DATA_VIS_MSGS"))
    (make-package "DATA_VIS_MSGS"))
  (shadow 'ValueList (find-package "DATA_VIS_MSGS")))
(unless (find-package "DATA_VIS_MSGS::VALUELIST")
  (make-package "DATA_VIS_MSGS::VALUELIST"))

(in-package "ROS")
;;//! \htmlinclude ValueList.msg.html


(defclass data_vis_msgs::ValueList
  :super ros::object
  :slots (_label _value1 _value2 ))

(defmethod data_vis_msgs::ValueList
  (:init
   (&key
    ((:label __label) "")
    ((:value1 __value1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:value2 __value2) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _value1 __value1)
   (setq _value2 __value2)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; string[] _value1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value1)) 4
    ;; string[] _value2
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string[] _value1
     (write-long (length _value1) s)
     (dolist (elem _value1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _value2
     (write-long (length _value2) s)
     (dolist (elem _value2)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _value1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _value2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value2 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value2 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get data_vis_msgs::ValueList :md5sum-) "93606cae4b5c86869b7aa221cf2b0b01")
(setf (get data_vis_msgs::ValueList :datatype-) "data_vis_msgs/ValueList")
(setf (get data_vis_msgs::ValueList :definition-)
      "string label
string[] value1
string[] value2

")



(provide :data_vis_msgs/ValueList "93606cae4b5c86869b7aa221cf2b0b01")


