;; Auto-generated. Do not edit!


(when (boundp 'designator_integration_msgs::KeyValuePair)
  (if (not (find-package "DESIGNATOR_INTEGRATION_MSGS"))
    (make-package "DESIGNATOR_INTEGRATION_MSGS"))
  (shadow 'KeyValuePair (find-package "DESIGNATOR_INTEGRATION_MSGS")))
(unless (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR")
  (make-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))

(in-package "ROS")
;;//! \htmlinclude KeyValuePair.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TYPE_STRING*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_STRING* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_STRING* 0)
(intern "*TYPE_FLOAT*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_FLOAT* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_FLOAT* 1)
(intern "*TYPE_DATA*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_DATA* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_DATA* 2)
(intern "*TYPE_LIST*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_LIST* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_LIST* 3)
(intern "*TYPE_POSESTAMPED*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_POSESTAMPED* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_POSESTAMPED* 4)
(intern "*TYPE_POSE*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_POSE* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_POSE* 5)
(intern "*TYPE_DESIGNATOR_ACTION*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_DESIGNATOR_ACTION* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_DESIGNATOR_ACTION* 6)
(intern "*TYPE_DESIGNATOR_OBJECT*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_DESIGNATOR_OBJECT* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_DESIGNATOR_OBJECT* 7)
(intern "*TYPE_DESIGNATOR_LOCATION*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_DESIGNATOR_LOCATION* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_DESIGNATOR_LOCATION* 8)
(intern "*TYPE_DESIGNATOR_HUMAN*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_DESIGNATOR_HUMAN* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_DESIGNATOR_HUMAN* 9)
(intern "*TYPE_POINT*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_POINT* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_POINT* 10)
(intern "*TYPE_WRENCH*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_WRENCH* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_WRENCH* 11)
(intern "*TYPE_MATRIX*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_MATRIX* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_MATRIX* 12)
(intern "*TYPE_VECTOR*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_VECTOR* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_VECTOR* 13)
(intern "*TYPE_TRANSFORMSTAMPED*" (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(shadow '*TYPE_TRANSFORMSTAMPED* (find-package "DESIGNATOR_INTEGRATION_MSGS::KEYVALUEPAIR"))
(defconstant designator_integration_msgs::KeyValuePair::*TYPE_TRANSFORMSTAMPED* 14)
(defclass designator_integration_msgs::KeyValuePair
  :super ros::object
  :slots (_id _parent _type _key _value_string _value_float _value_data _value_array _value_posestamped _value_pose _value_point _value_wrench _value_transformstamped ))

(defmethod designator_integration_msgs::KeyValuePair
  (:init
   (&key
    ((:id __id) 0)
    ((:parent __parent) 0)
    ((:type __type) 0)
    ((:key __key) "")
    ((:value_string __value_string) "")
    ((:value_float __value_float) 0.0)
    ((:value_data __value_data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:value_array __value_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:value_posestamped __value_posestamped) (instance geometry_msgs::PoseStamped :init))
    ((:value_pose __value_pose) (instance geometry_msgs::Pose :init))
    ((:value_point __value_point) (instance geometry_msgs::Point :init))
    ((:value_wrench __value_wrench) (instance geometry_msgs::Wrench :init))
    ((:value_transformstamped __value_transformstamped) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parent (round __parent))
   (setq _type (round __type))
   (setq _key (string __key))
   (setq _value_string (string __value_string))
   (setq _value_float (float __value_float))
   (setq _value_data __value_data)
   (setq _value_array __value_array)
   (setq _value_posestamped __value_posestamped)
   (setq _value_pose __value_pose)
   (setq _value_point __value_point)
   (setq _value_wrench __value_wrench)
   (setq _value_transformstamped __value_transformstamped)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parent
   (&optional __parent)
   (if __parent (setq _parent __parent)) _parent)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value_string
   (&optional __value_string)
   (if __value_string (setq _value_string __value_string)) _value_string)
  (:value_float
   (&optional __value_float)
   (if __value_float (setq _value_float __value_float)) _value_float)
  (:value_data
   (&optional __value_data)
   (if __value_data (setq _value_data __value_data)) _value_data)
  (:value_array
   (&optional __value_array)
   (if __value_array (setq _value_array __value_array)) _value_array)
  (:value_posestamped
   (&rest __value_posestamped)
   (if (keywordp (car __value_posestamped))
       (send* _value_posestamped __value_posestamped)
     (progn
       (if __value_posestamped (setq _value_posestamped (car __value_posestamped)))
       _value_posestamped)))
  (:value_pose
   (&rest __value_pose)
   (if (keywordp (car __value_pose))
       (send* _value_pose __value_pose)
     (progn
       (if __value_pose (setq _value_pose (car __value_pose)))
       _value_pose)))
  (:value_point
   (&rest __value_point)
   (if (keywordp (car __value_point))
       (send* _value_point __value_point)
     (progn
       (if __value_point (setq _value_point (car __value_point)))
       _value_point)))
  (:value_wrench
   (&rest __value_wrench)
   (if (keywordp (car __value_wrench))
       (send* _value_wrench __value_wrench)
     (progn
       (if __value_wrench (setq _value_wrench (car __value_wrench)))
       _value_wrench)))
  (:value_transformstamped
   (&rest __value_transformstamped)
   (if (keywordp (car __value_transformstamped))
       (send* _value_transformstamped __value_transformstamped)
     (progn
       (if __value_transformstamped (setq _value_transformstamped (car __value_transformstamped)))
       _value_transformstamped)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _parent
    4
    ;; int32 _type
    4
    ;; string _key
    4 (length _key)
    ;; string _value_string
    4 (length _value_string)
    ;; float64 _value_float
    8
    ;; char[] _value_data
    (* 1    (length _value_data)) 4
    ;; float64[] _value_array
    (* 8    (length _value_array)) 4
    ;; geometry_msgs/PoseStamped _value_posestamped
    (send _value_posestamped :serialization-length)
    ;; geometry_msgs/Pose _value_pose
    (send _value_pose :serialization-length)
    ;; geometry_msgs/Point _value_point
    (send _value_point :serialization-length)
    ;; geometry_msgs/Wrench _value_wrench
    (send _value_wrench :serialization-length)
    ;; geometry_msgs/TransformStamped _value_transformstamped
    (send _value_transformstamped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _parent
       (write-long _parent s)
     ;; int32 _type
       (write-long _type s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _value_string
       (write-long (length _value_string) s) (princ _value_string s)
     ;; float64 _value_float
       (sys::poke _value_float (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char[] _value_data
     (write-long (length _value_data) s)
     (dotimes (i (length _value_data))
       (write-byte (elt _value_data i) s)
       )
     ;; float64[] _value_array
     (write-long (length _value_array) s)
     (dotimes (i (length _value_array))
       (sys::poke (elt _value_array i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/PoseStamped _value_posestamped
       (send _value_posestamped :serialize s)
     ;; geometry_msgs/Pose _value_pose
       (send _value_pose :serialize s)
     ;; geometry_msgs/Point _value_point
       (send _value_point :serialize s)
     ;; geometry_msgs/Wrench _value_wrench
       (send _value_wrench :serialize s)
     ;; geometry_msgs/TransformStamped _value_transformstamped
       (send _value_transformstamped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parent
     (setq _parent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value_float
     (setq _value_float (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char[] _value_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value_data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _value_data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;; float64[] _value_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value_array i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/PoseStamped _value_posestamped
     (send _value_posestamped :deserialize buf ptr-) (incf ptr- (send _value_posestamped :serialization-length))
   ;; geometry_msgs/Pose _value_pose
     (send _value_pose :deserialize buf ptr-) (incf ptr- (send _value_pose :serialization-length))
   ;; geometry_msgs/Point _value_point
     (send _value_point :deserialize buf ptr-) (incf ptr- (send _value_point :serialization-length))
   ;; geometry_msgs/Wrench _value_wrench
     (send _value_wrench :deserialize buf ptr-) (incf ptr- (send _value_wrench :serialization-length))
   ;; geometry_msgs/TransformStamped _value_transformstamped
     (send _value_transformstamped :deserialize buf ptr-) (incf ptr- (send _value_transformstamped :serialization-length))
   ;;
   self)
  )

(setf (get designator_integration_msgs::KeyValuePair :md5sum-) "f1028427513befe30073351bcecef205")
(setf (get designator_integration_msgs::KeyValuePair :datatype-) "designator_integration_msgs/KeyValuePair")
(setf (get designator_integration_msgs::KeyValuePair :definition-)
      "# Purely for (de-)serialization purposes
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



(provide :designator_integration_msgs/KeyValuePair "f1028427513befe30073351bcecef205")


