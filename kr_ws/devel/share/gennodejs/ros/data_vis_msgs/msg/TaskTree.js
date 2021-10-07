// Auto-generated. Do not edit!

// (in-package data_vis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Task = require('./Task.js');

//-----------------------------------------------------------

class TaskTree {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height = null;
      this.width = null;
      this.tree = null;
    }
    else {
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('tree')) {
        this.tree = initObj.tree
      }
      else {
        this.tree = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskTree
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [tree]
    // Serialize the length for message field [tree]
    bufferOffset = _serializer.uint32(obj.tree.length, buffer, bufferOffset);
    obj.tree.forEach((val) => {
      bufferOffset = Task.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskTree
    let len;
    let data = new TaskTree(null);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tree]
    // Deserialize array length for message field [tree]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tree = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tree[i] = Task.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.tree.forEach((val) => {
      length += Task.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'data_vis_msgs/TaskTree';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68804d281c645f8fa26a5b5cf3727638';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 height
    int32 width
    Task[] tree
    
    ================================================================================
    MSG: data_vis_msgs/Task
    int32 id
    int32 parent
    string color
    string info
    string type
    string tip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskTree(null);
    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.tree !== undefined) {
      resolved.tree = new Array(msg.tree.length);
      for (let i = 0; i < resolved.tree.length; ++i) {
        resolved.tree[i] = Task.Resolve(msg.tree[i]);
      }
    }
    else {
      resolved.tree = []
    }

    return resolved;
    }
};

module.exports = TaskTree;
