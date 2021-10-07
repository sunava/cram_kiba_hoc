;; Auto-generated. Do not edit!


(when (boundp 'data_vis_msgs::Speech)
  (if (not (find-package "DATA_VIS_MSGS"))
    (make-package "DATA_VIS_MSGS"))
  (shadow 'Speech (find-package "DATA_VIS_MSGS")))
(unless (find-package "DATA_VIS_MSGS::SPEECH")
  (make-package "DATA_VIS_MSGS::SPEECH"))

(in-package "ROS")
;;//! \htmlinclude Speech.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass data_vis_msgs::Speech
  :super ros::object
  :slots (_id _text _position _duration ))

(defmethod data_vis_msgs::Speech
  (:init
   (&key
    ((:id __id) "")
    ((:text __text) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _text (string __text))
   (setq _position __position)
   (setq _duration (round __duration))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _text
    4 (length _text)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get data_vis_msgs::Speech :md5sum-) "ce7f1848aa293898a23f5324fdb08f4b")
(setf (get data_vis_msgs::Speech :datatype-) "data_vis_msgs/Speech")
(setf (get data_vis_msgs::Speech :definition-)
      "
string id
string text
geometry_msgs/Point position
int32 duration

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :data_vis_msgs/Speech "ce7f1848aa293898a23f5324fdb08f4b")


