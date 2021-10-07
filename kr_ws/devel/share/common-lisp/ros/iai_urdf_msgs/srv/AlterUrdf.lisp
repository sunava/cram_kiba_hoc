; Auto-generated. Do not edit!


(cl:in-package iai_urdf_msgs-srv)


;//! \htmlinclude AlterUrdf-request.msg.html

(cl:defclass <AlterUrdf-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (xml_elements_to_add
    :reader xml_elements_to_add
    :initarg :xml_elements_to_add
    :type cl:string
    :initform "")
   (element_names_to_remove
    :reader element_names_to_remove
    :initarg :element_names_to_remove
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass AlterUrdf-request (<AlterUrdf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlterUrdf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlterUrdf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_urdf_msgs-srv:<AlterUrdf-request> is deprecated: use iai_urdf_msgs-srv:AlterUrdf-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <AlterUrdf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_urdf_msgs-srv:action-val is deprecated.  Use iai_urdf_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'xml_elements_to_add-val :lambda-list '(m))
(cl:defmethod xml_elements_to_add-val ((m <AlterUrdf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_urdf_msgs-srv:xml_elements_to_add-val is deprecated.  Use iai_urdf_msgs-srv:xml_elements_to_add instead.")
  (xml_elements_to_add m))

(cl:ensure-generic-function 'element_names_to_remove-val :lambda-list '(m))
(cl:defmethod element_names_to_remove-val ((m <AlterUrdf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_urdf_msgs-srv:element_names_to_remove-val is deprecated.  Use iai_urdf_msgs-srv:element_names_to_remove instead.")
  (element_names_to_remove m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AlterUrdf-request>)))
    "Constants for message type '<AlterUrdf-request>"
  '((:ADD . 1)
    (:REMOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AlterUrdf-request)))
    "Constants for message type 'AlterUrdf-request"
  '((:ADD . 1)
    (:REMOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlterUrdf-request>) ostream)
  "Serializes a message object of type '<AlterUrdf-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'xml_elements_to_add))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'xml_elements_to_add))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'element_names_to_remove))))
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
   (cl:slot-value msg 'element_names_to_remove))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlterUrdf-request>) istream)
  "Deserializes a message object of type '<AlterUrdf-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xml_elements_to_add) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'xml_elements_to_add) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'element_names_to_remove) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'element_names_to_remove)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlterUrdf-request>)))
  "Returns string type for a service object of type '<AlterUrdf-request>"
  "iai_urdf_msgs/AlterUrdfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlterUrdf-request)))
  "Returns string type for a service object of type 'AlterUrdf-request"
  "iai_urdf_msgs/AlterUrdfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlterUrdf-request>)))
  "Returns md5sum for a message object of type '<AlterUrdf-request>"
  "3b731db7cc750f692e4b9188b114d807")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlterUrdf-request)))
  "Returns md5sum for a message object of type 'AlterUrdf-request"
  "3b731db7cc750f692e4b9188b114d807")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlterUrdf-request>)))
  "Returns full string definition for message of type '<AlterUrdf-request>"
  (cl:format cl:nil "#request constants~%int8 ADD=1~%int8 REMOVE=2~%#request fields~%int8 action~%#xml to add to the urdf~%string xml_elements_to_add~%#names of the joint and links to remove from the urdf~%string[] element_names_to_remove~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlterUrdf-request)))
  "Returns full string definition for message of type 'AlterUrdf-request"
  (cl:format cl:nil "#request constants~%int8 ADD=1~%int8 REMOVE=2~%#request fields~%int8 action~%#xml to add to the urdf~%string xml_elements_to_add~%#names of the joint and links to remove from the urdf~%string[] element_names_to_remove~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlterUrdf-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'xml_elements_to_add))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'element_names_to_remove) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlterUrdf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AlterUrdf-request
    (cl:cons ':action (action msg))
    (cl:cons ':xml_elements_to_add (xml_elements_to_add msg))
    (cl:cons ':element_names_to_remove (element_names_to_remove msg))
))
;//! \htmlinclude AlterUrdf-response.msg.html

(cl:defclass <AlterUrdf-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AlterUrdf-response (<AlterUrdf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlterUrdf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlterUrdf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_urdf_msgs-srv:<AlterUrdf-response> is deprecated: use iai_urdf_msgs-srv:AlterUrdf-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AlterUrdf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_urdf_msgs-srv:success-val is deprecated.  Use iai_urdf_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlterUrdf-response>) ostream)
  "Serializes a message object of type '<AlterUrdf-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlterUrdf-response>) istream)
  "Deserializes a message object of type '<AlterUrdf-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlterUrdf-response>)))
  "Returns string type for a service object of type '<AlterUrdf-response>"
  "iai_urdf_msgs/AlterUrdfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlterUrdf-response)))
  "Returns string type for a service object of type 'AlterUrdf-response"
  "iai_urdf_msgs/AlterUrdfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlterUrdf-response>)))
  "Returns md5sum for a message object of type '<AlterUrdf-response>"
  "3b731db7cc750f692e4b9188b114d807")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlterUrdf-response)))
  "Returns md5sum for a message object of type 'AlterUrdf-response"
  "3b731db7cc750f692e4b9188b114d807")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlterUrdf-response>)))
  "Returns full string definition for message of type '<AlterUrdf-response>"
  (cl:format cl:nil "#response fields~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlterUrdf-response)))
  "Returns full string definition for message of type 'AlterUrdf-response"
  (cl:format cl:nil "#response fields~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlterUrdf-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlterUrdf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AlterUrdf-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AlterUrdf)))
  'AlterUrdf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AlterUrdf)))
  'AlterUrdf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlterUrdf)))
  "Returns string type for a service object of type '<AlterUrdf>"
  "iai_urdf_msgs/AlterUrdf")