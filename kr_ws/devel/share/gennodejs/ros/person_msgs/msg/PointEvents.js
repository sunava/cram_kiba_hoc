// Auto-generated. Do not edit!

// (in-package person_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PointEvents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.start = null;
      this.pointTo = null;
      this.leftHand = null;
      this.rightHand = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pointTo')) {
        this.pointTo = initObj.pointTo
      }
      else {
        this.pointTo = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('leftHand')) {
        this.leftHand = initObj.leftHand
      }
      else {
        this.leftHand = 0;
      }
      if (initObj.hasOwnProperty('rightHand')) {
        this.rightHand = initObj.rightHand
      }
      else {
        this.rightHand = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointEvents
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [pointTo]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pointTo, buffer, bufferOffset);
    // Serialize message field [leftHand]
    bufferOffset = _serializer.int8(obj.leftHand, buffer, bufferOffset);
    // Serialize message field [rightHand]
    bufferOffset = _serializer.int8(obj.rightHand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointEvents
    let len;
    let data = new PointEvents(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointTo]
    data.pointTo = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftHand]
    data.leftHand = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [rightHand]
    data.rightHand = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'person_msgs/PointEvents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cee902a1c7ee58854a293430e44aa05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    #Start of the joint
    geometry_msgs/Vector3 start
    
    #Vector direction
    geometry_msgs/Vector3 pointTo
    
    int8 leftHand
    int8 rightHand
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointEvents(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Vector3.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Vector3()
    }

    if (msg.pointTo !== undefined) {
      resolved.pointTo = geometry_msgs.msg.Vector3.Resolve(msg.pointTo)
    }
    else {
      resolved.pointTo = new geometry_msgs.msg.Vector3()
    }

    if (msg.leftHand !== undefined) {
      resolved.leftHand = msg.leftHand;
    }
    else {
      resolved.leftHand = 0
    }

    if (msg.rightHand !== undefined) {
      resolved.rightHand = msg.rightHand;
    }
    else {
      resolved.rightHand = 0
    }

    return resolved;
    }
};

module.exports = PointEvents;
