// Auto-generated. Do not edit!

// (in-package iai_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointLimits {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.limits_lower = null;
      this.limits_upper = null;
      this.current_position = null;
      this.dist_to_lower = null;
      this.dist_to_upper = null;
      this.dist_to_closer = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('limits_lower')) {
        this.limits_lower = initObj.limits_lower
      }
      else {
        this.limits_lower = [];
      }
      if (initObj.hasOwnProperty('limits_upper')) {
        this.limits_upper = initObj.limits_upper
      }
      else {
        this.limits_upper = [];
      }
      if (initObj.hasOwnProperty('current_position')) {
        this.current_position = initObj.current_position
      }
      else {
        this.current_position = [];
      }
      if (initObj.hasOwnProperty('dist_to_lower')) {
        this.dist_to_lower = initObj.dist_to_lower
      }
      else {
        this.dist_to_lower = [];
      }
      if (initObj.hasOwnProperty('dist_to_upper')) {
        this.dist_to_upper = initObj.dist_to_upper
      }
      else {
        this.dist_to_upper = [];
      }
      if (initObj.hasOwnProperty('dist_to_closer')) {
        this.dist_to_closer = initObj.dist_to_closer
      }
      else {
        this.dist_to_closer = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointLimits
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [limits_lower]
    bufferOffset = _arraySerializer.float64(obj.limits_lower, buffer, bufferOffset, null);
    // Serialize message field [limits_upper]
    bufferOffset = _arraySerializer.float64(obj.limits_upper, buffer, bufferOffset, null);
    // Serialize message field [current_position]
    bufferOffset = _arraySerializer.float64(obj.current_position, buffer, bufferOffset, null);
    // Serialize message field [dist_to_lower]
    bufferOffset = _arraySerializer.float64(obj.dist_to_lower, buffer, bufferOffset, null);
    // Serialize message field [dist_to_upper]
    bufferOffset = _arraySerializer.float64(obj.dist_to_upper, buffer, bufferOffset, null);
    // Serialize message field [dist_to_closer]
    bufferOffset = _arraySerializer.float64(obj.dist_to_closer, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointLimits
    let len;
    let data = new JointLimits(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limits_lower]
    data.limits_lower = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [limits_upper]
    data.limits_upper = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [current_position]
    data.current_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dist_to_lower]
    data.dist_to_lower = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dist_to_upper]
    data.dist_to_upper = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dist_to_closer]
    data.dist_to_closer = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.limits_lower.length;
    length += 8 * object.limits_upper.length;
    length += 8 * object.current_position.length;
    length += 8 * object.dist_to_lower.length;
    length += 8 * object.dist_to_upper.length;
    length += 8 * object.dist_to_closer.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_control_msgs/JointLimits';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0da633688836e6915588ad2b309323f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    float64[] limits_lower
    float64[] limits_upper
    float64[] current_position
    float64[] dist_to_lower
    float64[] dist_to_upper
    float64[] dist_to_closer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointLimits(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.limits_lower !== undefined) {
      resolved.limits_lower = msg.limits_lower;
    }
    else {
      resolved.limits_lower = []
    }

    if (msg.limits_upper !== undefined) {
      resolved.limits_upper = msg.limits_upper;
    }
    else {
      resolved.limits_upper = []
    }

    if (msg.current_position !== undefined) {
      resolved.current_position = msg.current_position;
    }
    else {
      resolved.current_position = []
    }

    if (msg.dist_to_lower !== undefined) {
      resolved.dist_to_lower = msg.dist_to_lower;
    }
    else {
      resolved.dist_to_lower = []
    }

    if (msg.dist_to_upper !== undefined) {
      resolved.dist_to_upper = msg.dist_to_upper;
    }
    else {
      resolved.dist_to_upper = []
    }

    if (msg.dist_to_closer !== undefined) {
      resolved.dist_to_closer = msg.dist_to_closer;
    }
    else {
      resolved.dist_to_closer = []
    }

    return resolved;
    }
};

module.exports = JointLimits;
