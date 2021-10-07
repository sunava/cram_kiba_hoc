;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Planning)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Planning (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANNING")
  (make-package "PLANNING_MSGS::PLANNING"))
(unless (find-package "PLANNING_MSGS::PLANNINGREQUEST")
  (make-package "PLANNING_MSGS::PLANNINGREQUEST"))
(unless (find-package "PLANNING_MSGS::PLANNINGRESPONSE")
  (make-package "PLANNING_MSGS::PLANNINGRESPONSE"))

(in-package "ROS")





(intern "*OSPT*" (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(shadow '*OSPT* (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(defconstant planning_msgs::PlanningRequest::*OSPT* "\"ospt\"")
(intern "*PSPT*" (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(shadow '*PSPT* (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(defconstant planning_msgs::PlanningRequest::*PSPT* "\"pspt\"")
(intern "*LPFO*" (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(shadow '*LPFO* (find-package "PLANNING_MSGS::PLANNINGREQUEST"))
(defconstant planning_msgs::PlanningRequest::*LPFO* "\"lpfo\"")
(defclass planning_msgs::PlanningRequest
  :super ros::object
  :slots (_pattern _bindings _scoring_methods ))

(defmethod planning_msgs::PlanningRequest
  (:init
   (&key
    ((:pattern __pattern) "")
    ((:bindings __bindings) (let (r) (dotimes (i 0) (push (instance planning_msgs::Binding :init) r)) r))
    ((:scoring_methods __scoring_methods) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _pattern (string __pattern))
   (setq _bindings __bindings)
   (setq _scoring_methods __scoring_methods)
   self)
  (:pattern
   (&optional __pattern)
   (if __pattern (setq _pattern __pattern)) _pattern)
  (:bindings
   (&rest __bindings)
   (if (keywordp (car __bindings))
       (send* _bindings __bindings)
     (progn
       (if __bindings (setq _bindings (car __bindings)))
       _bindings)))
  (:scoring_methods
   (&optional __scoring_methods)
   (if __scoring_methods (setq _scoring_methods __scoring_methods)) _scoring_methods)
  (:serialization-length
   ()
   (+
    ;; string _pattern
    4 (length _pattern)
    ;; planning_msgs/Binding[] _bindings
    (apply #'+ (send-all _bindings :serialization-length)) 4
    ;; string[] _scoring_methods
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _scoring_methods)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pattern
       (write-long (length _pattern) s) (princ _pattern s)
     ;; planning_msgs/Binding[] _bindings
     (write-long (length _bindings) s)
     (dolist (elem _bindings)
       (send elem :serialize s)
       )
     ;; string[] _scoring_methods
     (write-long (length _scoring_methods) s)
     (dolist (elem _scoring_methods)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pattern
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pattern (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; planning_msgs/Binding[] _bindings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bindings (let (r) (dotimes (i n) (push (instance planning_msgs::Binding :init) r)) r))
     (dolist (elem- _bindings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _scoring_methods
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scoring_methods (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _scoring_methods i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass planning_msgs::PlanningResponse
  :super ros::object
  :slots (_plans _unused_bindings ))

(defmethod planning_msgs::PlanningResponse
  (:init
   (&key
    ((:plans __plans) (let (r) (dotimes (i 0) (push (instance planning_msgs::Plan :init) r)) r))
    ((:unused_bindings __unused_bindings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _plans __plans)
   (setq _unused_bindings __unused_bindings)
   self)
  (:plans
   (&rest __plans)
   (if (keywordp (car __plans))
       (send* _plans __plans)
     (progn
       (if __plans (setq _plans (car __plans)))
       _plans)))
  (:unused_bindings
   (&optional __unused_bindings)
   (if __unused_bindings (setq _unused_bindings __unused_bindings)) _unused_bindings)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Plan[] _plans
    (apply #'+ (send-all _plans :serialization-length)) 4
    ;; string[] _unused_bindings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _unused_bindings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Plan[] _plans
     (write-long (length _plans) s)
     (dolist (elem _plans)
       (send elem :serialize s)
       )
     ;; string[] _unused_bindings
     (write-long (length _unused_bindings) s)
     (dolist (elem _unused_bindings)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Plan[] _plans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plans (let (r) (dotimes (i n) (push (instance planning_msgs::Plan :init) r)) r))
     (dolist (elem- _plans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _unused_bindings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unused_bindings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _unused_bindings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass planning_msgs::Planning
  :super ros::object
  :slots ())

(setf (get planning_msgs::Planning :md5sum-) "63b30a5b2209d6af2bdcdcf4940aca3f")
(setf (get planning_msgs::Planning :datatype-) "planning_msgs/Planning")
(setf (get planning_msgs::Planning :request) planning_msgs::PlanningRequest)
(setf (get planning_msgs::Planning :response) planning_msgs::PlanningResponse)

(defmethod planning_msgs::PlanningRequest
  (:response () (instance planning_msgs::PlanningResponse :init)))

(setf (get planning_msgs::PlanningRequest :md5sum-) "63b30a5b2209d6af2bdcdcf4940aca3f")
(setf (get planning_msgs::PlanningRequest :datatype-) "planning_msgs/PlanningRequest")
(setf (get planning_msgs::PlanningRequest :definition-)
      "# Scoring methods
string OSPT=\"ospt\"
string PSPT=\"pspt\"
string LPFO=\"lpfo\"

# Request fields
string pattern
Binding[] bindings
string[] scoring_methods

================================================================================
MSG: planning_msgs/Binding
# Constants for determining the datatype encapsulated in the `value` string
int32 STRING=0
int32 INT=1
int32 FLOAT=2
int32 SYMBOL=3

# The actual fields
int32 type
string key
string value
---
# Response fields
Plan[] plans
string[] unused_bindings


================================================================================
MSG: planning_msgs/Plan
Step[] steps

# This score is the same as the root step's score; placing it here as
# well out of convience reasons for the receiving node.
float32 score
float32[] duration

================================================================================
MSG: planning_msgs/Step
int32 id
int32 parent
string type
string pattern
string[] call_pattern
Binding[] bindings
float32 score
float32[] duration
================================================================================
MSG: planning_msgs/Binding
# Constants for determining the datatype encapsulated in the `value` string
int32 STRING=0
int32 INT=1
int32 FLOAT=2
int32 SYMBOL=3

# The actual fields
int32 type
string key
string value
")

(setf (get planning_msgs::PlanningResponse :md5sum-) "63b30a5b2209d6af2bdcdcf4940aca3f")
(setf (get planning_msgs::PlanningResponse :datatype-) "planning_msgs/PlanningResponse")
(setf (get planning_msgs::PlanningResponse :definition-)
      "# Scoring methods
string OSPT=\"ospt\"
string PSPT=\"pspt\"
string LPFO=\"lpfo\"

# Request fields
string pattern
Binding[] bindings
string[] scoring_methods

================================================================================
MSG: planning_msgs/Binding
# Constants for determining the datatype encapsulated in the `value` string
int32 STRING=0
int32 INT=1
int32 FLOAT=2
int32 SYMBOL=3

# The actual fields
int32 type
string key
string value
---
# Response fields
Plan[] plans
string[] unused_bindings


================================================================================
MSG: planning_msgs/Plan
Step[] steps

# This score is the same as the root step's score; placing it here as
# well out of convience reasons for the receiving node.
float32 score
float32[] duration

================================================================================
MSG: planning_msgs/Step
int32 id
int32 parent
string type
string pattern
string[] call_pattern
Binding[] bindings
float32 score
float32[] duration
================================================================================
MSG: planning_msgs/Binding
# Constants for determining the datatype encapsulated in the `value` string
int32 STRING=0
int32 INT=1
int32 FLOAT=2
int32 SYMBOL=3

# The actual fields
int32 type
string key
string value
")



(provide :planning_msgs/Planning "63b30a5b2209d6af2bdcdcf4940aca3f")


