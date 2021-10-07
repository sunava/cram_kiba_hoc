;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::Conf)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'Conf (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::CONF")
  (make-package "IAI_WSG_50_MSGS::CONF"))
(unless (find-package "IAI_WSG_50_MSGS::CONFREQUEST")
  (make-package "IAI_WSG_50_MSGS::CONFREQUEST"))
(unless (find-package "IAI_WSG_50_MSGS::CONFRESPONSE")
  (make-package "IAI_WSG_50_MSGS::CONFRESPONSE"))

(in-package "ROS")





(defclass iai_wsg_50_msgs::ConfRequest
  :super ros::object
  :slots (_val ))

(defmethod iai_wsg_50_msgs::ConfRequest
  (:init
   (&key
    ((:val __val) 0.0)
    )
   (send-super :init)
   (setq _val (float __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; float32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _val
       (sys::poke _val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _val
     (setq _val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iai_wsg_50_msgs::ConfResponse
  :super ros::object
  :slots (_error ))

(defmethod iai_wsg_50_msgs::ConfResponse
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

(defclass iai_wsg_50_msgs::Conf
  :super ros::object
  :slots ())

(setf (get iai_wsg_50_msgs::Conf :md5sum-) "0c7a1839200830facdc1205cf36615d5")
(setf (get iai_wsg_50_msgs::Conf :datatype-) "iai_wsg_50_msgs/Conf")
(setf (get iai_wsg_50_msgs::Conf :request) iai_wsg_50_msgs::ConfRequest)
(setf (get iai_wsg_50_msgs::Conf :response) iai_wsg_50_msgs::ConfResponse)

(defmethod iai_wsg_50_msgs::ConfRequest
  (:response () (instance iai_wsg_50_msgs::ConfResponse :init)))

(setf (get iai_wsg_50_msgs::ConfRequest :md5sum-) "0c7a1839200830facdc1205cf36615d5")
(setf (get iai_wsg_50_msgs::ConfRequest :datatype-) "iai_wsg_50_msgs/ConfRequest")
(setf (get iai_wsg_50_msgs::ConfRequest :definition-)
      "float32 val
---
uint8 error

")

(setf (get iai_wsg_50_msgs::ConfResponse :md5sum-) "0c7a1839200830facdc1205cf36615d5")
(setf (get iai_wsg_50_msgs::ConfResponse :datatype-) "iai_wsg_50_msgs/ConfResponse")
(setf (get iai_wsg_50_msgs::ConfResponse :definition-)
      "float32 val
---
uint8 error

")



(provide :iai_wsg_50_msgs/Conf "0c7a1839200830facdc1205cf36615d5")


