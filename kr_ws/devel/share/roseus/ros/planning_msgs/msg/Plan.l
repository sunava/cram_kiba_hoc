;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Plan)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Plan (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLAN")
  (make-package "PLANNING_MSGS::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html


(defclass planning_msgs::Plan
  :super ros::object
  :slots (_steps _score _duration ))

(defmethod planning_msgs::Plan
  (:init
   (&key
    ((:steps __steps) (let (r) (dotimes (i 0) (push (instance planning_msgs::Step :init) r)) r))
    ((:score __score) 0.0)
    ((:duration __duration) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _steps __steps)
   (setq _score (float __score))
   (setq _duration __duration)
   self)
  (:steps
   (&rest __steps)
   (if (keywordp (car __steps))
       (send* _steps __steps)
     (progn
       (if __steps (setq _steps (car __steps)))
       _steps)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Step[] _steps
    (apply #'+ (send-all _steps :serialization-length)) 4
    ;; float32 _score
    4
    ;; float32[] _duration
    (* 4    (length _duration)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Step[] _steps
     (write-long (length _steps) s)
     (dolist (elem _steps)
       (send elem :serialize s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _duration
     (write-long (length _duration) s)
     (dotimes (i (length _duration))
       (sys::poke (elt _duration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Step[] _steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steps (let (r) (dotimes (i n) (push (instance planning_msgs::Step :init) r)) r))
     (dolist (elem- _steps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _duration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _duration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _duration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get planning_msgs::Plan :md5sum-) "4b01f5f5f81e029aa892db42087b5828")
(setf (get planning_msgs::Plan :datatype-) "planning_msgs/Plan")
(setf (get planning_msgs::Plan :definition-)
      "Step[] steps

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



(provide :planning_msgs/Plan "4b01f5f5f81e029aa892db42087b5828")


