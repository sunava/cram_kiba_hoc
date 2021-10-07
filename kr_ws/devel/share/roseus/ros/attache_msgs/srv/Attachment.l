;; Auto-generated. Do not edit!


(when (boundp 'attache_msgs::Attachment)
  (if (not (find-package "ATTACHE_MSGS"))
    (make-package "ATTACHE_MSGS"))
  (shadow 'Attachment (find-package "ATTACHE_MSGS")))
(unless (find-package "ATTACHE_MSGS::ATTACHMENT")
  (make-package "ATTACHE_MSGS::ATTACHMENT"))
(unless (find-package "ATTACHE_MSGS::ATTACHMENTREQUEST")
  (make-package "ATTACHE_MSGS::ATTACHMENTREQUEST"))
(unless (find-package "ATTACHE_MSGS::ATTACHMENTRESPONSE")
  (make-package "ATTACHE_MSGS::ATTACHMENTRESPONSE"))

(in-package "ROS")





(defclass attache_msgs::AttachmentRequest
  :super ros::object
  :slots (_model1 _link1 _model2 _link2 ))

(defmethod attache_msgs::AttachmentRequest
  (:init
   (&key
    ((:model1 __model1) "")
    ((:link1 __link1) "")
    ((:model2 __model2) "")
    ((:link2 __link2) "")
    )
   (send-super :init)
   (setq _model1 (string __model1))
   (setq _link1 (string __link1))
   (setq _model2 (string __model2))
   (setq _link2 (string __link2))
   self)
  (:model1
   (&optional __model1)
   (if __model1 (setq _model1 __model1)) _model1)
  (:link1
   (&optional __link1)
   (if __link1 (setq _link1 __link1)) _link1)
  (:model2
   (&optional __model2)
   (if __model2 (setq _model2 __model2)) _model2)
  (:link2
   (&optional __link2)
   (if __link2 (setq _link2 __link2)) _link2)
  (:serialization-length
   ()
   (+
    ;; string _model1
    4 (length _model1)
    ;; string _link1
    4 (length _link1)
    ;; string _model2
    4 (length _model2)
    ;; string _link2
    4 (length _link2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model1
       (write-long (length _model1) s) (princ _model1 s)
     ;; string _link1
       (write-long (length _link1) s) (princ _link1 s)
     ;; string _model2
       (write-long (length _model2) s) (princ _model2 s)
     ;; string _link2
       (write-long (length _link2) s) (princ _link2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass attache_msgs::AttachmentResponse
  :super ros::object
  :slots (_success ))

(defmethod attache_msgs::AttachmentResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass attache_msgs::Attachment
  :super ros::object
  :slots ())

(setf (get attache_msgs::Attachment :md5sum-) "c66622a43bf3cac88540c60ce36d5b63")
(setf (get attache_msgs::Attachment :datatype-) "attache_msgs/Attachment")
(setf (get attache_msgs::Attachment :request) attache_msgs::AttachmentRequest)
(setf (get attache_msgs::Attachment :response) attache_msgs::AttachmentResponse)

(defmethod attache_msgs::AttachmentRequest
  (:response () (instance attache_msgs::AttachmentResponse :init)))

(setf (get attache_msgs::AttachmentRequest :md5sum-) "c66622a43bf3cac88540c60ce36d5b63")
(setf (get attache_msgs::AttachmentRequest :datatype-) "attache_msgs/AttachmentRequest")
(setf (get attache_msgs::AttachmentRequest :definition-)
      "string model1
string link1

string model2
string link2
---
bool success

")

(setf (get attache_msgs::AttachmentResponse :md5sum-) "c66622a43bf3cac88540c60ce36d5b63")
(setf (get attache_msgs::AttachmentResponse :datatype-) "attache_msgs/AttachmentResponse")
(setf (get attache_msgs::AttachmentResponse :definition-)
      "string model1
string link1

string model2
string link2
---
bool success

")



(provide :attache_msgs/Attachment "c66622a43bf3cac88540c60ce36d5b63")


