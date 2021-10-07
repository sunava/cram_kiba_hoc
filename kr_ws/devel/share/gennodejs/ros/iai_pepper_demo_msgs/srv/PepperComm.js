// Auto-generated. Do not edit!

// (in-package iai_pepper_demo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PepperCommRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speak = null;
      this.point_at = null;
      this.get_pose = null;
      this.get_heard = null;
    }
    else {
      if (initObj.hasOwnProperty('speak')) {
        this.speak = initObj.speak
      }
      else {
        this.speak = '';
      }
      if (initObj.hasOwnProperty('point_at')) {
        this.point_at = initObj.point_at
      }
      else {
        this.point_at = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('get_pose')) {
        this.get_pose = initObj.get_pose
      }
      else {
        this.get_pose = false;
      }
      if (initObj.hasOwnProperty('get_heard')) {
        this.get_heard = initObj.get_heard
      }
      else {
        this.get_heard = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PepperCommRequest
    // Serialize message field [speak]
    bufferOffset = _serializer.string(obj.speak, buffer, bufferOffset);
    // Serialize message field [point_at]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.point_at, buffer, bufferOffset);
    // Serialize message field [get_pose]
    bufferOffset = _serializer.bool(obj.get_pose, buffer, bufferOffset);
    // Serialize message field [get_heard]
    bufferOffset = _serializer.bool(obj.get_heard, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PepperCommRequest
    let len;
    let data = new PepperCommRequest(null);
    // Deserialize message field [speak]
    data.speak = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_at]
    data.point_at = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [get_pose]
    data.get_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [get_heard]
    data.get_heard = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.speak.length;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.point_at);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_pepper_demo_msgs/PepperCommRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6980118cc4956252ec67f5db0718491d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string speak
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PepperCommRequest(null);
    if (msg.speak !== undefined) {
      resolved.speak = msg.speak;
    }
    else {
      resolved.speak = ''
    }

    if (msg.point_at !== undefined) {
      resolved.point_at = geometry_msgs.msg.PointStamped.Resolve(msg.point_at)
    }
    else {
      resolved.point_at = new geometry_msgs.msg.PointStamped()
    }

    if (msg.get_pose !== undefined) {
      resolved.get_pose = msg.get_pose;
    }
    else {
      resolved.get_pose = false
    }

    if (msg.get_heard !== undefined) {
      resolved.get_heard = msg.get_heard;
    }
    else {
      resolved.get_heard = false
    }

    return resolved;
    }
};

class PepperCommResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pepper_pose = null;
      this.heard = null;
    }
    else {
      if (initObj.hasOwnProperty('pepper_pose')) {
        this.pepper_pose = initObj.pepper_pose
      }
      else {
        this.pepper_pose = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('heard')) {
        this.heard = initObj.heard
      }
      else {
        this.heard = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PepperCommResponse
    // Serialize message field [pepper_pose]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.pepper_pose, buffer, bufferOffset);
    // Serialize message field [heard]
    bufferOffset = _arraySerializer.string(obj.heard, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PepperCommResponse
    let len;
    let data = new PepperCommResponse(null);
    // Deserialize message field [pepper_pose]
    data.pepper_pose = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [heard]
    data.heard = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.pepper_pose);
    object.heard.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_pepper_demo_msgs/PepperCommResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f18dc2a384d597c14bdcfa251a016b90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/TransformStamped pepper_pose
    string[] heard
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PepperCommResponse(null);
    if (msg.pepper_pose !== undefined) {
      resolved.pepper_pose = geometry_msgs.msg.TransformStamped.Resolve(msg.pepper_pose)
    }
    else {
      resolved.pepper_pose = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.heard !== undefined) {
      resolved.heard = msg.heard;
    }
    else {
      resolved.heard = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PepperCommRequest,
  Response: PepperCommResponse,
  md5sum() { return '62367ba17406150d44dbf73edf243c81'; },
  datatype() { return 'iai_pepper_demo_msgs/PepperComm'; }
};
