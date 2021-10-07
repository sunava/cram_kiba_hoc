;; Auto-generated. Do not edit!


(when (boundp 'iai_wsg_50_msgs::PositionCmd)
  (if (not (find-package "IAI_WSG_50_MSGS"))
    (make-package "IAI_WSG_50_MSGS"))
  (shadow 'PositionCmd (find-package "IAI_WSG_50_MSGS")))
(unless (find-package "IAI_WSG_50_MSGS::POSITIONCMD")
  (make-package "IAI_WSG_50_MSGS::POSITIONCMD"))

(in-package "ROS")
;;//! \htmlinclude PositionCmd.msg.html


(defclass iai_wsg_50_msgs::PositionCmd
  :super ros::object
  :slots (_pos _speed _force ))

(defmethod iai_wsg_50_msgs::PositionCmd
  (:init
   (&key
    ((:pos __pos) 0.0)
    ((:speed __speed) 0.0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _pos (float __pos))
   (setq _speed (float __speed))
   (setq _force (float __force))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float32 _pos
    4
    ;; float32 _speed
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iai_wsg_50_msgs::PositionCmd :md5sum-) "e4b5784d0977ce480c64af4841d95d2f")
(setf (get iai_wsg_50_msgs::PositionCmd :datatype-) "iai_wsg_50_msgs/PositionCmd")
(setf (get iai_wsg_50_msgs::PositionCmd :definition-)
      "float32 pos
float32 speed
float32 force
")



(provide :iai_wsg_50_msgs/PositionCmd "e4b5784d0977ce480c64af4841d95d2f")


