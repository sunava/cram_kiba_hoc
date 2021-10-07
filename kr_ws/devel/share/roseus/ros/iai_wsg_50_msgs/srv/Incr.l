;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::Incr)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'Incr (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::INCR")
  (make-package "IAI_WSG_50_MSGS::INCR"))
(unless (find-package "IAI_WSG_50_MSGS::INCRREQUEST")
  (make-package "IAI_WSG_50_MSGS::INCRREQUEST"))
(unless (find-package "IAI_WSG_50_MSGS::INCRRESPONSE")
  (make-package "IAI_WSG_50_MSGS::INCRRESPONSE"))

(in-package "ROS")





(defclass iai_wsg_50_msgs::IncrRequest
  :super ros::object
  :slots (_direction _increment ))

(defmethod iai_wsg_50_msgs::IncrRequest
  (:init
   (&key
    ((:direction __direction) "")
    ((:increment __increment) 0.0)
    )
   (send-super :init)
   (setq _direction (string __direction))
   (setq _increment (float __increment))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:increment
   (&optional __increment)
   (if __increment (setq _increment __increment)) _increment)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ;; float32 _increment
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; float32 _increment
       (sys::poke _increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _increment
     (setq _increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iai_wsg_50_msgs::IncrResponse
  :super ros::object
  :slots (_error ))

(defmethod iai_wsg_50_msgs::IncrResponse
  (:init
   (&key
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _error (round __error))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass iai_wsg_50_msgs::Incr
  :super ros::object
  :slots ())

(setf (get iai_wsg_50_msgs::Incr :md5sum-) "b996830260cb95e784a9d9fbb5e34c61")
(setf (get iai_wsg_50_msgs::Incr :datatype-) "iai_wsg_50_msgs/Incr")
(setf (get iai_wsg_50_msgs::Incr :request) iai_wsg_50_msgs::IncrRequest)
(setf (get iai_wsg_50_msgs::Incr :response) iai_wsg_50_msgs::IncrResponse)

(defmethod iai_wsg_50_msgs::IncrRequest
  (:response () (instance iai_wsg_50_msgs::IncrResponse :init)))

(setf (get iai_wsg_50_msgs::IncrRequest :md5sum-) "b996830260cb95e784a9d9fbb5e34c61")
(setf (get iai_wsg_50_msgs::IncrRequest :datatype-) "iai_wsg_50_msgs/IncrRequest")
(setf (get iai_wsg_50_msgs::IncrRequest :definition-)
      "string direction
float32 increment
---
uint8 error

")

(setf (get iai_wsg_50_msgs::IncrResponse :md5sum-) "b996830260cb95e784a9d9fbb5e34c61")
(setf (get iai_wsg_50_msgs::IncrResponse :datatype-) "iai_wsg_50_msgs/IncrResponse")
(setf (get iai_wsg_50_msgs::IncrResponse :definition-)
      "string direction
float32 increment
---
uint8 error

")



(provide :iai_wsg_50_msgs/Incr "b996830260cb95e784a9d9fbb5e34c61")


