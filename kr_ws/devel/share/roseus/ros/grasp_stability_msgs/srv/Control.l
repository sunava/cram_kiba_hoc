;; Auto-generated. Do not edit!


(when (boundp 'grasp_stability_msgs::Control)
  (if (not (find-package "GRASP_STABILITY_MSGS"))
    (make-package "GRASP_STABILITY_MSGS"))
  (shadow 'Control (find-package "GRASP_STABILITY_MSGS")))
(unless (find-package "GRASP_STABILITY_MSGS::CONTROL")
  (make-package "GRASP_STABILITY_MSGS::CONTROL"))
(unless (find-package "GRASP_STABILITY_MSGS::CONTROLREQUEST")
  (make-package "GRASP_STABILITY_MSGS::CONTROLREQUEST"))
(unless (find-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE")
  (make-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE"))

(in-package "ROS")





(intern "*CTRL_START*" (find-package "GRASP_STABILITY_MSGS::CONTROLREQUEST"))
(shadow '*CTRL_START* (find-package "GRASP_STABILITY_MSGS::CONTROLREQUEST"))
(defconstant grasp_stability_msgs::ControlRequest::*CTRL_START* 0)
(intern "*CTRL_STOP*" (find-package "GRASP_STABILITY_MSGS::CONTROLREQUEST"))
(shadow '*CTRL_STOP* (find-package "GRASP_STABILITY_MSGS::CONTROLREQUEST"))
(defconstant grasp_stability_msgs::ControlRequest::*CTRL_STOP* 1)
(defclass grasp_stability_msgs::ControlRequest
  :super ros::object
  :slots (_command _measurement_context_id ))

(defmethod grasp_stability_msgs::ControlRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:measurement_context_id __measurement_context_id) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _measurement_context_id (string __measurement_context_id))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:measurement_context_id
   (&optional __measurement_context_id)
   (if __measurement_context_id (setq _measurement_context_id __measurement_context_id)) _measurement_context_id)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; string _measurement_context_id
    4 (length _measurement_context_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; string _measurement_context_id
       (write-long (length _measurement_context_id) s) (princ _measurement_context_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _measurement_context_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _measurement_context_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*FAILURE*" (find-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE"))
(shadow '*FAILURE* (find-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE"))
(defconstant grasp_stability_msgs::ControlResponse::*FAILURE* 0)
(intern "*SUCCESS*" (find-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE"))
(shadow '*SUCCESS* (find-package "GRASP_STABILITY_MSGS::CONTROLRESPONSE"))
(defconstant grasp_stability_msgs::ControlResponse::*SUCCESS* 1)
(defclass grasp_stability_msgs::ControlResponse
  :super ros::object
  :slots (_result ))

(defmethod grasp_stability_msgs::ControlResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass grasp_stability_msgs::Control
  :super ros::object
  :slots ())

(setf (get grasp_stability_msgs::Control :md5sum-) "bf72fbddb94b79305e5d568733fc59be")
(setf (get grasp_stability_msgs::Control :datatype-) "grasp_stability_msgs/Control")
(setf (get grasp_stability_msgs::Control :request) grasp_stability_msgs::ControlRequest)
(setf (get grasp_stability_msgs::Control :response) grasp_stability_msgs::ControlResponse)

(defmethod grasp_stability_msgs::ControlRequest
  (:response () (instance grasp_stability_msgs::ControlResponse :init)))

(setf (get grasp_stability_msgs::ControlRequest :md5sum-) "bf72fbddb94b79305e5d568733fc59be")
(setf (get grasp_stability_msgs::ControlRequest :datatype-) "grasp_stability_msgs/ControlRequest")
(setf (get grasp_stability_msgs::ControlRequest :definition-)
      "int32 CTRL_START=0
int32 CTRL_STOP=1
int32 command
string measurement_context_id
---
int32 FAILURE=0
int32 SUCCESS=1
int32 result
")

(setf (get grasp_stability_msgs::ControlResponse :md5sum-) "bf72fbddb94b79305e5d568733fc59be")
(setf (get grasp_stability_msgs::ControlResponse :datatype-) "grasp_stability_msgs/ControlResponse")
(setf (get grasp_stability_msgs::ControlResponse :definition-)
      "int32 CTRL_START=0
int32 CTRL_STOP=1
int32 command
string measurement_context_id
---
int32 FAILURE=0
int32 SUCCESS=1
int32 result
")



(provide :grasp_stability_msgs/Control "bf72fbddb94b79305e5d568733fc59be")


