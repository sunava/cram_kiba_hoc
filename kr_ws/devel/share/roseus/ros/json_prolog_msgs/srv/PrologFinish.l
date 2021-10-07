;; Auto-generated. Do not edit!


(when (boundp 'json_prolog_msgs::PrologFinish)
  (if (not (find-package "JSON_PROLOG_MSGS"))
    (make-package "JSON_PROLOG_MSGS"))
  (shadow 'PrologFinish (find-package "JSON_PROLOG_MSGS")))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGFINISH")
  (make-package "JSON_PROLOG_MSGS::PROLOGFINISH"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGFINISHREQUEST")
  (make-package "JSON_PROLOG_MSGS::PROLOGFINISHREQUEST"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGFINISHRESPONSE")
  (make-package "JSON_PROLOG_MSGS::PROLOGFINISHRESPONSE"))

(in-package "ROS")





(defclass json_prolog_msgs::PrologFinishRequest
  :super ros::object
  :slots (_id ))

(defmethod json_prolog_msgs::PrologFinishRequest
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

(defclass json_prolog_msgs::PrologFinishResponse
  :super ros::object
  :slots ())

(defmethod json_prolog_msgs::PrologFinishResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass json_prolog_msgs::PrologFinish
  :super ros::object
  :slots ())

(setf (get json_prolog_msgs::PrologFinish :md5sum-) "bbfcda76036ebbe3d36caf7af80b260c")
(setf (get json_prolog_msgs::PrologFinish :datatype-) "json_prolog_msgs/PrologFinish")
(setf (get json_prolog_msgs::PrologFinish :request) json_prolog_msgs::PrologFinishRequest)
(setf (get json_prolog_msgs::PrologFinish :response) json_prolog_msgs::PrologFinishResponse)

(defmethod json_prolog_msgs::PrologFinishRequest
  (:response () (instance json_prolog_msgs::PrologFinishResponse :init)))

(setf (get json_prolog_msgs::PrologFinishRequest :md5sum-) "bbfcda76036ebbe3d36caf7af80b260c")
(setf (get json_prolog_msgs::PrologFinishRequest :datatype-) "json_prolog_msgs/PrologFinishRequest")
(setf (get json_prolog_msgs::PrologFinishRequest :definition-)
      "string id
---

")

(setf (get json_prolog_msgs::PrologFinishResponse :md5sum-) "bbfcda76036ebbe3d36caf7af80b260c")
(setf (get json_prolog_msgs::PrologFinishResponse :datatype-) "json_prolog_msgs/PrologFinishResponse")
(setf (get json_prolog_msgs::PrologFinishResponse :definition-)
      "string id
---

")



(provide :json_prolog_msgs/PrologFinish "bbfcda76036ebbe3d36caf7af80b260c")


