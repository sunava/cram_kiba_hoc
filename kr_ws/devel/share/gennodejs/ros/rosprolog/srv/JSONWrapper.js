// Auto-generated. Do not edit!

// (in-package rosprolog.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JSONWrapperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.json_data = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('json_data')) {
        this.json_data = initObj.json_data
      }
      else {
        this.json_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JSONWrapperRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [json_data]
    bufferOffset = _serializer.string(obj.json_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JSONWrapperRequest
    let len;
    let data = new JSONWrapperRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [json_data]
    data.json_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.json_data.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosprolog/JSONWrapperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '600c5764c78cd158a89a10ca5449bf63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode
    string json_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JSONWrapperRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.json_data !== undefined) {
      resolved.json_data = msg.json_data;
    }
    else {
      resolved.json_data = ''
    }

    return resolved;
    }
};

class JSONWrapperResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.json_data = null;
    }
    else {
      if (initObj.hasOwnProperty('json_data')) {
        this.json_data = initObj.json_data
      }
      else {
        this.json_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JSONWrapperResponse
    // Serialize message field [json_data]
    bufferOffset = _serializer.string(obj.json_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JSONWrapperResponse
    let len;
    let data = new JSONWrapperResponse(null);
    // Deserialize message field [json_data]
    data.json_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.json_data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosprolog/JSONWrapperResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9746521c9702f088402691456216bc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string json_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JSONWrapperResponse(null);
    if (msg.json_data !== undefined) {
      resolved.json_data = msg.json_data;
    }
    else {
      resolved.json_data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: JSONWrapperRequest,
  Response: JSONWrapperResponse,
  md5sum() { return '711a21c0da0464ac74bbc6e6331ef069'; },
  datatype() { return 'rosprolog/JSONWrapper'; }
};
