; Auto-generated. Do not edit!


(cl:in-package planning_msgs-srv)


;//! \htmlinclude Planning-request.msg.html

(cl:defclass <Planning-request> (roslisp-msg-protocol:ros-message)
  ((pattern
    :reader pattern
    :initarg :pattern
    :type cl:string
    :initform "")
   (bindings
    :reader bindings
    :initarg :bindings
    :type (cl:vector planning_msgs-msg:Binding)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Binding :initial-element (cl:make-instance 'planning_msgs-msg:Binding)))
   (scoring_methods
    :reader scoring_methods
    :initarg :scoring_methods
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Planning-request (<Planning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<Planning-request> is deprecated: use planning_msgs-srv:Planning-request instead.")))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <Planning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:pattern-val is deprecated.  Use planning_msgs-srv:pattern instead.")
  (pattern m))

(cl:ensure-generic-function 'bindings-val :lambda-list '(m))
(cl:defmethod bindings-val ((m <Planning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:bindings-val is deprecated.  Use planning_msgs-srv:bindings instead.")
  (bindings m))

(cl:ensure-generic-function 'scoring_methods-val :lambda-list '(m))
(cl:defmethod scoring_methods-val ((m <Planning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:scoring_methods-val is deprecated.  Use planning_msgs-srv:scoring_methods instead.")
  (scoring_methods m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Planning-request>)))
    "Constants for message type '<Planning-request>"
  '((:OSPT . "ospt")
    (:PSPT . "pspt")
    (:LPFO . "lpfo"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Planning-request)))
    "Constants for message type 'Planning-request"
  '((:OSPT . "ospt")
    (:PSPT . "pspt")
    (:LPFO . "lpfo"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planning-request>) ostream)
  "Serializes a message object of type '<Planning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pattern))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pattern))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bindings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bindings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scoring_methods))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'scoring_methods))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planning-request>) istream)
  "Deserializes a message object of type '<Planning-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pattern) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pattern) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bindings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bindings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Binding))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scoring_methods) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scoring_methods)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planning-request>)))
  "Returns string type for a service object of type '<Planning-request>"
  "planning_msgs/PlanningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planning-request)))
  "Returns string type for a service object of type 'Planning-request"
  "planning_msgs/PlanningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planning-request>)))
  "Returns md5sum for a message object of type '<Planning-request>"
  "63b30a5b2209d6af2bdcdcf4940aca3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planning-request)))
  "Returns md5sum for a message object of type 'Planning-request"
  "63b30a5b2209d6af2bdcdcf4940aca3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planning-request>)))
  "Returns full string definition for message of type '<Planning-request>"
  (cl:format cl:nil "# Scoring methods~%string OSPT=\"ospt\"~%string PSPT=\"pspt\"~%string LPFO=\"lpfo\"~%~%# Request fields~%string pattern~%Binding[] bindings~%string[] scoring_methods~%~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planning-request)))
  "Returns full string definition for message of type 'Planning-request"
  (cl:format cl:nil "# Scoring methods~%string OSPT=\"ospt\"~%string PSPT=\"pspt\"~%string LPFO=\"lpfo\"~%~%# Request fields~%string pattern~%Binding[] bindings~%string[] scoring_methods~%~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pattern))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bindings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scoring_methods) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Planning-request
    (cl:cons ':pattern (pattern msg))
    (cl:cons ':bindings (bindings msg))
    (cl:cons ':scoring_methods (scoring_methods msg))
))
;//! \htmlinclude Planning-response.msg.html

(cl:defclass <Planning-response> (roslisp-msg-protocol:ros-message)
  ((plans
    :reader plans
    :initarg :plans
    :type (cl:vector planning_msgs-msg:Plan)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Plan :initial-element (cl:make-instance 'planning_msgs-msg:Plan)))
   (unused_bindings
    :reader unused_bindings
    :initarg :unused_bindings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Planning-response (<Planning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<Planning-response> is deprecated: use planning_msgs-srv:Planning-response instead.")))

(cl:ensure-generic-function 'plans-val :lambda-list '(m))
(cl:defmethod plans-val ((m <Planning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:plans-val is deprecated.  Use planning_msgs-srv:plans instead.")
  (plans m))

(cl:ensure-generic-function 'unused_bindings-val :lambda-list '(m))
(cl:defmethod unused_bindings-val ((m <Planning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:unused_bindings-val is deprecated.  Use planning_msgs-srv:unused_bindings instead.")
  (unused_bindings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planning-response>) ostream)
  "Serializes a message object of type '<Planning-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plans))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unused_bindings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'unused_bindings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planning-response>) istream)
  "Deserializes a message object of type '<Planning-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Plan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unused_bindings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unused_bindings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planning-response>)))
  "Returns string type for a service object of type '<Planning-response>"
  "planning_msgs/PlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planning-response)))
  "Returns string type for a service object of type 'Planning-response"
  "planning_msgs/PlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planning-response>)))
  "Returns md5sum for a message object of type '<Planning-response>"
  "63b30a5b2209d6af2bdcdcf4940aca3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planning-response)))
  "Returns md5sum for a message object of type 'Planning-response"
  "63b30a5b2209d6af2bdcdcf4940aca3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planning-response>)))
  "Returns full string definition for message of type '<Planning-response>"
  (cl:format cl:nil "# Response fields~%Plan[] plans~%string[] unused_bindings~%~%~%================================================================================~%MSG: planning_msgs/Plan~%Step[] steps~%~%# This score is the same as the root step's score; placing it here as~%# well out of convience reasons for the receiving node.~%float32 score~%float32[] duration~%~%================================================================================~%MSG: planning_msgs/Step~%int32 id~%int32 parent~%string type~%string pattern~%string[] call_pattern~%Binding[] bindings~%float32 score~%float32[] duration~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planning-response)))
  "Returns full string definition for message of type 'Planning-response"
  (cl:format cl:nil "# Response fields~%Plan[] plans~%string[] unused_bindings~%~%~%================================================================================~%MSG: planning_msgs/Plan~%Step[] steps~%~%# This score is the same as the root step's score; placing it here as~%# well out of convience reasons for the receiving node.~%float32 score~%float32[] duration~%~%================================================================================~%MSG: planning_msgs/Step~%int32 id~%int32 parent~%string type~%string pattern~%string[] call_pattern~%Binding[] bindings~%float32 score~%float32[] duration~%================================================================================~%MSG: planning_msgs/Binding~%# Constants for determining the datatype encapsulated in the `value` string~%int32 STRING=0~%int32 INT=1~%int32 FLOAT=2~%int32 SYMBOL=3~%~%# The actual fields~%int32 type~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planning-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unused_bindings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Planning-response
    (cl:cons ':plans (plans msg))
    (cl:cons ':unused_bindings (unused_bindings msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Planning)))
  'Planning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Planning)))
  'Planning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planning)))
  "Returns string type for a service object of type '<Planning>"
  "planning_msgs/Planning")