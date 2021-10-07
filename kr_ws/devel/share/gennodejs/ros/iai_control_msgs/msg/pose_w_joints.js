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

class pose_w_joints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_values = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_values')) {
        this.joint_values = initObj.joint_values
      }
      else {
        this.joint_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_w_joints
    // Serialize message field [joint_values]
    bufferOffset = _arraySerializer.float32(obj.joint_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_w_joints
    let len;
    let data = new pose_w_joints(null);
    // Deserialize message field [joint_values]
    data.joint_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_control_msgs/pose_w_joints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50b3293f6e585f2a02888f333d3c3e8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_w_joints(null);
    if (msg.joint_values !== undefined) {
      resolved.joint_values = msg.joint_values;
    }
    else {
      resolved.joint_values = []
    }

    return resolved;
    }
};

module.exports = pose_w_joints;
