;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::SpeedCmd)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'SpeedCmd (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::SPEEDCMD")
  (make-package "IAI_WSG_50_MSGS::SPEEDCMD"))

(in-package "ROS")
;;//! \htmlinclude SpeedCmd.msg.html


(defclass iai_wsg_50_msgs::SpeedCmd
  :super ros::object
  :slots (_speed _force ))

(defmethod iai_wsg_50_msgs::SpeedCmd
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _force (float __force))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iai_wsg_50_msgs::SpeedCmd :md5sum-) "78bc8e5b0b23e68f9c42fc33214123d4")
(setf (get iai_wsg_50_msgs::SpeedCmd :datatype-) "iai_wsg_50_msgs/SpeedCmd")
(setf (get iai_wsg_50_msgs::SpeedCmd :definition-)
      "float32 speed
float32 force
")



(provide :iai_wsg_50_msgs/SpeedCmd "78bc8e5b0b23e68f9c42fc33214123d4")


