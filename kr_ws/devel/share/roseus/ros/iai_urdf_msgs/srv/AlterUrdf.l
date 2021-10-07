;; Auto-generated. Do not edit!


(when (boundp 'iai_urdf_msgs::AlterUrdf)
  (if (not (find-package "IAI_URDF_MSGS"))
    (make-package "IAI_URDF_MSGS"))
  (shadow 'AlterUrdf (find-package "IAI_URDF_MSGS")))
(unless (find-package "IAI_URDF_MSGS::ALTERURDF")
  (make-package "IAI_URDF_MSGS::ALTERURDF"))
(unless (find-package "IAI_URDF_MSGS::ALTERURDFREQUEST")
  (make-package "IAI_URDF_MSGS::ALTERURDFREQUEST"))
(unless (find-package "IAI_URDF_MSGS::ALTERURDFRESPONSE")
  (make-package "IAI_URDF_MSGS::ALTERURDFRESPONSE"))

(in-package "ROS")





(intern "*ADD*" (find-package "IAI_URDF_MSGS::ALTERURDFREQUEST"))
(shadow '*ADD* (find-package "IAI_URDF_MSGS::ALTERURDFREQUEST"))
(defconstant iai_urdf_msgs::AlterUrdfRequest::*ADD* 1)
(intern "*REMOVE*" (find-package "IAI_URDF_MSGS::ALTERURDFREQUEST"))
(shadow '*REMOVE* (find-package "IAI_URDF_MSGS::ALTERURDFREQUEST"))
(defconstant iai_urdf_msgs::AlterUrdfRequest::*REMOVE* 2)
(defclass iai_urdf_msgs::AlterUrdfRequest
  :super ros::object
  :slots (_action _xml_elements_to_add _element_names_to_remove ))

(defmethod iai_urdf_msgs::AlterUrdfRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:xml_elements_to_add __xml_elements_to_add) "")
    ((:element_names_to_remove __element_names_to_remove) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _xml_elements_to_add (string __xml_elements_to_add))
   (setq _element_names_to_remove __element_names_to_remove)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:xml_elements_to_add
   (&optional __xml_elements_to_add)
   (if __xml_elements_to_add (setq _xml_elements_to_add __xml_elements_to_add)) _xml_elements_to_add)
  (:element_names_to_remove
   (&optional __element_names_to_remove)
   (if __element_names_to_remove (setq _element_names_to_remove __element_names_to_remove)) _element_names_to_remove)
  (:serialization-length
   ()
   (+
    ;; int8 _action
    1
    ;; string _xml_elements_to_add
    4 (length _xml_elements_to_add)
    ;; string[] _element_names_to_remove
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _element_names_to_remove)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _action
       (write-byte _action s)
     ;; string _xml_elements_to_add
       (write-long (length _xml_elements_to_add) s) (princ _xml_elements_to_add s)
     ;; string[] _element_names_to_remove
     (write-long (length _element_names_to_remove) s)
     (dolist (elem _element_names_to_remove)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; string _xml_elements_to_add
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _xml_elements_to_add (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _element_names_to_remove
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _element_names_to_remove (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _element_names_to_remove i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass iai_urdf_msgs::AlterUrdfResponse
  :super ros::object
  :slots (_success ))

(defmethod iai_urdf_msgs::AlterUrdfResponse
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

(defclass iai_urdf_msgs::AlterUrdf
  :super ros::object
  :slots ())

(setf (get iai_urdf_msgs::AlterUrdf :md5sum-) "3b731db7cc750f692e4b9188b114d807")
(setf (get iai_urdf_msgs::AlterUrdf :datatype-) "iai_urdf_msgs/AlterUrdf")
(setf (get iai_urdf_msgs::AlterUrdf :request) iai_urdf_msgs::AlterUrdfRequest)
(setf (get iai_urdf_msgs::AlterUrdf :response) iai_urdf_msgs::AlterUrdfResponse)

(defmethod iai_urdf_msgs::AlterUrdfRequest
  (:response () (instance iai_urdf_msgs::AlterUrdfResponse :init)))

(setf (get iai_urdf_msgs::AlterUrdfRequest :md5sum-) "3b731db7cc750f692e4b9188b114d807")
(setf (get iai_urdf_msgs::AlterUrdfRequest :datatype-) "iai_urdf_msgs/AlterUrdfRequest")
(setf (get iai_urdf_msgs::AlterUrdfRequest :definition-)
      "#request constants
int8 ADD=1
int8 REMOVE=2
#request fields
int8 action
#xml to add to the urdf
string xml_elements_to_add
#names of the joint and links to remove from the urdf
string[] element_names_to_remove
---
#response fields
bool success
")

(setf (get iai_urdf_msgs::AlterUrdfResponse :md5sum-) "3b731db7cc750f692e4b9188b114d807")
(setf (get iai_urdf_msgs::AlterUrdfResponse :datatype-) "iai_urdf_msgs/AlterUrdfResponse")
(setf (get iai_urdf_msgs::AlterUrdfResponse :definition-)
      "#request constants
int8 ADD=1
int8 REMOVE=2
#request fields
int8 action
#xml to add to the urdf
string xml_elements_to_add
#names of the joint and links to remove from the urdf
string[] element_names_to_remove
---
#response fields
bool success
")



(provide :iai_urdf_msgs/AlterUrdf "3b731db7cc750f692e4b9188b114d807")


