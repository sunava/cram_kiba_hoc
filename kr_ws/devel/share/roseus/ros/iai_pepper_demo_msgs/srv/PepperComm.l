;; Auto-generated. Do not edit!


(when (boundp 'iai_pepper_demo_msgs::PepperComm)
  (if (not (find-package "IAI_PEPPER_DEMO_MSGS"))
    (make-package "IAI_PEPPER_DEMO_MSGS"))
  (shadow 'PepperComm (find-package "IAI_PEPPER_DEMO_MSGS")))
(unless (find-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMM")
  (make-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMM"))
(unless (find-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMMREQUEST")
  (make-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMMREQUEST"))
(unless (find-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMMRESPONSE")
  (make-package "IAI_PEPPER_DEMO_MSGS::PEPPERCOMMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iai_pepper_demo_msgs::PepperCommRequest
  :super ros::object
  :slots (_speak _point_at _get_pose _get_heard ))

(defmethod iai_pepper_demo_msgs::PepperCommRequest
  (:init
   (&key
    ((:speak __speak) "")
    ((:point_at __point_at) (instance geometry_msgs::PointStamped :init))
    ((:get_pose __get_pose) nil)
    ((:get_heard __get_heard) nil)
    )
   (send-super :init)
   (setq _speak (string __speak))
   (setq _point_at __point_at)
   (setq _get_pose __get_pose)
   (setq _get_heard __get_heard)
   self)
  (:speak
   (&optional __speak)
   (if __speak (setq _speak __speak)) _speak)
  (:point_at
   (&rest __point_at)
   (if (keywordp (car __point_at))
       (send* _point_at __point_at)
     (progn
       (if __point_at (setq _point_at (car __point_at)))
       _point_at)))
  (:get_pose
   (&optional __get_pose)
   (if __get_pose (setq _get_pose __get_pose)) _get_pose)
  (:get_heard
   (&optional __get_heard)
   (if __get_heard (setq _get_heard __get_heard)) _get_heard)
  (:serialization-length
   ()
   (+
    ;; string _speak
    4 (length _speak)
    ;; geometry_msgs/PointStamped _point_at
    (send _point_at :serialization-length)
    ;; bool _get_pose
    1
    ;; bool _get_heard
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _speak
       (write-long (length _speak) s) (princ _speak s)
     ;; geometry_msgs/PointStamped _point_at
       (send _point_at :serialize s)
     ;; bool _get_pose
       (if _get_pose (write-byte -1 s) (write-byte 0 s))
     ;; bool _get_heard
       (if _get_heard (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _speak
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speak (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PointStamped _point_at
     (send _point_at :deserialize buf ptr-) (incf ptr- (send _point_at :serialization-length))
   ;; bool _get_pose
     (setq _get_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _get_heard
     (setq _get_heard (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iai_pepper_demo_msgs::PepperCommResponse
  :super ros::object
  :slots (_pepper_pose _heard ))

(defmethod iai_pepper_demo_msgs::PepperCommResponse
  (:init
   (&key
    ((:pepper_pose __pepper_pose) (instance geometry_msgs::TransformStamped :init))
    ((:heard __heard) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _pepper_pose __pepper_pose)
   (setq _heard __heard)
   self)
  (:pepper_pose
   (&rest __pepper_pose)
   (if (keywordp (car __pepper_pose))
       (send* _pepper_pose __pepper_pose)
     (progn
       (if __pepper_pose (setq _pepper_pose (car __pepper_pose)))
       _pepper_pose)))
  (:heard
   (&optional __heard)
   (if __heard (setq _heard __heard)) _heard)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TransformStamped _pepper_pose
    (send _pepper_pose :serialization-length)
    ;; string[] _heard
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _heard)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TransformStamped _pepper_pose
       (send _pepper_pose :serialize s)
     ;; string[] _heard
     (write-long (length _heard) s)
     (dolist (elem _heard)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TransformStamped _pepper_pose
     (send _pepper_pose :deserialize buf ptr-) (incf ptr- (send _pepper_pose :serialization-length))
   ;; string[] _heard
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heard (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _heard i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass iai_pepper_demo_msgs::PepperComm
  :super ros::object
  :slots ())

(setf (get iai_pepper_demo_msgs::PepperComm :md5sum-) "62367ba17406150d44dbf73edf243c81")
(setf (get iai_pepper_demo_msgs::PepperComm :datatype-) "iai_pepper_demo_msgs/PepperComm")
(setf (get iai_pepper_demo_msgs::PepperComm :request) iai_pepper_demo_msgs::PepperCommRequest)
(setf (get iai_pepper_demo_msgs::PepperComm :response) iai_pepper_demo_msgs::PepperCommResponse)

(defmethod iai_pepper_demo_msgs::PepperCommRequest
  (:response () (instance iai_pepper_demo_msgs::PepperCommResponse :init)))

(setf (get iai_pepper_demo_msgs::PepperCommRequest :md5sum-) "62367ba17406150d44dbf73edf243c81")
(setf (get iai_pepper_demo_msgs::PepperCommRequest :datatype-) "iai_pepper_demo_msgs/PepperCommRequest")
(setf (get iai_pepper_demo_msgs::PepperCommRequest :definition-)
      "string speak
geometry_msgs/PointStamped point_at
bool get_pose
bool get_heard

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/TransformStamped pepper_pose
string[] heard


================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get iai_pepper_demo_msgs::PepperCommResponse :md5sum-) "62367ba17406150d44dbf73edf243c81")
(setf (get iai_pepper_demo_msgs::PepperCommResponse :datatype-) "iai_pepper_demo_msgs/PepperCommResponse")
(setf (get iai_pepper_demo_msgs::PepperCommResponse :definition-)
      "string speak
geometry_msgs/PointStamped point_at
bool get_pose
bool get_heard

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/TransformStamped pepper_pose
string[] heard


================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :iai_pepper_demo_msgs/PepperComm "62367ba17406150d44dbf73edf243c81")


