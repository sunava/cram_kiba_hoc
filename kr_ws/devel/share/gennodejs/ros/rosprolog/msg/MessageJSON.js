// Auto-generated. Do not edit!

// (in-package rosprolog.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MessageJSON {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.json_data = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
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
    // Serializes a message object of type MessageJSON
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [json_data]
    bufferOffset = _serializer.string(obj.json_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageJSON
    let len;
    let data = new MessageJSON(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [json_data]
    data.json_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_name.length;
    length += object.json_data.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosprolog/MessageJSON';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '857e02159eb61b757a9aeb0effde4aa9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string topic_name
    string json_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MessageJSON(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
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

module.exports = MessageJSON;
