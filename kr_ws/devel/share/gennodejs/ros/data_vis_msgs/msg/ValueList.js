// Auto-generated. Do not edit!

// (in-package data_vis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ValueList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.value1 = null;
      this.value2 = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('value1')) {
        this.value1 = initObj.value1
      }
      else {
        this.value1 = [];
      }
      if (initObj.hasOwnProperty('value2')) {
        this.value2 = initObj.value2
      }
      else {
        this.value2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ValueList
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [value1]
    bufferOffset = _arraySerializer.string(obj.value1, buffer, bufferOffset, null);
    // Serialize message field [value2]
    bufferOffset = _arraySerializer.string(obj.value2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ValueList
    let len;
    let data = new ValueList(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value1]
    data.value1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [value2]
    data.value2 = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    object.value1.forEach((val) => {
      length += 4 + val.length;
    });
    object.value2.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'data_vis_msgs/ValueList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93606cae4b5c86869b7aa221cf2b0b01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string label
    string[] value1
    string[] value2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ValueList(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.value1 !== undefined) {
      resolved.value1 = msg.value1;
    }
    else {
      resolved.value1 = []
    }

    if (msg.value2 !== undefined) {
      resolved.value2 = msg.value2;
    }
    else {
      resolved.value2 = []
    }

    return resolved;
    }
};

module.exports = ValueList;
