// Auto-generated. Do not edit!

// (in-package planning_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Binding = require('../msg/Binding.js');

//-----------------------------------------------------------

let Plan = require('../msg/Plan.js');

//-----------------------------------------------------------

class PlanningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pattern = null;
      this.bindings = null;
      this.scoring_methods = null;
    }
    else {
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = '';
      }
      if (initObj.hasOwnProperty('bindings')) {
        this.bindings = initObj.bindings
      }
      else {
        this.bindings = [];
      }
      if (initObj.hasOwnProperty('scoring_methods')) {
        this.scoring_methods = initObj.scoring_methods
      }
      else {
        this.scoring_methods = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningRequest
    // Serialize message field [pattern]
    bufferOffset = _serializer.string(obj.pattern, buffer, bufferOffset);
    // Serialize message field [bindings]
    // Serialize the length for message field [bindings]
    bufferOffset = _serializer.uint32(obj.bindings.length, buffer, bufferOffset);
    obj.bindings.forEach((val) => {
      bufferOffset = Binding.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [scoring_methods]
    bufferOffset = _arraySerializer.string(obj.scoring_methods, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningRequest
    let len;
    let data = new PlanningRequest(null);
    // Deserialize message field [pattern]
    data.pattern = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bindings]
    // Deserialize array length for message field [bindings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bindings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bindings[i] = Binding.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [scoring_methods]
    data.scoring_methods = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pattern.length;
    object.bindings.forEach((val) => {
      length += Binding.getMessageSize(val);
    });
    object.scoring_methods.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning_msgs/PlanningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df3573d1c696fbd0479c044049b5e3a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Scoring methods
    string OSPT="ospt"
    string PSPT="pspt"
    string LPFO="lpfo"
    
    # Request fields
    string pattern
    Binding[] bindings
    string[] scoring_methods
    
    ================================================================================
    MSG: planning_msgs/Binding
    # Constants for determining the datatype encapsulated in the `value` string
    int32 STRING=0
    int32 INT=1
    int32 FLOAT=2
    int32 SYMBOL=3
    
    # The actual fields
    int32 type
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningRequest(null);
    if (msg.pattern !== undefined) {
      resolved.pattern = msg.pattern;
    }
    else {
      resolved.pattern = ''
    }

    if (msg.bindings !== undefined) {
      resolved.bindings = new Array(msg.bindings.length);
      for (let i = 0; i < resolved.bindings.length; ++i) {
        resolved.bindings[i] = Binding.Resolve(msg.bindings[i]);
      }
    }
    else {
      resolved.bindings = []
    }

    if (msg.scoring_methods !== undefined) {
      resolved.scoring_methods = msg.scoring_methods;
    }
    else {
      resolved.scoring_methods = []
    }

    return resolved;
    }
};

// Constants for message
PlanningRequest.Constants = {
  OSPT: '"ospt"',
  PSPT: '"pspt"',
  LPFO: '"lpfo"',
}

class PlanningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plans = null;
      this.unused_bindings = null;
    }
    else {
      if (initObj.hasOwnProperty('plans')) {
        this.plans = initObj.plans
      }
      else {
        this.plans = [];
      }
      if (initObj.hasOwnProperty('unused_bindings')) {
        this.unused_bindings = initObj.unused_bindings
      }
      else {
        this.unused_bindings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningResponse
    // Serialize message field [plans]
    // Serialize the length for message field [plans]
    bufferOffset = _serializer.uint32(obj.plans.length, buffer, bufferOffset);
    obj.plans.forEach((val) => {
      bufferOffset = Plan.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unused_bindings]
    bufferOffset = _arraySerializer.string(obj.unused_bindings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningResponse
    let len;
    let data = new PlanningResponse(null);
    // Deserialize message field [plans]
    // Deserialize array length for message field [plans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.plans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.plans[i] = Plan.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unused_bindings]
    data.unused_bindings = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.plans.forEach((val) => {
      length += Plan.getMessageSize(val);
    });
    object.unused_bindings.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planning_msgs/PlanningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dbce147047db5e837c94aabe63a5256';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Response fields
    Plan[] plans
    string[] unused_bindings
    
    
    ================================================================================
    MSG: planning_msgs/Plan
    Step[] steps
    
    # This score is the same as the root step's score; placing it here as
    # well out of convience reasons for the receiving node.
    float32 score
    float32[] duration
    
    ================================================================================
    MSG: planning_msgs/Step
    int32 id
    int32 parent
    string type
    string pattern
    string[] call_pattern
    Binding[] bindings
    float32 score
    float32[] duration
    ================================================================================
    MSG: planning_msgs/Binding
    # Constants for determining the datatype encapsulated in the `value` string
    int32 STRING=0
    int32 INT=1
    int32 FLOAT=2
    int32 SYMBOL=3
    
    # The actual fields
    int32 type
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningResponse(null);
    if (msg.plans !== undefined) {
      resolved.plans = new Array(msg.plans.length);
      for (let i = 0; i < resolved.plans.length; ++i) {
        resolved.plans[i] = Plan.Resolve(msg.plans[i]);
      }
    }
    else {
      resolved.plans = []
    }

    if (msg.unused_bindings !== undefined) {
      resolved.unused_bindings = msg.unused_bindings;
    }
    else {
      resolved.unused_bindings = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanningRequest,
  Response: PlanningResponse,
  md5sum() { return '63b30a5b2209d6af2bdcdcf4940aca3f'; },
  datatype() { return 'planning_msgs/Planning'; }
};
