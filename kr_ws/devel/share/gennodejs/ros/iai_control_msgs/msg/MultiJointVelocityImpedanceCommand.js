// Auto-generated. Do not edit!

// (in-package iai_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MultiJointVelocityImpedanceCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.velocity = null;
      this.stiffness = null;
      this.damping = null;
      this.add_torque = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = [];
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = [];
      }
      if (initObj.hasOwnProperty('add_torque')) {
        this.add_torque = initObj.add_torque
      }
      else {
        this.add_torque = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiJointVelocityImpedanceCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [stiffness]
    bufferOffset = _arraySerializer.float32(obj.stiffness, buffer, bufferOffset, null);
    // Serialize message field [damping]
    bufferOffset = _arraySerializer.float32(obj.damping, buffer, bufferOffset, null);
    // Serialize message field [add_torque]
    bufferOffset = _arraySerializer.float32(obj.add_torque, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiJointVelocityImpedanceCommand
    let len;
    let data = new MultiJointVelocityImpedanceCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [stiffness]
    data.stiffness = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [damping]
    data.damping = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [add_torque]
    data.add_torque = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.velocity.length;
    length += 4 * object.stiffness.length;
    length += 4 * object.damping.length;
    length += 4 * object.add_torque.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_control_msgs/MultiJointVelocityImpedanceCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4747ea02611dd2a7cda90f6dce148aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Header
    Header header
    
    # Command to move a set of velocity-resolved robot joints 
    float32[] velocity     #joint velocity in rad/s
    float32[] stiffness    #joint stiffness in Nm/rad
    float32[] damping      #joint damping (normalized, 0.7 is critically dampped)
    
    # Experimental field: DO NOT USE unless you really know what you are doing!
    float32[] add_torque   #additional joint torque in Nm
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiJointVelocityImpedanceCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = []
    }

    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = []
    }

    if (msg.add_torque !== undefined) {
      resolved.add_torque = msg.add_torque;
    }
    else {
      resolved.add_torque = []
    }

    return resolved;
    }
};

module.exports = MultiJointVelocityImpedanceCommand;
