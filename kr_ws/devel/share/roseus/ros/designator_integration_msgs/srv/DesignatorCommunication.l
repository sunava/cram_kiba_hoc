;; Auto-generated. Do not edit!


(when (boundp 'designator_integration_msgs::DesignatorCommunication)
  (if (not (find-package "DESIGNATOR_INTEGRATION_MSGS"))
    (make-package "DESIGNATOR_INTEGRATION_MSGS"))
  (shadow 'DesignatorCommunication (find-package "DESIGNATOR_INTEGRATION_MSGS")))
(unless (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATION")
  (make-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATION"))
(unless (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATIONREQUEST")
  (make-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATIONREQUEST"))
(unless (find-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATIONRESPONSE")
  (make-package "DESIGNATOR_INTEGRATION_MSGS::DESIGNATORCOMMUNICATIONRESPONSE"))

(in-package "ROS")





(defclass designator_integration_msgs::DesignatorCommunicationRequest
  :super ros::object
  :slots (_request ))

(defmethod designator_integration_msgs::DesignatorCommunicationRequest
  (:init
   (&key
    ((:request __request) (instance designator_integration_msgs::DesignatorRequest :init))
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; designator_integration_msgs/DesignatorRequest _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; designator_integration_msgs/DesignatorRequest _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; designator_integration_msgs/DesignatorRequest _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass designator_integration_msgs::DesignatorCommunicationResponse
  :super ros::object
  :slots (_response ))

(defmethod designator_integration_msgs::DesignatorCommunicationResponse
  (:init
   (&key
    ((:response __response) (instance designator_integration_msgs::DesignatorResponse :init))
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:serialization-length
   ()
   (+
    ;; designator_integration_msgs/DesignatorResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; designator_integration_msgs/DesignatorResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; designator_integration_msgs/DesignatorResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass designator_integration_msgs::DesignatorCommunication
  :super ros::object
  :slots ())

(setf (get designator_integration_msgs::DesignatorCommunication :md5sum-) "8f8b294dbadbca716e0316b887c4f788")
(setf (get designator_integration_msgs::DesignatorCommunication :datatype-) "designator_integration_msgs/DesignatorCommunication")
(setf (get designator_integration_msgs::DesignatorCommunication :request) designator_integration_msgs::DesignatorCommunicationRequest)
(setf (get designator_integration_msgs::DesignatorCommunication :response) designator_integration_msgs::DesignatorCommunicationResponse)

(defmethod designator_integration_msgs::DesignatorCommunicationRequest
  (:response () (instance designator_integration_msgs::DesignatorCommunicationResponse :init)))

(setf (get designator_integration_msgs::DesignatorCommunicationRequest :md5sum-) "8f8b294dbadbca716e0316b887c4f788")
(setf (get designator_integration_msgs::DesignatorCommunicationRequest :datatype-) "designator_integration_msgs/DesignatorCommunicationRequest")
(setf (get designator_integration_msgs::DesignatorCommunicationRequest :definition-)
      "DesignatorRequest request

================================================================================
MSG: designator_integration_msgs/DesignatorRequest
Designator designator

================================================================================
MSG: designator_integration_msgs/Designator
int32 TYPE_OBJECT=0
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
---
DesignatorResponse response

================================================================================
MSG: designator_integration_msgs/DesignatorResponse
Designator[] designators

================================================================================
MSG: designator_integration_msgs/Designator
int32 TYPE_OBJECT=0
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

(setf (get designator_integration_msgs::DesignatorCommunicationResponse :md5sum-) "8f8b294dbadbca716e0316b887c4f788")
(setf (get designator_integration_msgs::DesignatorCommunicationResponse :datatype-) "designator_integration_msgs/DesignatorCommunicationResponse")
(setf (get designator_integration_msgs::DesignatorCommunicationResponse :definition-)
      "DesignatorRequest request

================================================================================
MSG: designator_integration_msgs/DesignatorRequest
Designator designator

================================================================================
MSG: designator_integration_msgs/Designator
int32 TYPE_OBJECT=0
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
---
DesignatorResponse response

================================================================================
MSG: designator_integration_msgs/DesignatorResponse
Designator[] designators

================================================================================
MSG: designator_integration_msgs/Designator
int32 TYPE_OBJECT=0
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



(provide :designator_integration_msgs/DesignatorCommunication "8f8b294dbadbca716e0316b887c4f788")


