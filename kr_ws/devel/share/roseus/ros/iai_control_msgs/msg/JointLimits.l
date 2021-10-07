;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::JointLimits)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'JointLimits (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::JOINTLIMITS")
  (make-package "IAI_CONTROL_MSGS::JOINTLIMITS"))

(in-package "ROS")
;;//! \htmlinclude JointLimits.msg.html


(defclass iai_control_msgs::JointLimits
  :super ros::object
  :slots (_joint_names _limits_lower _limits_upper _current_position _dist_to_lower _dist_to_upper _dist_to_closer ))

(defmethod iai_control_msgs::JointLimits
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limits_lower __limits_lower) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:limits_upper __limits_upper) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_position __current_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dist_to_lower __dist_to_lower) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dist_to_upper __dist_to_upper) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dist_to_closer __dist_to_closer) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _limits_lower __limits_lower)
   (setq _limits_upper __limits_upper)
   (setq _current_position __current_position)
   (setq _dist_to_lower __dist_to_lower)
   (setq _dist_to_upper __dist_to_upper)
   (setq _dist_to_closer __dist_to_closer)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:limits_lower
   (&optional __limits_lower)
   (if __limits_lower (setq _limits_lower __limits_lower)) _limits_lower)
  (:limits_upper
   (&optional __limits_upper)
   (if __limits_upper (setq _limits_upper __limits_upper)) _limits_upper)
  (:current_position
   (&optional __current_position)
   (if __current_position (setq _current_position __current_position)) _current_position)
  (:dist_to_lower
   (&optional __dist_to_lower)
   (if __dist_to_lower (setq _dist_to_lower __dist_to_lower)) _dist_to_lower)
  (:dist_to_upper
   (&optional __dist_to_upper)
   (if __dist_to_upper (setq _dist_to_upper __dist_to_upper)) _dist_to_upper)
  (:dist_to_closer
   (&optional __dist_to_closer)
   (if __dist_to_closer (setq _dist_to_closer __dist_to_closer)) _dist_to_closer)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _limits_lower
    (* 8    (length _limits_lower)) 4
    ;; float64[] _limits_upper
    (* 8    (length _limits_upper)) 4
    ;; float64[] _current_position
    (* 8    (length _current_position)) 4
    ;; float64[] _dist_to_lower
    (* 8    (length _dist_to_lower)) 4
    ;; float64[] _dist_to_upper
    (* 8    (length _dist_to_upper)) 4
    ;; float64[] _dist_to_closer
    (* 8    (length _dist_to_closer)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _limits_lower
     (write-long (length _limits_lower) s)
     (dotimes (i (length _limits_lower))
       (sys::poke (elt _limits_lower i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _limits_upper
     (write-long (length _limits_upper) s)
     (dotimes (i (length _limits_upper))
       (sys::poke (elt _limits_upper i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _current_position
     (write-long (length _current_position) s)
     (dotimes (i (length _current_position))
       (sys::poke (elt _current_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dist_to_lower
     (write-long (length _dist_to_lower) s)
     (dotimes (i (length _dist_to_lower))
       (sys::poke (elt _dist_to_lower i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dist_to_upper
     (write-long (length _dist_to_upper) s)
     (dotimes (i (length _dist_to_upper))
       (sys::poke (elt _dist_to_upper i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dist_to_closer
     (write-long (length _dist_to_closer) s)
     (dotimes (i (length _dist_to_closer))
       (sys::poke (elt _dist_to_closer i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _limits_lower
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limits_lower (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _limits_lower i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _limits_upper
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limits_upper (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _limits_upper i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _current_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dist_to_lower
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dist_to_lower (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dist_to_lower i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dist_to_upper
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dist_to_upper (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dist_to_upper i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dist_to_closer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dist_to_closer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dist_to_closer i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get iai_control_msgs::JointLimits :md5sum-) "0da633688836e6915588ad2b309323f6")
(setf (get iai_control_msgs::JointLimits :datatype-) "iai_control_msgs/JointLimits")
(setf (get iai_control_msgs::JointLimits :definition-)
      "string[] joint_names
float64[] limits_lower
float64[] limits_upper
float64[] current_position
float64[] dist_to_lower
float64[] dist_to_upper
float64[] dist_to_closer


")



(provide :iai_control_msgs/JointLimits "0da633688836e6915588ad2b309323f6")


