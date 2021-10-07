// Auto-generated. Do not edit!

// (in-package json_prolog_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PrologNextSolutionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrologNextSolutionRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrologNextSolutionRequest
    let len;
    let data = new PrologNextSolutionRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'json_prolog_msgs/PrologNextSolutionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbfcda76036ebbe3d36caf7af80b260c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrologNextSolutionRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    return resolved;
    }
};

class PrologNextSolutionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.solution = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('solution')) {
        this.solution = initObj.solution
      }
      else {
        this.solution = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrologNextSolutionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.byte(obj.status, buffer, bufferOffset);
    // Serialize message field [solution]
    bufferOffset = _serializer.string(obj.solution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrologNextSolutionResponse
    let len;
    let data = new PrologNextSolutionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [solution]
    data.solution = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.solution.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'json_prolog_msgs/PrologNextSolutionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13aa54b7380a45414b5c48869ecbe7c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte NO_SOLUTION = 0
    byte WRONG_ID = 1
    byte QUERY_FAILED = 2
    byte OK = 3
    
    byte status
    string solution
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrologNextSolutionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.solution !== undefined) {
      resolved.solution = msg.solution;
    }
    else {
      resolved.solution = ''
    }

    return resolved;
    }
};

// Constants for message
PrologNextSolutionResponse.Constants = {
  NO_SOLUTION: 0,
  WRONG_ID: 1,
  QUERY_FAILED: 2,
  OK: 3,
}

module.exports = {
  Request: PrologNextSolutionRequest,
  Response: PrologNextSolutionResponse,
  md5sum() { return 'b101f472df7bcb78cc53cd5a17ecbda9'; },
  datatype() { return 'json_prolog_msgs/PrologNextSolution'; }
};
