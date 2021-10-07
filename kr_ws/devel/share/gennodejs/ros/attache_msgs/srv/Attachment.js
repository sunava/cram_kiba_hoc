// Auto-generated. Do not edit!

// (in-package attache_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AttachmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model1 = null;
      this.link1 = null;
      this.model2 = null;
      this.link2 = null;
    }
    else {
      if (initObj.hasOwnProperty('model1')) {
        this.model1 = initObj.model1
      }
      else {
        this.model1 = '';
      }
      if (initObj.hasOwnProperty('link1')) {
        this.link1 = initObj.link1
      }
      else {
        this.link1 = '';
      }
      if (initObj.hasOwnProperty('model2')) {
        this.model2 = initObj.model2
      }
      else {
        this.model2 = '';
      }
      if (initObj.hasOwnProperty('link2')) {
        this.link2 = initObj.link2
      }
      else {
        this.link2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AttachmentRequest
    // Serialize message field [model1]
    bufferOffset = _serializer.string(obj.model1, buffer, bufferOffset);
    // Serialize message field [link1]
    bufferOffset = _serializer.string(obj.link1, buffer, bufferOffset);
    // Serialize message field [model2]
    bufferOffset = _serializer.string(obj.model2, buffer, bufferOffset);
    // Serialize message field [link2]
    bufferOffset = _serializer.string(obj.link2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AttachmentRequest
    let len;
    let data = new AttachmentRequest(null);
    // Deserialize message field [model1]
    data.model1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link1]
    data.link1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model2]
    data.model2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link2]
    data.link2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model1.length;
    length += object.link1.length;
    length += object.model2.length;
    length += object.link2.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'attache_msgs/AttachmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba35c904b2a348ba808f20c86dcbabd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model1
    string link1
    
    string model2
    string link2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AttachmentRequest(null);
    if (msg.model1 !== undefined) {
      resolved.model1 = msg.model1;
    }
    else {
      resolved.model1 = ''
    }

    if (msg.link1 !== undefined) {
      resolved.link1 = msg.link1;
    }
    else {
      resolved.link1 = ''
    }

    if (msg.model2 !== undefined) {
      resolved.model2 = msg.model2;
    }
    else {
      resolved.model2 = ''
    }

    if (msg.link2 !== undefined) {
      resolved.link2 = msg.link2;
    }
    else {
      resolved.link2 = ''
    }

    return resolved;
    }
};

class AttachmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AttachmentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AttachmentResponse
    let len;
    let data = new AttachmentResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'attache_msgs/AttachmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AttachmentResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AttachmentRequest,
  Response: AttachmentResponse,
  md5sum() { return 'c66622a43bf3cac88540c60ce36d5b63'; },
  datatype() { return 'attache_msgs/Attachment'; }
};
