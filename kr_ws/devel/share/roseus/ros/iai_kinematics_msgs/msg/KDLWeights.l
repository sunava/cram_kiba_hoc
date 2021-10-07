;; Auto-generated. Do not edit!


(when (boundp 'iai_kinematics_msgs::KDLWeights)
  (if (not (find-package "IAI_KINEMATICS_MSGS"))
    (make-package "IAI_KINEMATICS_MSGS"))
  (shadow 'KDLWeights (find-package "IAI_KINEMATICS_MSGS")))
(unless (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS")
  (make-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))

(in-package "ROS")
;;//! \htmlinclude KDLWeights.msg.html


(intern "*INVALID_MODE*" (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(shadow '*INVALID_MODE* (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(defconstant iai_kinematics_msgs::KDLWeights::*INVALID_MODE* 0)
(intern "*SET_TS*" (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(shadow '*SET_TS* (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(defconstant iai_kinematics_msgs::KDLWeights::*SET_TS* 1)
(intern "*SET_JS*" (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(shadow '*SET_JS* (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(defconstant iai_kinematics_msgs::KDLWeights::*SET_JS* 2)
(intern "*SET_LAMBDA*" (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(shadow '*SET_LAMBDA* (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(defconstant iai_kinematics_msgs::KDLWeights::*SET_LAMBDA* 4)
(intern "*SET_TS_JS*" (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(shadow '*SET_TS_JS* (find-package "IAI_KINEMATICS_MSGS::KDLWEIGHTS"))
(defconstant iai_kinematics_msgs::KDLWeights::*SET_TS_JS* 3)
(defclass iai_kinematics_msgs::KDLWeights
  :super ros::object
  :slots (_mode _weight_ts _weight_js _lambda ))

(defmethod iai_kinematics_msgs::KDLWeights
  (:init
   (&key
    ((:mode __mode) 0)
    ((:weight_ts __weight_ts) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:weight_js __weight_js) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lambda __lambda) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _weight_ts __weight_ts)
   (setq _weight_js __weight_js)
   (setq _lambda (float __lambda))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:weight_ts
   (&optional __weight_ts)
   (if __weight_ts (setq _weight_ts __weight_ts)) _weight_ts)
  (:weight_js
   (&optional __weight_js)
   (if __weight_js (setq _weight_js __weight_js)) _weight_js)
  (:lambda
   (&optional __lambda)
   (if __lambda (setq _lambda __lambda)) _lambda)
  (:serialization-length
   ()
   (+
    ;; byte _mode
    1
    ;; float64[36] _weight_ts
    (* 8    36)
    ;; float64[] _weight_js
    (* 8    (length _weight_js)) 4
    ;; float64 _lambda
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _mode
       (write-byte _mode s)
     ;; float64[36] _weight_ts
     (dotimes (i 36)
       (sys::poke (elt _weight_ts i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _weight_js
     (write-long (length _weight_js) s)
     (dotimes (i (length _weight_js))
       (sys::poke (elt _weight_js i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _lambda
       (sys::poke _lambda (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; float64[36] _weight_ts
   (dotimes (i (length _weight_ts))
     (setf (elt _weight_ts i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[] _weight_js
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weight_js (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weight_js i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _lambda
     (setq _lambda (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get iai_kinematics_msgs::KDLWeights :md5sum-) "986315cd29a99987092b708377dfd2ce")
(setf (get iai_kinematics_msgs::KDLWeights :datatype-) "iai_kinematics_msgs/KDLWeights")
(setf (get iai_kinematics_msgs::KDLWeights :definition-)
      "byte INVALID_MODE = 0
byte SET_TS = 1
byte SET_JS = 2
byte SET_LAMBDA = 4
byte SET_TS_JS = 3

byte mode                  # or-combination of values to set
float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order
float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order
float64 lambda             # Lambda value

")



(provide :iai_kinematics_msgs/KDLWeights "986315cd29a99987092b708377dfd2ce")


