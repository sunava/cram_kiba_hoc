;; Auto-generated. Do not edit!


(when (boundp 'designator_integration_msgs::Designator)
  (if (not (find-package "DESIGNATOR_INTEGRATION_MSGS"))
    (make-package "DESIGNATOR_INTEGRATION_MSGS"))
  (shadow 'Designator (find-package "DESIGNATOR_INTEGRATION_MSGS")))
(unless (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR")
  (make-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))

(in-package "ROS")
;;//! \htmlinclude Designator.msg.html


(intern "*TYPE_OBJECT*" (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(shadow '*TYPE_OBJECT* (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(defconstant designator_integration_msgs::Designator::*TYPE_OBJECT* 0)
(intern "*TYPE_ACTION*" (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(shadow '*TYPE_ACTION* (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(defconstant designator_integration_msgs::Designator::*TYPE_ACTION* 1)
(intern "*TYPE_LOCATION*" (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(shadow '*TYPE_LOCATION* (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(defconstant designator_integration_msgs::Designator::*TYPE_LOCATION* 2)
(intern "*TYPE_HUMAN*" (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(shadow '*TYPE_HUMAN* (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATOR"))
(defconstant designator_integration_msgs::Designator::*TYPE_HUMAN* 3)
(defclass designator_integration_msgs::Designator
  :super ros::object
  :slots (_type _description ))

(defmethod designator_integration_msgs::Designator
  (:init
   (&key
    ((:type __type) 0)
    ((:description __description) (let (r) (dotimes (i 0) (push (instance designator_integration_msgs::KeyValuePair :init) r)) r))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _description __description)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:description
   (&rest __description)
   (if (keywordp (car __description))
       (send* _description __description)
     (progn
       (if __description (setq _description (car __description)))
       _description)))
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; designator_integration_msgs/KeyValuePair[] _description
    (apply #'+ (send-all _description :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; designator_integration_msgs/KeyValuePair[] _description
     (write-long (length _description) s)
     (dolist (elem _description)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; designator_integration_msgs/KeyValuePair[] _description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description (let (r) (dotimes (i n) (push (instance designator_integration_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _description)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get designator_integration_msgs::Designator :md5sum-) "a7d8250674b8d40ad082b079d968c7bf")
(setf (get designator_integration_msgs::Designator :datatype-) "designator_integration_msgs/Designator")
(setf (get designator_integration_msgs::Designator :definition-)
      "int32 TYPE_OBJECT=0
int32 TYPE_ACTION=1
int32 TYPE_LOCATION=2
int32 TYPE_HUMAN=3

int32 type

KeyValuePair[] description

================================================================================
MSG: designator_integration_msgs/KeyValuePair
# Purely for (de-)serialization purposes
int32 id
int32 parent

# Data
int32 TYPE_STRING=0
int32 TYPE_FLOAT=1
int32 TYPE_DATA=2
int32 TYPE_LIST=3
int32 TYPE_POSESTAMPED=4
int32 TYPE_POSE=5
int32 TYPE_DESIGNATOR_ACTION=6
int32 TYPE_DESIGNATOR_OBJECT=7
int32 TYPE_DESIGNATOR_LOCATION=8
int32 TYPE_DESIGNATOR_HUMAN=9
int32 TYPE_POINT=10
int32 TYPE_WRENCH=11
int32 TYPE_MATRIX=12
int32 TYPE_VECTOR=13
int32 TYPE_TRANSFORMSTAMPED=14

int32 type

string key
string value_string
float64 value_float
char[] value_data
float64[] value_array
geometry_msgs/PoseStamped value_posestamped
geometry_msgs/Pose value_pose
geometry_msgs/Point value_point
geometry_msgs/Wrench value_wrench
geometry_msgs/TransformStamped value_transformstamped

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

")



(provide :designator_integration_msgs/Designator "a7d8250674b8d40ad082b079d968c7bf")


