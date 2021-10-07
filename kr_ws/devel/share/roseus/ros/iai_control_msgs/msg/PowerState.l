;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::PowerState)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'PowerState (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::POWERSTATE")
  (make-package "IAI_CONTROL_MSGS::POWERSTATE"))

(in-package "ROS")
;;//! \htmlinclude PowerState.msg.html


(defclass iai_control_msgs::PowerState
  :super ros::object
  :slots (_name _enabled ))

(defmethod iai_control_msgs::PowerState
  (:init
   (&key
    ((:name __name) "")
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _enabled __enabled)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iai_control_msgs::PowerState :md5sum-) "0a25a4ba6b569752be722a73fae9c6c7")
(setf (get iai_control_msgs::PowerState :datatype-) "iai_control_msgs/PowerState")
(setf (get iai_control_msgs::PowerState :definition-)
      "string name  # name of the relay / actuator 
bool enabled # whether the relay is closed / the actuator has power

")



(provide :iai_control_msgs/PowerState "0a25a4ba6b569752be722a73fae9c6c7")


