;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::Move)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'Move (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::MOVE")
  (make-package "IAI_WSG_50_MSGS::MOVE"))
(unless (find-package "IAI_WSG_50_MSGS::MOVEREQUEST")
  (make-package "IAI_WSG_50_MSGS::MOVEREQUEST"))
(unless (find-package "IAI_WSG_50_MSGS::MOVERESPONSE")
  (make-package "IAI_WSG_50_MSGS::MOVERESPONSE"))

(in-package "ROS")





(defclass iai_wsg_50_msgs::MoveRequest
  :super ros::object
  :slots (_width _speed ))

(defmethod iai_wsg_50_msgs::MoveRequest
  (:init
   (&key
    ((:width __width) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _speed (float __speed))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iai_wsg_50_msgs::MoveResponse
  :super ros::object
  :slots (_error ))

(defmethod iai_wsg_50_msgs::MoveResponse
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

(defclass iai_wsg_50_msgs::Move
  :super ros::object
  :slots ())

(setf (get iai_wsg_50_msgs::Move :md5sum-) "ac4bc9278b95c49c6bb95b3db7e0a0e4")
(setf (get iai_wsg_50_msgs::Move :datatype-) "iai_wsg_50_msgs/Move")
(setf (get iai_wsg_50_msgs::Move :request) iai_wsg_50_msgs::MoveRequest)
(setf (get iai_wsg_50_msgs::Move :response) iai_wsg_50_msgs::MoveResponse)

(defmethod iai_wsg_50_msgs::MoveRequest
  (:response () (instance iai_wsg_50_msgs::MoveResponse :init)))

(setf (get iai_wsg_50_msgs::MoveRequest :md5sum-) "ac4bc9278b95c49c6bb95b3db7e0a0e4")
(setf (get iai_wsg_50_msgs::MoveRequest :datatype-) "iai_wsg_50_msgs/MoveRequest")
(setf (get iai_wsg_50_msgs::MoveRequest :definition-)
      "float32 width
float32 speed
---
uint8 error

")

(setf (get iai_wsg_50_msgs::MoveResponse :md5sum-) "ac4bc9278b95c49c6bb95b3db7e0a0e4")
(setf (get iai_wsg_50_msgs::MoveResponse :datatype-) "iai_wsg_50_msgs/MoveResponse")
(setf (get iai_wsg_50_msgs::MoveResponse :definition-)
      "float32 width
float32 speed
---
uint8 error

")



(provide :iai_wsg_50_msgs/Move "ac4bc9278b95c49c6bb95b3db7e0a0e4")


