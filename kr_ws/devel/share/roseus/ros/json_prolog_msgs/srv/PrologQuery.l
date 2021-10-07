;; Auto-generated. Do not edit!


(when (boundp 'json_prolog_msgs::PrologQuery)
  (if (not (find-package "JSON_PROLOG_MSGS"))
    (make-package "JSON_PROLOG_MSGS"))
  (shadow 'PrologQuery (find-package "JSON_PROLOG_MSGS")))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGQUERY")
  (make-package "JSON_PROLOG_MSGS::PROLOGQUERY"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST")
  (make-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST"))
(unless (find-package "JSON_PROLOG_MSGS::PROLOGQUERYRESPONSE")
  (make-package "JSON_PROLOG_MSGS::PROLOGQUERYRESPONSE"))

(in-package "ROS")





(intern "*ALL_SOLUTIONS*" (find-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST"))
(shadow '*ALL_SOLUTIONS* (find-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST"))
(defconstant json_prolog_msgs::PrologQueryRequest::*ALL_SOLUTIONS* 0)
(intern "*INCREMENTAL*" (find-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST"))
(shadow '*INCREMENTAL* (find-package "JSON_PROLOG_MSGS::PROLOGQUERYREQUEST"))
(defconstant json_prolog_msgs::PrologQueryRequest::*INCREMENTAL* 1)
(defclass json_prolog_msgs::PrologQueryRequest
  :super ros::object
  :slots (_mode _id _query ))

(defmethod json_prolog_msgs::PrologQueryRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:id __id) "")
    ((:query __query) "")
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _id (string __id))
   (setq _query (string __query))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; byte _mode
    1
    ;; string _id
    4 (length _id)
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _mode
       (write-byte _mode s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass json_prolog_msgs::PrologQueryResponse
  :super ros::object
  :slots (_ok _message ))

(defmethod json_prolog_msgs::PrologQueryResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _message (string __message))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass json_prolog_msgs::PrologQuery
  :super ros::object
  :slots ())

(setf (get json_prolog_msgs::PrologQuery :md5sum-) "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(setf (get json_prolog_msgs::PrologQuery :datatype-) "json_prolog_msgs/PrologQuery")
(setf (get json_prolog_msgs::PrologQuery :request) json_prolog_msgs::PrologQueryRequest)
(setf (get json_prolog_msgs::PrologQuery :response) json_prolog_msgs::PrologQueryResponse)

(defmethod json_prolog_msgs::PrologQueryRequest
  (:response () (instance json_prolog_msgs::PrologQueryResponse :init)))

(setf (get json_prolog_msgs::PrologQueryRequest :md5sum-) "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(setf (get json_prolog_msgs::PrologQueryRequest :datatype-) "json_prolog_msgs/PrologQueryRequest")
(setf (get json_prolog_msgs::PrologQueryRequest :definition-)
      "# The following constants, together with the `mode' slot, allow for
# configuring how the prolog engine is supposed to generate
# solutions. ALL_SOLUTIONS indicates that the query should be
# processed completely immediately. INCREMENTAL indicates that only
# one solution should be generated at one time whenever the
# next_solution is called.

byte ALL_SOLUTIONS=0
byte INCREMENTAL=1

byte mode
string id
string query
---
bool ok
string message

")

(setf (get json_prolog_msgs::PrologQueryResponse :md5sum-) "b98fb21a498cfd5b16c55f4b1f1cfa7d")
(setf (get json_prolog_msgs::PrologQueryResponse :datatype-) "json_prolog_msgs/PrologQueryResponse")
(setf (get json_prolog_msgs::PrologQueryResponse :definition-)
      "# The following constants, together with the `mode' slot, allow for
# configuring how the prolog engine is supposed to generate
# solutions. ALL_SOLUTIONS indicates that the query should be
# processed completely immediately. INCREMENTAL indicates that only
# one solution should be generated at one time whenever the
# next_solution is called.

byte ALL_SOLUTIONS=0
byte INCREMENTAL=1

byte mode
string id
string query
---
bool ok
string message

")



(provide :json_prolog_msgs/PrologQuery "b98fb21a498cfd5b16c55f4b1f1cfa7d")


