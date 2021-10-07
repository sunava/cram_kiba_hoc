// Auto-generated. Do not edit!

// (in-package iai_urdf_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AlterUrdfRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.xml_elements_to_add = null;
      this.element_names_to_remove = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('xml_elements_to_add')) {
        this.xml_elements_to_add = initObj.xml_elements_to_add
      }
      else {
        this.xml_elements_to_add = '';
      }
      if (initObj.hasOwnProperty('element_names_to_remove')) {
        this.element_names_to_remove = initObj.element_names_to_remove
      }
      else {
        this.element_names_to_remove = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AlterUrdfRequest
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    // Serialize message field [xml_elements_to_add]
    bufferOffset = _serializer.string(obj.xml_elements_to_add, buffer, bufferOffset);
    // Serialize message field [element_names_to_remove]
    bufferOffset = _arraySerializer.string(obj.element_names_to_remove, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlterUrdfRequest
    let len;
    let data = new AlterUrdfRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [xml_elements_to_add]
    data.xml_elements_to_add = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [element_names_to_remove]
    data.element_names_to_remove = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.xml_elements_to_add.length;
    object.element_names_to_remove.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_urdf_msgs/AlterUrdfRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef7efe9a5c6f814f25e7f61e3fad05bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request constants
    int8 ADD=1
    int8 REMOVE=2
    #request fields
    int8 action
    #xml to add to the urdf
    string xml_elements_to_add
    #names of the joint and links to remove from the urdf
    string[] element_names_to_remove
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AlterUrdfRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.xml_elements_to_add !== undefined) {
      resolved.xml_elements_to_add = msg.xml_elements_to_add;
    }
    else {
      resolved.xml_elements_to_add = ''
    }

    if (msg.element_names_to_remove !== undefined) {
      resolved.element_names_to_remove = msg.element_names_to_remove;
    }
    else {
      resolved.element_names_to_remove = []
    }

    return resolved;
    }
};

// Constants for message
AlterUrdfRequest.Constants = {
  ADD: 1,
  REMOVE: 2,
}

class AlterUrdfResponse {
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
    // Serializes a message object of type AlterUrdfResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlterUrdfResponse
    let len;
    let data = new AlterUrdfResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_urdf_msgs/AlterUrdfResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response fields
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AlterUrdfResponse(null);
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
  Request: AlterUrdfRequest,
  Response: AlterUrdfResponse,
  md5sum() { return '3b731db7cc750f692e4b9188b114d807'; },
  datatype() { return 'iai_urdf_msgs/AlterUrdf'; }
};
