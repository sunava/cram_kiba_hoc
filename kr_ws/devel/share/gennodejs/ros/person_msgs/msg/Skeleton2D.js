// Auto-generated. Do not edit!

// (in-package person_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Skeleton2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.numberOfJoints = null;
      this.joints2D = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('numberOfJoints')) {
        this.numberOfJoints = initObj.numberOfJoints
      }
      else {
        this.numberOfJoints = 0;
      }
      if (initObj.hasOwnProperty('joints2D')) {
        this.joints2D = initObj.joints2D
      }
      else {
        this.joints2D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Skeleton2D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [numberOfJoints]
    bufferOffset = _serializer.int32(obj.numberOfJoints, buffer, bufferOffset);
    // Serialize message field [joints2D]
    bufferOffset = _arraySerializer.float32(obj.joints2D, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Skeleton2D
    let len;
    let data = new Skeleton2D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [numberOfJoints]
    data.numberOfJoints = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joints2D]
    data.joints2D = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.joints2D.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'person_msgs/Skeleton2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29355678924726e97e4d383a555e84ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    int32 numberOfJoints
    float32[] joints2D
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Skeleton2D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.numberOfJoints !== undefined) {
      resolved.numberOfJoints = msg.numberOfJoints;
    }
    else {
      resolved.numberOfJoints = 0
    }

    if (msg.joints2D !== undefined) {
      resolved.joints2D = msg.joints2D;
    }
    else {
      resolved.joints2D = []
    }

    return resolved;
    }
};

module.exports = Skeleton2D;
