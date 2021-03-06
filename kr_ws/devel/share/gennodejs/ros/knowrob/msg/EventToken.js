// Auto-generated. Do not edit!

// (in-package knowrob.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EventToken {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.polarization = null;
      this.event_type = null;
      this.participants = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('polarization')) {
        this.polarization = initObj.polarization
      }
      else {
        this.polarization = 0;
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = '';
      }
      if (initObj.hasOwnProperty('participants')) {
        this.participants = initObj.participants
      }
      else {
        this.participants = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventToken
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [polarization]
    bufferOffset = _serializer.int32(obj.polarization, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = _serializer.string(obj.event_type, buffer, bufferOffset);
    // Serialize message field [participants]
    bufferOffset = _arraySerializer.string(obj.participants, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventToken
    let len;
    let data = new EventToken(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [polarization]
    data.polarization = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [participants]
    data.participants = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.event_type.length;
    object.participants.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'knowrob/EventToken';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef1605ad2e6ea74763902600ec3f2947';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 EVENT_BEGIN=0
    uint8 EVENT_END=1
    
    float64 timestamp
    int32 polarization
    string event_type
    string[] participants
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventToken(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.polarization !== undefined) {
      resolved.polarization = msg.polarization;
    }
    else {
      resolved.polarization = 0
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = msg.event_type;
    }
    else {
      resolved.event_type = ''
    }

    if (msg.participants !== undefined) {
      resolved.participants = msg.participants;
    }
    else {
      resolved.participants = []
    }

    return resolved;
    }
};

// Constants for message
EventToken.Constants = {
  EVENT_BEGIN: 0,
  EVENT_END: 1,
}

module.exports = EventToken;
