// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Step = require('./Step.js');

//-----------------------------------------------------------

class Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steps = null;
      this.score = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('steps')) {
        this.steps = initObj.steps
      }
      else {
        this.steps = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plan
    // Serialize message field [steps]
    // Serialize the length for message field [steps]
    bufferOffset = _serializer.uint32(obj.steps.length, buffer, bufferOffset);
    obj.steps.forEach((val) => {
      bufferOffset = Step.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _arraySerializer.float32(obj.duration, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plan
    let len;
    let data = new Plan(null);
    // Deserialize message field [steps]
    // Deserialize array length for message field [steps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.steps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.steps[i] = Step.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.steps.forEach((val) => {
      length += Step.getMessageSize(val);
    });
    length += 4 * object.duration.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b01f5f5f81e029aa892db42087b5828';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Plan(null);
    if (msg.steps !== undefined) {
      resolved.steps = new Array(msg.steps.length);
      for (let i = 0; i < resolved.steps.length; ++i) {
        resolved.steps[i] = Step.Resolve(msg.steps[i]);
      }
    }
    else {
      resolved.steps = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = []
    }

    return resolved;
    }
};

module.exports = Plan;
