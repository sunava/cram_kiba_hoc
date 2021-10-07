;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Step)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Step (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::STEP")
  (make-package "PLANNING_MSGS::STEP"))

(in-package "ROS")
;;//! \htmlinclude Step.msg.html


(defclass planning_msgs::Step
  :super ros::object
  :slots (_id _parent _type _pattern _call_pattern _bindings _score _duration ))

(defmethod planning_msgs::Step
  (:init
   (&key
    ((:id __id) 0)
    ((:parent __parent) 0)
    ((:type __type) "")
    ((:pattern __pattern) "")
    ((:call_pattern __call_pattern) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bindings __bindings) (let (r) (dotimes (i 0) (push (instance planning_msgs::Binding :init) r)) r))
    ((:score __score) 0.0)
    ((:duration __duration) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parent (round __parent))
   (setq _type (string __type))
   (setq _pattern (string __pattern))
   (setq _call_pattern __call_pattern)
   (setq _bindings __bindings)
   (setq _score (float __score))
   (setq _duration __duration)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parent
   (&optional __parent)
   (if __parent (setq _parent __parent)) _parent)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pattern
   (&optional __pattern)
   (if __pattern (setq _pattern __pattern)) _pattern)
  (:call_pattern
   (&optional __call_pattern)
   (if __call_pattern (setq _call_pattern __call_pattern)) _call_pattern)
  (:bindings
   (&rest __bindings)
   (if (keywordp (car __bindings))
       (send* _bindings __bindings)
     (progn
       (if __bindings (setq _bindings (car __bindings)))
       _bindings)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _parent
    4
    ;; string _type
    4 (length _type)
    ;; string _pattern
    4 (length _pattern)
    ;; string[] _call_pattern
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _call_pattern)) 4
    ;; planning_msgs/Binding[] _bindings
    (apply #'+ (send-all _bindings :serialization-length)) 4
    ;; float32 _score
    4
    ;; float32[] _duration
    (* 4    (length _duration)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _parent
       (write-long _parent s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _pattern
       (write-long (length _pattern) s) (princ _pattern s)
     ;; string[] _call_pattern
     (write-long (length _call_pattern) s)
     (dolist (elem _call_pattern)
       (write-long (length elem) s) (princ elem s)
       )
     ;; planning_msgs/Binding[] _bindings
     (write-long (length _bindings) s)
     (dolist (elem _bindings)
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
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parent
     (setq _parent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pattern
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pattern (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _call_pattern
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _call_pattern (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _call_pattern i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; planning_msgs/Binding[] _bindings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bindings (let (r) (dotimes (i n) (push (instance planning_msgs::Binding :init) r)) r))
     (dolist (elem- _bindings)
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

(setf (get planning_msgs::Step :md5sum-) "006ef20f0b34b2893a05e6bfad4c98c7")
(setf (get planning_msgs::Step :datatype-) "planning_msgs/Step")
(setf (get planning_msgs::Step :definition-)
      "int32 id
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



(provide :planning_msgs/Step "006ef20f0b34b2893a05e6bfad4c98c7")


