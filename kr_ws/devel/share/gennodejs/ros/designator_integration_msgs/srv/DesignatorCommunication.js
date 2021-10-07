// Auto-generated. Do not edit!

// (in-package designator_integration_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DesignatorRequest = require('../msg/DesignatorRequest.js');

//-----------------------------------------------------------

let DesignatorResponse = require('../msg/DesignatorResponse.js');

//-----------------------------------------------------------

class DesignatorCommunicationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new DesignatorRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesignatorCommunicationRequest
    // Serialize message field [request]
    bufferOffset = DesignatorRequest.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesignatorCommunicationRequest
    let len;
    let data = new DesignatorCommunicationRequest(null);
    // Deserialize message field [request]
    data.request = DesignatorRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DesignatorRequest.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'designator_integration_msgs/DesignatorCommunicationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4481249db37f11e5ce84692ede879600';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DesignatorRequest request
    
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
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DesignatorCommunicationRequest(null);
    if (msg.request !== undefined) {
      resolved.request = DesignatorRequest.Resolve(msg.request)
    }
    else {
      resolved.request = new DesignatorRequest()
    }

    return resolved;
    }
};

class DesignatorCommunicationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = new DesignatorResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesignatorCommunicationResponse
    // Serialize message field [response]
    bufferOffset = DesignatorResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesignatorCommunicationResponse
    let len;
    let data = new DesignatorCommunicationResponse(null);
    // Deserialize message field [response]
    data.response = DesignatorResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DesignatorResponse.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'designator_integration_msgs/DesignatorCommunicationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69c4a44d2478586df9e43704f570d430';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DesignatorCommunicationResponse(null);
    if (msg.response !== undefined) {
      resolved.response = DesignatorResponse.Resolve(msg.response)
    }
    else {
      resolved.response = new DesignatorResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: DesignatorCommunicationRequest,
  Response: DesignatorCommunicationResponse,
  md5sum() { return '8f8b294dbadbca716e0316b887c4f788'; },
  datatype() { return 'designator_integration_msgs/DesignatorCommunication'; }
};
