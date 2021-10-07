// Auto-generated. Do not edit!

// (in-package data_vis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ValueList = require('./ValueList.js');

//-----------------------------------------------------------

class DataVis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.title = null;
      this.xlabel = null;
      this.ylabel = null;
      this.width = null;
      this.height = null;
      this.fontsize = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('xlabel')) {
        this.xlabel = initObj.xlabel
      }
      else {
        this.xlabel = '';
      }
      if (initObj.hasOwnProperty('ylabel')) {
        this.ylabel = initObj.ylabel
      }
      else {
        this.ylabel = '';
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('fontsize')) {
        this.fontsize = initObj.fontsize
      }
      else {
        this.fontsize = '';
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataVis
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [xlabel]
    bufferOffset = _serializer.string(obj.xlabel, buffer, bufferOffset);
    // Serialize message field [ylabel]
    bufferOffset = _serializer.string(obj.ylabel, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [fontsize]
    bufferOffset = _serializer.string(obj.fontsize, buffer, bufferOffset);
    // Serialize message field [values]
    // Serialize the length for message field [values]
    bufferOffset = _serializer.uint32(obj.values.length, buffer, bufferOffset);
    obj.values.forEach((val) => {
      bufferOffset = ValueList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataVis
    let len;
    let data = new DataVis(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [xlabel]
    data.xlabel = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ylabel]
    data.ylabel = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fontsize]
    data.fontsize = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [values]
    // Deserialize array length for message field [values]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.values = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.values[i] = ValueList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.title.length;
    length += object.xlabel.length;
    length += object.ylabel.length;
    length += object.fontsize.length;
    object.values.forEach((val) => {
      length += ValueList.getMessageSize(val);
    });
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'data_vis_msgs/DataVis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54fc13c6e72b87a9c5ab7e772c90e8f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 TYPE_PIECHART=0
    int32 TYPE_BARCHART=1
    int32 TYPE_TREECHART=2
    int32 TYPE_TIMELINE=3
    int32 TYPE_LINECHART=4
    
    string id
    int32 type
    string title
    string xlabel
    string ylabel
    int32 width
    int32 height
    string fontsize
    ValueList[] values
    
    ================================================================================
    MSG: data_vis_msgs/ValueList
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
    const resolved = new DataVis(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.xlabel !== undefined) {
      resolved.xlabel = msg.xlabel;
    }
    else {
      resolved.xlabel = ''
    }

    if (msg.ylabel !== undefined) {
      resolved.ylabel = msg.ylabel;
    }
    else {
      resolved.ylabel = ''
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.fontsize !== undefined) {
      resolved.fontsize = msg.fontsize;
    }
    else {
      resolved.fontsize = ''
    }

    if (msg.values !== undefined) {
      resolved.values = new Array(msg.values.length);
      for (let i = 0; i < resolved.values.length; ++i) {
        resolved.values[i] = ValueList.Resolve(msg.values[i]);
      }
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

// Constants for message
DataVis.Constants = {
  TYPE_PIECHART: 0,
  TYPE_BARCHART: 1,
  TYPE_TREECHART: 2,
  TYPE_TIMELINE: 3,
  TYPE_LINECHART: 4,
}

module.exports = DataVis;
