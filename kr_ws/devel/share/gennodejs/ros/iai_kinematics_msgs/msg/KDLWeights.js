// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KDLWeights {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.weight_ts = null;
      this.weight_js = null;
      this.lambda = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('weight_ts')) {
        this.weight_ts = initObj.weight_ts
      }
      else {
        this.weight_ts = new Array(36).fill(0);
      }
      if (initObj.hasOwnProperty('weight_js')) {
        this.weight_js = initObj.weight_js
      }
      else {
        this.weight_js = [];
      }
      if (initObj.hasOwnProperty('lambda')) {
        this.lambda = initObj.lambda
      }
      else {
        this.lambda = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KDLWeights
    // Serialize message field [mode]
    bufferOffset = _serializer.byte(obj.mode, buffer, bufferOffset);
    // Check that the constant length array field [weight_ts] has the right length
    if (obj.weight_ts.length !== 36) {
      throw new Error('Unable to serialize array field weight_ts - length must be 36')
    }
    // Serialize message field [weight_ts]
    bufferOffset = _arraySerializer.float64(obj.weight_ts, buffer, bufferOffset, 36);
    // Serialize message field [weight_js]
    bufferOffset = _arraySerializer.float64(obj.weight_js, buffer, bufferOffset, null);
    // Serialize message field [lambda]
    bufferOffset = _serializer.float64(obj.lambda, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KDLWeights
    let len;
    let data = new KDLWeights(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [weight_ts]
    data.weight_ts = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    // Deserialize message field [weight_js]
    data.weight_js = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lambda]
    data.lambda = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.weight_js.length;
    return length + 301;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_kinematics_msgs/KDLWeights';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '986315cd29a99987092b708377dfd2ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte INVALID_MODE = 0
    byte SET_TS = 1
    byte SET_JS = 2
    byte SET_LAMBDA = 4
    byte SET_TS_JS = 3
    
    byte mode                  # or-combination of values to set
    float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order
    float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order
    float64 lambda             # Lambda value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KDLWeights(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.weight_ts !== undefined) {
      resolved.weight_ts = msg.weight_ts;
    }
    else {
      resolved.weight_ts = new Array(36).fill(0)
    }

    if (msg.weight_js !== undefined) {
      resolved.weight_js = msg.weight_js;
    }
    else {
      resolved.weight_js = []
    }

    if (msg.lambda !== undefined) {
      resolved.lambda = msg.lambda;
    }
    else {
      resolved.lambda = 0.0
    }

    return resolved;
    }
};

// Constants for message
KDLWeights.Constants = {
  INVALID_MODE: 0,
  SET_TS: 1,
  SET_JS: 2,
  SET_LAMBDA: 4,
  SET_TS_JS: 3,
}

module.exports = KDLWeights;
