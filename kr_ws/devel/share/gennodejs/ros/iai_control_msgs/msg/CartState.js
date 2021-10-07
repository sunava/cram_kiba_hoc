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

class CartState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.running = null;
      this.error = null;
      this.error_pos = null;
      this.error_rot = null;
      this.vel_norm = null;
      this.elapsed_seconds = null;
      this.ee_frame_name = null;
      this.base_frame_name = null;
    }
    else {
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('error_pos')) {
        this.error_pos = initObj.error_pos
      }
      else {
        this.error_pos = 0.0;
      }
      if (initObj.hasOwnProperty('error_rot')) {
        this.error_rot = initObj.error_rot
      }
      else {
        this.error_rot = 0.0;
      }
      if (initObj.hasOwnProperty('vel_norm')) {
        this.vel_norm = initObj.vel_norm
      }
      else {
        this.vel_norm = 0.0;
      }
      if (initObj.hasOwnProperty('elapsed_seconds')) {
        this.elapsed_seconds = initObj.elapsed_seconds
      }
      else {
        this.elapsed_seconds = 0.0;
      }
      if (initObj.hasOwnProperty('ee_frame_name')) {
        this.ee_frame_name = initObj.ee_frame_name
      }
      else {
        this.ee_frame_name = '';
      }
      if (initObj.hasOwnProperty('base_frame_name')) {
        this.base_frame_name = initObj.base_frame_name
      }
      else {
        this.base_frame_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartState
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    // Serialize message field [error_pos]
    bufferOffset = _serializer.float64(obj.error_pos, buffer, bufferOffset);
    // Serialize message field [error_rot]
    bufferOffset = _serializer.float64(obj.error_rot, buffer, bufferOffset);
    // Serialize message field [vel_norm]
    bufferOffset = _serializer.float64(obj.vel_norm, buffer, bufferOffset);
    // Serialize message field [elapsed_seconds]
    bufferOffset = _serializer.float64(obj.elapsed_seconds, buffer, bufferOffset);
    // Serialize message field [ee_frame_name]
    bufferOffset = _serializer.string(obj.ee_frame_name, buffer, bufferOffset);
    // Serialize message field [base_frame_name]
    bufferOffset = _serializer.string(obj.base_frame_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartState
    let len;
    let data = new CartState(null);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_pos]
    data.error_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_rot]
    data.error_rot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_norm]
    data.vel_norm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [elapsed_seconds]
    data.elapsed_seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ee_frame_name]
    data.ee_frame_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_frame_name]
    data.base_frame_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ee_frame_name.length;
    length += object.base_frame_name.length;
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_control_msgs/CartState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fdee31b50bcb0376e81235255a47390';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Report the state of the cartesian controller
    bool running   # Is the controller active?
    float64 error  # Represents distance to the goal
    float64 error_pos # norm of the cartesian position error
    float64 error_rot # norm of the cartesian orientation error
    float64 vel_norm # norm of the commanded velocity vector
    float64 elapsed_seconds # time since the last goal was set
    
    #geometry_msgs/PoseStamped goal_pose   # Has pose of the running goal
    string ee_frame_name  # Frame at the end of the kin. chain
    string base_frame_name # Frame at the beginning of the kin. chain
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartState(null);
    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.error_pos !== undefined) {
      resolved.error_pos = msg.error_pos;
    }
    else {
      resolved.error_pos = 0.0
    }

    if (msg.error_rot !== undefined) {
      resolved.error_rot = msg.error_rot;
    }
    else {
      resolved.error_rot = 0.0
    }

    if (msg.vel_norm !== undefined) {
      resolved.vel_norm = msg.vel_norm;
    }
    else {
      resolved.vel_norm = 0.0
    }

    if (msg.elapsed_seconds !== undefined) {
      resolved.elapsed_seconds = msg.elapsed_seconds;
    }
    else {
      resolved.elapsed_seconds = 0.0
    }

    if (msg.ee_frame_name !== undefined) {
      resolved.ee_frame_name = msg.ee_frame_name;
    }
    else {
      resolved.ee_frame_name = ''
    }

    if (msg.base_frame_name !== undefined) {
      resolved.base_frame_name = msg.base_frame_name;
    }
    else {
      resolved.base_frame_name = ''
    }

    return resolved;
    }
};

module.exports = CartState;
