;; Auto-generated. Do not edit!


(when (boundp 'json_prolog_msgs::PrologNextSolution)
  (if (not (find-package "JSON_PROLOG_MSGS"))
    (make-package "JSON_PROLOG_MSGS"))
  (shadow 'PrologNextSolution (find-package "JSON_PROLOG_MSGS")))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTION")
  (make-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTION"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONREQUEST")
  (make-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONREQUEST"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE")
  (make-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))

(in-package "ROS")





(defclass json_prolog_msgs::PrologNextSolutionRequest
  :super ros::object
  :slots (_id ))

(defmethod json_prolog_msgs::PrologNextSolutionRequest
  (:init
   (&key
    ((:id __id) "")
    )
   (send-super :init)
   (setq _id (string __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*NO_SOLUTION*" (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(shadow '*NO_SOLUTION* (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(defconstant json_prolog_msgs::PrologNextSolutionResponse::*NO_SOLUTION* 0)
(intern "*WRONG_ID*" (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(shadow '*WRONG_ID* (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(defconstant json_prolog_msgs::PrologNextSolutionResponse::*WRONG_ID* 1)
(intern "*QUERY_FAILED*" (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(shadow '*QUERY_FAILED* (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(defconstant json_prolog_msgs::PrologNextSolutionResponse::*QUERY_FAILED* 2)
(intern "*OK*" (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(shadow '*OK* (find-package "JSON_PROLOG_MSGS::PROLOGNEXTSOLUTIONRESPONSE"))
(defconstant json_prolog_msgs::PrologNextSolutionResponse::*OK* 3)
(defclass json_prolog_msgs::PrologNextSolutionResponse
  :super ros::object
  :slots (_status _solution ))

(defmethod json_prolog_msgs::PrologNextSolutionResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:solution __solution) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _solution (string __solution))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:solution
   (&optional __solution)
   (if __solution (setq _solution __solution)) _solution)
  (:serialization-length
   ()
   (+
    ;; byte _status
    1
    ;; string _solution
    4 (length _solution)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _status
       (write-byte _status s)
     ;; string _solution
       (write-long (length _solution) s) (princ _solution s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _solution
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _solution (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass json_prolog_msgs::PrologNextSolution
  :super ros::object
  :slots ())

(setf (get json_prolog_msgs::PrologNextSolution :md5sum-) "b101f472df7bcb78cc53cd5a17ecbda9")
(setf (get json_prolog_msgs::PrologNextSolution :datatype-) "json_prolog_msgs/PrologNextSolution")
(setf (get json_prolog_msgs::PrologNextSolution :request) json_prolog_msgs::PrologNextSolutionRequest)
(setf (get json_prolog_msgs::PrologNextSolution :response) json_prolog_msgs::PrologNextSolutionResponse)

(defmethod json_prolog_msgs::PrologNextSolutionRequest
  (:response () (instance json_prolog_msgs::PrologNextSolutionResponse :init)))

(setf (get json_prolog_msgs::PrologNextSolutionRequest :md5sum-) "b101f472df7bcb78cc53cd5a17ecbda9")
(setf (get json_prolog_msgs::PrologNextSolutionRequest :datatype-) "json_prolog_msgs/PrologNextSolutionRequest")
(setf (get json_prolog_msgs::PrologNextSolutionRequest :definition-)
      "string id
---
byte NO_SOLUTION = 0
byte WRONG_ID = 1
byte QUERY_FAILED = 2
byte OK = 3

byte status
string solution

")

(setf (get json_prolog_msgs::PrologNextSolutionResponse :md5sum-) "b101f472df7bcb78cc53cd5a17ecbda9")
(setf (get json_prolog_msgs::PrologNextSolutionResponse :datatype-) "json_prolog_msgs/PrologNextSolutionResponse")
(setf (get json_prolog_msgs::PrologNextSolutionResponse :definition-)
      "string id
---
byte NO_SOLUTION = 0
byte WRONG_ID = 1
byte QUERY_FAILED = 2
byte OK = 3

byte status
string solution

")



(provide :json_prolog_msgs/PrologNextSolution "b101f472df7bcb78cc53cd5a17ecbda9")


