; Auto-generated. Do not edit!


(cl:in-package designator_integration_msgs-msg)


;//! \htmlinclude KeyValuePair.msg.html

(cl:defclass <KeyValuePair> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (parent
    :reader parent
    :initarg :parent
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value_string
    :reader value_string
    :initarg :value_string
    :type cl:string
    :initform "")
   (value_float
    :reader value_float
    :initarg :value_float
    :type cl:float
    :initform 0.0)
   (value_data
    :reader value_data
    :initarg :value_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (value_array
    :reader value_array
    :initarg :value_array
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (value_posestamped
    :reader value_posestamped
    :initarg :value_posestamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (value_pose
    :reader value_pose
    :initarg :value_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (value_point
    :reader value_point
    :initarg :value_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (value_wrench
    :reader value_wrench
    :initarg :value_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (value_transformstamped
    :reader value_transformstamped
    :initarg :value_transformstamped
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass KeyValuePair (<KeyValuePair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyValuePair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyValuePair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name designator_integration_msgs-msg:<KeyValuePair> is deprecated: use designator_integration_msgs-msg:KeyValuePair instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:id-val is deprecated.  Use designator_integration_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'parent-val :lambda-list '(m))
(cl:defmethod parent-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:parent-val is deprecated.  Use designator_integration_msgs-msg:parent instead.")
  (parent m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:type-val is deprecated.  Use designator_integration_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:key-val is deprecated.  Use designator_integration_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value_string-val :lambda-list '(m))
(cl:defmethod value_string-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_string-val is deprecated.  Use designator_integration_msgs-msg:value_string instead.")
  (value_string m))

(cl:ensure-generic-function 'value_float-val :lambda-list '(m))
(cl:defmethod value_float-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_float-val is deprecated.  Use designator_integration_msgs-msg:value_float instead.")
  (value_float m))

(cl:ensure-generic-function 'value_data-val :lambda-list '(m))
(cl:defmethod value_data-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_data-val is deprecated.  Use designator_integration_msgs-msg:value_data instead.")
  (value_data m))

(cl:ensure-generic-function 'value_array-val :lambda-list '(m))
(cl:defmethod value_array-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_array-val is deprecated.  Use designator_integration_msgs-msg:value_array instead.")
  (value_array m))

(cl:ensure-generic-function 'value_posestamped-val :lambda-list '(m))
(cl:defmethod value_posestamped-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_posestamped-val is deprecated.  Use designator_integration_msgs-msg:value_posestamped instead.")
  (value_posestamped m))

(cl:ensure-generic-function 'value_pose-val :lambda-list '(m))
(cl:defmethod value_pose-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_pose-val is deprecated.  Use designator_integration_msgs-msg:value_pose instead.")
  (value_pose m))

(cl:ensure-generic-function 'value_point-val :lambda-list '(m))
(cl:defmethod value_point-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_point-val is deprecated.  Use designator_integration_msgs-msg:value_point instead.")
  (value_point m))

(cl:ensure-generic-function 'value_wrench-val :lambda-list '(m))
(cl:defmethod value_wrench-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_wrench-val is deprecated.  Use designator_integration_msgs-msg:value_wrench instead.")
  (value_wrench m))

(cl:ensure-generic-function 'value_transformstamped-val :lambda-list '(m))
(cl:defmethod value_transformstamped-val ((m <KeyValuePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader designator_integration_msgs-msg:value_transformstamped-val is deprecated.  Use designator_integration_msgs-msg:value_transformstamped instead.")
  (value_transformstamped m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KeyValuePair>)))
    "Constants for message type '<KeyValuePair>"
  '((:TYPE_STRING . 0)
    (:TYPE_FLOAT . 1)
    (:TYPE_DATA . 2)
    (:TYPE_LIST . 3)
    (:TYPE_POSESTAMPED . 4)
    (:TYPE_POSE . 5)
    (:TYPE_DESIGNATOR_ACTION . 6)
    (:TYPE_DESIGNATOR_OBJECT . 7)
    (:TYPE_DESIGNATOR_LOCATION . 8)
    (:TYPE_DESIGNATOR_HUMAN . 9)
    (:TYPE_POINT . 10)
    (:TYPE_WRENCH . 11)
    (:TYPE_MATRIX . 12)
    (:TYPE_VECTOR . 13)
    (:TYPE_TRANSFORMSTAMPED . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KeyValuePair)))
    "Constants for message type 'KeyValuePair"
  '((:TYPE_STRING . 0)
    (:TYPE_FLOAT . 1)
    (:TYPE_DATA . 2)
    (:TYPE_LIST . 3)
    (:TYPE_POSESTAMPED . 4)
    (:TYPE_POSE . 5)
    (:TYPE_DESIGNATOR_ACTION . 6)
    (:TYPE_DESIGNATOR_OBJECT . 7)
    (:TYPE_DESIGNATOR_LOCATION . 8)
    (:TYPE_DESIGNATOR_HUMAN . 9)
    (:TYPE_POINT . 10)
    (:TYPE_WRENCH . 11)
    (:TYPE_MATRIX . 12)
    (:TYPE_VECTOR . 13)
    (:TYPE_TRANSFORMSTAMPED . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyValuePair>) ostream)
  "Serializes a message object of type '<KeyValuePair>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value_string))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value_float))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'value_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'value_array))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value_posestamped) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value_wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value_transformstamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyValuePair>) istream)
  "Deserializes a message object of type '<KeyValuePair>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value_float) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value_posestamped) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value_wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value_transformstamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyValuePair>)))
  "Returns string type for a message object of type '<KeyValuePair>"
  "designator_integration_msgs/KeyValuePair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyValuePair)))
  "Returns string type for a message object of type 'KeyValuePair"
  "designator_integration_msgs/KeyValuePair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyValuePair>)))
  "Returns md5sum for a message object of type '<KeyValuePair>"
  "f1028427513befe30073351bcecef205")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyValuePair)))
  "Returns md5sum for a message object of type 'KeyValuePair"
  "f1028427513befe30073351bcecef205")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyValuePair>)))
  "Returns full string definition for message of type '<KeyValuePair>"
  (cl:format cl:nil "# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyValuePair)))
  "Returns full string definition for message of type 'KeyValuePair"
  (cl:format cl:nil "# Purely for (de-)serialization purposes~%int32 id~%int32 parent~%~%# Data~%int32 TYPE_STRING=0~%int32 TYPE_FLOAT=1~%int32 TYPE_DATA=2~%int32 TYPE_LIST=3~%int32 TYPE_POSESTAMPED=4~%int32 TYPE_POSE=5~%int32 TYPE_DESIGNATOR_ACTION=6~%int32 TYPE_DESIGNATOR_OBJECT=7~%int32 TYPE_DESIGNATOR_LOCATION=8~%int32 TYPE_DESIGNATOR_HUMAN=9~%int32 TYPE_POINT=10~%int32 TYPE_WRENCH=11~%int32 TYPE_MATRIX=12~%int32 TYPE_VECTOR=13~%int32 TYPE_TRANSFORMSTAMPED=14~%~%int32 type~%~%string key~%string value_string~%float64 value_float~%char[] value_data~%float64[] value_array~%geometry_msgs/PoseStamped value_posestamped~%geometry_msgs/Pose value_pose~%geometry_msgs/Point value_point~%geometry_msgs/Wrench value_wrench~%geometry_msgs/TransformStamped value_transformstamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyValuePair>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'value_string))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value_posestamped))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value_wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value_transformstamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyValuePair>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyValuePair
    (cl:cons ':id (id msg))
    (cl:cons ':parent (parent msg))
    (cl:cons ':type (type msg))
    (cl:cons ':key (key msg))
    (cl:cons ':value_string (value_string msg))
    (cl:cons ':value_float (value_float msg))
    (cl:cons ':value_data (value_data msg))
    (cl:cons ':value_array (value_array msg))
    (cl:cons ':value_posestamped (value_posestamped msg))
    (cl:cons ':value_pose (value_pose msg))
    (cl:cons ':value_point (value_point msg))
    (cl:cons ':value_wrench (value_wrench msg))
    (cl:cons ':value_transformstamped (value_transformstamped msg))
))
