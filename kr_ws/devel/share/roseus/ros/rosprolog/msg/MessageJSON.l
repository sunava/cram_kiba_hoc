;; Auto-generated. Do not edit!


(when (boundp 'rosprolog::MessageJSON)
  (if (not (find-package "ROSPROLOG"))
    (make-package "ROSPROLOG"))
  (shadow 'MessageJSON (find-package "ROSPROLOG")))
(unless (find-package "ROSPROLOG::MESSAGEJSON")
  (make-package "ROSPROLOG::MESSAGEJSON"))

(in-package "ROS")
;;//! \htmlinclude MessageJSON.msg.html


(defclass rosprolog::MessageJSON
  :super ros::object
  :slots (_topic_name _json_data ))

(defmethod rosprolog::MessageJSON
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:json_data __json_data) "")
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _json_data (string __json_data))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:json_data
   (&optional __json_data)
   (if __json_data (setq _json_data __json_data)) _json_data)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _json_data
    4 (length _json_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _json_data
       (write-long (length _json_data) s) (princ _json_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _json_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rosprolog::MessageJSON :md5sum-) "857e02159eb61b757a9aeb0effde4aa9")
(setf (get rosprolog::MessageJSON :datatype-) "rosprolog/MessageJSON")
(setf (get rosprolog::MessageJSON :definition-)
      "
string topic_name
string json_data

")



(provide :rosprolog/MessageJSON "857e02159eb61b757a9aeb0effde4aa9")


