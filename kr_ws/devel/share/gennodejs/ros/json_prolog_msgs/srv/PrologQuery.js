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

class PrologQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.id = null;
      this.query = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrologQueryRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.byte(obj.mode, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [query]
    bufferOffset = _serializer.string(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrologQueryRequest
    let len;
    let data = new PrologQueryRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query]
    data.query = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.query.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'json_prolog_msgs/PrologQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae1d940ff32be0f4c9af16fc85baab7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The following constants, together with the `mode' slot, allow for
    # configuring how the prolog engine is supposed to generate
    # solutions. ALL_SOLUTIONS indicates that the query should be
    # processed completely immediately. INCREMENTAL indicates that only
    # one solution should be generated at one time whenever the
    # next_solution is called.
    
    byte ALL_SOLUTIONS=0
    byte INCREMENTAL=1
    
    byte mode
    string id
    string query
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrologQueryRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = ''
    }

    return resolved;
    }
};

// Constants for message
PrologQueryRequest.Constants = {
  ALL_SOLUTIONS: 0,
  INCREMENTAL: 1,
}

class PrologQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrologQueryResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrologQueryResponse
    let len;
    let data = new PrologQueryResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'json_prolog_msgs/PrologQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6fcb3b1ed8c7743c7fb7d5bcca28513';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrologQueryResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PrologQueryRequest,
  Response: PrologQueryResponse,
  md5sum() { return 'b98fb21a498cfd5b16c55f4b1f1cfa7d'; },
  datatype() { return 'json_prolog_msgs/PrologQuery'; }
};
