;; Auto-generated. Do not edit!


(when (boundp 'attache_msgs::JointInformation)
  (if (not (find-package "ATTACHE_MSGS"))
    (make-package "ATTACHE_MSGS"))
  (shadow 'JointInformation (find-package "ATTACHE_MSGS")))
(unless (find-package "ATTACHE_MSGS::JOINTINFORMATION")
  (make-package "ATTACHE_MSGS::JOINTINFORMATION"))
(unless (find-package "ATTACHE_MSGS::JOINTINFORMATIONREQUEST")
  (make-package "ATTACHE_MSGS::JOINTINFORMATIONREQUEST"))
(unless (find-package "ATTACHE_MSGS::JOINTINFORMATIONRESPONSE")
  (make-package "ATTACHE_MSGS::JOINTINFORMATIONRESPONSE"))

(in-package "ROS")





(defclass attache_msgs::JointInformationRequest
  :super ros::object
  :slots (_model _joint ))

(defmethod attache_msgs::JointInformationRequest
  (:init
   (&key
    ((:model __model) "")
    ((:joint __joint) "")
    )
   (send-super :init)
   (setq _model (string __model))
   (setq _joint (string __joint))
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ;; string _joint
    4 (length _joint)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass attache_msgs::JointInformationResponse
  :super ros::object
  :slots (_success _position _min _max ))

(defmethod attache_msgs::JointInformationResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:position __position) 0.0)
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _position (float __position))
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32 _position
    4
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass attache_msgs::JointInformation
  :super ros::object
  :slots ())

(setf (get attache_msgs::JointInformation :md5sum-) "dfe961022f062be71a8d5fe97f8cfbcc")
(setf (get attache_msgs::JointInformation :datatype-) "attache_msgs/JointInformation")
(setf (get attache_msgs::JointInformation :request) attache_msgs::JointInformationRequest)
(setf (get attache_msgs::JointInformation :response) attache_msgs::JointInformationResponse)

(defmethod attache_msgs::JointInformationRequest
  (:response () (instance attache_msgs::JointInformationResponse :init)))

(setf (get attache_msgs::JointInformationRequest :md5sum-) "dfe961022f062be71a8d5fe97f8cfbcc")
(setf (get attache_msgs::JointInformationRequest :datatype-) "attache_msgs/JointInformationRequest")
(setf (get attache_msgs::JointInformationRequest :definition-)
      "string model
string joint
---
bool success
float32 position
float32 min
float32 max

")

(setf (get attache_msgs::JointInformationResponse :md5sum-) "dfe961022f062be71a8d5fe97f8cfbcc")
(setf (get attache_msgs::JointInformationResponse :datatype-) "attache_msgs/JointInformationResponse")
(setf (get attache_msgs::JointInformationResponse :definition-)
      "string model
string joint
---
bool success
float32 position
float32 min
float32 max

")



(provide :attache_msgs/JointInformation "dfe961022f062be71a8d5fe97f8cfbcc")


