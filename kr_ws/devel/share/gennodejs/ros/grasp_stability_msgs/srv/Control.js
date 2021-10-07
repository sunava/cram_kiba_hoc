// Auto-generated. Do not edit!

// (in-package grasp_stability_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.measurement_context_id = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('measurement_context_id')) {
        this.measurement_context_id = initObj.measurement_context_id
      }
      else {
        this.measurement_context_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int32(obj.command, buffer, bufferOffset);
    // Serialize message field [measurement_context_id]
    bufferOffset = _serializer.string(obj.measurement_context_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlRequest
    let len;
    let data = new ControlRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [measurement_context_id]
    data.measurement_context_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.measurement_context_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'grasp_stability_msgs/ControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8c36ca9a454fdd1d9690e53d57a07c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 CTRL_START=0
    int32 CTRL_STOP=1
    int32 command
    string measurement_context_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.measurement_context_id !== undefined) {
      resolved.measurement_context_id = msg.measurement_context_id;
    }
    else {
      resolved.measurement_context_id = ''
    }

    return resolved;
    }
};

// Constants for message
ControlRequest.Constants = {
  CTRL_START: 0,
  CTRL_STOP: 1,
}

class ControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlResponse
    let len;
    let data = new ControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'grasp_stability_msgs/ControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d9206728848e73f5b28b05b46562257';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 FAILURE=0
    int32 SUCCESS=1
    int32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
ControlResponse.Constants = {
  FAILURE: 0,
  SUCCESS: 1,
}

module.exports = {
  Request: ControlRequest,
  Response: ControlResponse,
  md5sum() { return 'bf72fbddb94b79305e5d568733fc59be'; },
  datatype() { return 'grasp_stability_msgs/Control'; }
};
