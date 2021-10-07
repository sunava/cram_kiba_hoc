;; Auto-generated. Do not edit!


(when (boundp 'knowrob::EventToken)
  (if (not (find-package "KNOWROB"))
    (make-package "KNOWROB"))
  (shadow 'EventToken (find-package "KNOWROB")))
(unless (find-package "KNOWROB::EVENTTOKEN")
  (make-package "KNOWROB::EVENTTOKEN"))

(in-package "ROS")
;;//! \htmlinclude EventToken.msg.html


(intern "*EVENT_BEGIN*" (find-package "KNOWROB::EVENTTOKEN"))
(shadow '*EVENT_BEGIN* (find-package "KNOWROB::EVENTTOKEN"))
(defconstant knowrob::EventToken::*EVENT_BEGIN* 0)
(intern "*EVENT_END*" (find-package "KNOWROB::EVENTTOKEN"))
(shadow '*EVENT_END* (find-package "KNOWROB::EVENTTOKEN"))
(defconstant knowrob::EventToken::*EVENT_END* 1)
(defclass knowrob::EventToken
  :super ros::object
  :slots (_timestamp _polarization _event_type _participants ))

(defmethod knowrob::EventToken
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:polarization __polarization) 0)
    ((:event_type __event_type) "")
    ((:participants __participants) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _polarization (round __polarization))
   (setq _event_type (string __event_type))
   (setq _participants __participants)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:polarization
   (&optional __polarization)
   (if __polarization (setq _polarization __polarization)) _polarization)
  (:event_type
   (&optional __event_type)
   (if __event_type (setq _event_type __event_type)) _event_type)
  (:participants
   (&optional __participants)
   (if __participants (setq _participants __participants)) _participants)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int32 _polarization
    4
    ;; string _event_type
    4 (length _event_type)
    ;; string[] _participants
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _participants)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _polarization
       (write-long _polarization s)
     ;; string _event_type
       (write-long (length _event_type) s) (princ _event_type s)
     ;; string[] _participants
     (write-long (length _participants) s)
     (dolist (elem _participants)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _polarization
     (setq _polarization (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _event_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _participants
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _participants (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _participants i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get knowrob::EventToken :md5sum-) "ef1605ad2e6ea74763902600ec3f2947")
(setf (get knowrob::EventToken :datatype-) "knowrob/EventToken")
(setf (get knowrob::EventToken :definition-)
      "
uint8 EVENT_BEGIN=0
uint8 EVENT_END=1

float64 timestamp
int32 polarization
string event_type
string[] participants

")



(provide :knowrob/EventToken "ef1605ad2e6ea74763902600ec3f2947")


