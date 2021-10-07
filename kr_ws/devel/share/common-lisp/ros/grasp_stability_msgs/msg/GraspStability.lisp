; Auto-generated. Do not edit!


(cl:in-package grasp_stability_msgs-msg)


;//! \htmlinclude GraspStability.msg.html

(cl:defclass <GraspStability> (roslisp-msg-protocol:ros-message)
  ((measurement_context_id
    :reader measurement_context_id
    :initarg :measurement_context_id
    :type cl:string
    :initform "")
   (grasp_quality
    :reader grasp_quality
    :initarg :grasp_quality
    :type cl:float
    :initform 0.0)
   (estimation_confidence
    :reader estimation_confidence
    :initarg :estimation_confidence
    :type cl:float
    :initform 0.0)
   (grasp_category
    :reader grasp_category
    :initarg :grasp_category
    :type cl:integer
    :initform 0))
)

(cl:defclass GraspStability (<GraspStability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspStability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspStability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasp_stability_msgs-msg:<GraspStability> is deprecated: use grasp_stability_msgs-msg:GraspStability instead.")))

(cl:ensure-generic-function 'measurement_context_id-val :lambda-list '(m))
(cl:defmethod measurement_context_id-val ((m <GraspStability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-msg:measurement_context_id-val is deprecated.  Use grasp_stability_msgs-msg:measurement_context_id instead.")
  (measurement_context_id m))

(cl:ensure-generic-function 'grasp_quality-val :lambda-list '(m))
(cl:defmethod grasp_quality-val ((m <GraspStability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-msg:grasp_quality-val is deprecated.  Use grasp_stability_msgs-msg:grasp_quality instead.")
  (grasp_quality m))

(cl:ensure-generic-function 'estimation_confidence-val :lambda-list '(m))
(cl:defmethod estimation_confidence-val ((m <GraspStability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-msg:estimation_confidence-val is deprecated.  Use grasp_stability_msgs-msg:estimation_confidence instead.")
  (estimation_confidence m))

(cl:ensure-generic-function 'grasp_category-val :lambda-list '(m))
(cl:defmethod grasp_category-val ((m <GraspStability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasp_stability_msgs-msg:grasp_category-val is deprecated.  Use grasp_stability_msgs-msg:grasp_category instead.")
  (grasp_category m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GraspStability>)))
    "Constants for message type '<GraspStability>"
  '((:GRASP_CAT_UNDEFINED . 0)
    (:GRASP_CAT_GOOD . 1)
    (:GRASP_CAT_MEDIUM . 2)
    (:GRASP_CAT_BAD . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GraspStability)))
    "Constants for message type 'GraspStability"
  '((:GRASP_CAT_UNDEFINED . 0)
    (:GRASP_CAT_GOOD . 1)
    (:GRASP_CAT_MEDIUM . 2)
    (:GRASP_CAT_BAD . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspStability>) ostream)
  "Serializes a message object of type '<GraspStability>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'measurement_context_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'measurement_context_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grasp_quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'estimation_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'grasp_category)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspStability>) istream)
  "Deserializes a message object of type '<GraspStability>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'measurement_context_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'measurement_context_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grasp_quality) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'estimation_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grasp_category) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspStability>)))
  "Returns string type for a message object of type '<GraspStability>"
  "grasp_stability_msgs/GraspStability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspStability)))
  "Returns string type for a message object of type 'GraspStability"
  "grasp_stability_msgs/GraspStability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspStability>)))
  "Returns md5sum for a message object of type '<GraspStability>"
  "27f85b330ae8a5e5c97d0bc8c3a83f4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspStability)))
  "Returns md5sum for a message object of type 'GraspStability"
  "27f85b330ae8a5e5c97d0bc8c3a83f4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspStability>)))
  "Returns full string definition for message of type '<GraspStability>"
  (cl:format cl:nil "## All of these fields are subject to change as the discussion about~%## integration of grasp stability estimation and CRAM progresses~%~%~%# For telling different grasp stability estimations (i.e. multiple~%# arms that are monitored simultaneously) apart.~%string measurement_context_id~%~%# Functional data, describing the results of the estimation, and~%# the confidence in the result.~%float32 grasp_quality		# range: 0.0 - 1.0~%float32 estimation_confidence	# range: 0.0 - 1.0~%~%# Grasp category, based on the above values~%int32 GRASP_CAT_UNDEFINED=0~%int32 GRASP_CAT_GOOD=1~%int32 GRASP_CAT_MEDIUM=2~%int32 GRASP_CAT_BAD=3~%~%int32 grasp_category		# the category of the grasp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspStability)))
  "Returns full string definition for message of type 'GraspStability"
  (cl:format cl:nil "## All of these fields are subject to change as the discussion about~%## integration of grasp stability estimation and CRAM progresses~%~%~%# For telling different grasp stability estimations (i.e. multiple~%# arms that are monitored simultaneously) apart.~%string measurement_context_id~%~%# Functional data, describing the results of the estimation, and~%# the confidence in the result.~%float32 grasp_quality		# range: 0.0 - 1.0~%float32 estimation_confidence	# range: 0.0 - 1.0~%~%# Grasp category, based on the above values~%int32 GRASP_CAT_UNDEFINED=0~%int32 GRASP_CAT_GOOD=1~%int32 GRASP_CAT_MEDIUM=2~%int32 GRASP_CAT_BAD=3~%~%int32 grasp_category		# the category of the grasp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspStability>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'measurement_context_id))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspStability>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspStability
    (cl:cons ':measurement_context_id (measurement_context_id msg))
    (cl:cons ':grasp_quality (grasp_quality msg))
    (cl:cons ':estimation_confidence (estimation_confidence msg))
    (cl:cons ':grasp_category (grasp_category msg))
))
