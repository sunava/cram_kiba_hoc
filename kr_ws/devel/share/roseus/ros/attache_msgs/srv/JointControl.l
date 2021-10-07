;; Auto-generated. Do not edit!


(when (boundp 'attache_msgs::JointControl)
  (if (not (find-package "ATTACHE_MSGS"))
    (make-package "ATTACHE_MSGS"))
  (shadow 'JointControl (find-package "ATTACHE_MSGS")))
(unless (find-package "ATTACHE_MSGS::JOINTCONTROL")
  (make-package "ATTACHE_MSGS::JOINTCONTROL"))
(unless (find-package "ATTACHE_MSGS::JOINTCONTROLREQUEST")
  (make-package "ATTACHE_MSGS::JOINTCONTROLREQUEST"))
(unless (find-package "ATTACHE_MSGS::JOINTCONTROLRESPONSE")
  (make-package "ATTACHE_MSGS::JOINTCONTROLRESPONSE"))

(in-package "ROS")





(defclass attache_msgs::JointControlRequest
  :super ros::object
  :slots (_model _joint _position _hold_position ))

(defmethod attache_msgs::JointControlRequest
  (:init
   (&key
    ((:model __model) "")
    ((:joint __joint) "")
    ((:position __position) 0.0)
    ((:hold_position __hold_position) nil)
    )
   (send-super :init)
   (setq _model (string __model))
   (setq _joint (string __joint))
   (setq _position (float __position))
   (setq _hold_position __hold_position)
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:hold_position
   (&optional __hold_position)
   (if __hold_position (setq _hold_position __hold_position)) _hold_position)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ;; string _joint
    4 (length _joint)
    ;; float32 _position
    4
    ;; bool _hold_position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _hold_position
       (if _hold_position (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _hold_position
     (setq _hold_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass attache_msgs::JointControlResponse
  :super ros::object
  :slots (_success ))

(defmethod attache_msgs::JointControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass attache_msgs::JointControl
  :super ros::object
  :slots ())

(setf (get attache_msgs::JointControl :md5sum-) "a612aff16b21bbbc8123bb6dd90ae211")
(setf (get attache_msgs::JointControl :datatype-) "attache_msgs/JointControl")
(setf (get attache_msgs::JointControl :request) attache_msgs::JointControlRequest)
(setf (get attache_msgs::JointControl :response) attache_msgs::JointControlResponse)

(defmethod attache_msgs::JointControlRequest
  (:response () (instance attache_msgs::JointControlResponse :init)))

(setf (get attache_msgs::JointControlRequest :md5sum-) "a612aff16b21bbbc8123bb6dd90ae211")
(setf (get attache_msgs::JointControlRequest :datatype-) "attache_msgs/JointControlRequest")
(setf (get attache_msgs::JointControlRequest :definition-)
      "string model
string joint
float32 position
bool hold_position
---
bool success

")

(setf (get attache_msgs::JointControlResponse :md5sum-) "a612aff16b21bbbc8123bb6dd90ae211")
(setf (get attache_msgs::JointControlResponse :datatype-) "attache_msgs/JointControlResponse")
(setf (get attache_msgs::JointControlResponse :definition-)
      "string model
string joint
float32 position
bool hold_position
---
bool success

")



(provide :attache_msgs/JointControl "a612aff16b21bbbc8123bb6dd90ae211")


