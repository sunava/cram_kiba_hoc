;; Auto-generated. Do not edit!


(when (boundp 'rosprolog::JSONWrapper)
  (if (not (find-package "ROSPROLOG"))
    (make-package "ROSPROLOG"))
  (shadow 'JSONWrapper (find-package "ROSPROLOG")))
(unless (find-package "ROSPROLOG::JSONWRAPPER")
  (make-package "ROSPROLOG::JSONWRAPPER"))
(unless (find-package "ROSPROLOG::JSONWRAPPERREQUEST")
  (make-package "ROSPROLOG::JSONWRAPPERREQUEST"))
(unless (find-package "ROSPROLOG::JSONWRAPPERRESPONSE")
  (make-package "ROSPROLOG::JSONWRAPPERRESPONSE"))

(in-package "ROS")





(defclass rosprolog::JSONWrapperRequest
  :super ros::object
  :slots (_mode _json_data ))

(defmethod rosprolog::JSONWrapperRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:json_data __json_data) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _json_data (string __json_data))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:json_data
   (&optional __json_data)
   (if __json_data (setq _json_data __json_data)) _json_data)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; string _json_data
    4 (length _json_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _json_data
       (write-long (length _json_data) s) (princ _json_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _json_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosprolog::JSONWrapperResponse
  :super ros::object
  :slots (_json_data ))

(defmethod rosprolog::JSONWrapperResponse
  (:init
   (&key
    ((:json_data __json_data) "")
    )
   (send-super :init)
   (setq _json_data (string __json_data))
   self)
  (:json_data
   (&optional __json_data)
   (if __json_data (setq _json_data __json_data)) _json_data)
  (:serialization-length
   ()
   (+
    ;; string _json_data
    4 (length _json_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _json_data
       (write-long (length _json_data) s) (princ _json_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _json_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosprolog::JSONWrapper
  :super ros::object
  :slots ())

(setf (get rosprolog::JSONWrapper :md5sum-) "711a21c0da0464ac74bbc6e6331ef069")
(setf (get rosprolog::JSONWrapper :datatype-) "rosprolog/JSONWrapper")
(setf (get rosprolog::JSONWrapper :request) rosprolog::JSONWrapperRequest)
(setf (get rosprolog::JSONWrapper :response) rosprolog::JSONWrapperResponse)

(defmethod rosprolog::JSONWrapperRequest
  (:response () (instance rosprolog::JSONWrapperResponse :init)))

(setf (get rosprolog::JSONWrapperRequest :md5sum-) "711a21c0da0464ac74bbc6e6331ef069")
(setf (get rosprolog::JSONWrapperRequest :datatype-) "rosprolog/JSONWrapperRequest")
(setf (get rosprolog::JSONWrapperRequest :definition-)
      "string mode
string json_data
---
string json_data

")

(setf (get rosprolog::JSONWrapperResponse :md5sum-) "711a21c0da0464ac74bbc6e6331ef069")
(setf (get rosprolog::JSONWrapperResponse :datatype-) "rosprolog/JSONWrapperResponse")
(setf (get rosprolog::JSONWrapperResponse :definition-)
      "string mode
string json_data
---
string json_data

")



(provide :rosprolog/JSONWrapper "711a21c0da0464ac74bbc6e6331ef069")


