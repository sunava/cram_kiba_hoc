// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Binding = require('./Binding.js');

//-----------------------------------------------------------

class Step {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.parent = null;
      this.type = null;
      this.pattern = null;
      this.call_pattern = null;
      this.bindings = null;
      this.score = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('parent')) {
        this.parent = initObj.parent
      }
      else {
        this.parent = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = '';
      }
      if (initObj.hasOwnProperty('call_pattern')) {
        this.call_pattern = initObj.call_pattern
      }
      else {
        this.call_pattern = [];
      }
      if (initObj.hasOwnProperty('bindings')) {
        this.bindings = initObj.bindings
      }
      else {
        this.bindings = [];
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
    // Serializes a message object of type Step
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [parent]
    bufferOffset = _serializer.int32(obj.parent, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [pattern]
    bufferOffset = _serializer.string(obj.pattern, buffer, bufferOffset);
    // Serialize message field [call_pattern]
    bufferOffset = _arraySerializer.string(obj.call_pattern, buffer, bufferOffset, null);
    // Serialize message field [bindings]
    // Serialize the length for message field [bindings]
    bufferOffset = _serializer.uint32(obj.bindings.length, buffer, bufferOffset);
    obj.bindings.forEach((val) => {
      bufferOffset = Binding.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _arraySerializer.float32(obj.duration, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Step
    let len;
    let data = new Step(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parent]
    data.parent = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pattern]
    data.pattern = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [call_pattern]
    data.call_pattern = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [bindings]
    // Deserialize array length for message field [bindings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bindings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bindings[i] = Binding.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.pattern.length;
    object.call_pattern.forEach((val) => {
      length += 4 + val.length;
    });
    object.bindings.forEach((val) => {
      length += Binding.getMessageSize(val);
    });
    length += 4 * object.duration.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Step';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '006ef20f0b34b2893a05e6bfad4c98c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Step(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.parent !== undefined) {
      resolved.parent = msg.parent;
    }
    else {
      resolved.parent = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = msg.pattern;
    }
    else {
      resolved.pattern = ''
    }

    if (msg.call_pattern !== undefined) {
      resolved.call_pattern = msg.call_pattern;
    }
    else {
      resolved.call_pattern = []
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

module.exports = Step;
