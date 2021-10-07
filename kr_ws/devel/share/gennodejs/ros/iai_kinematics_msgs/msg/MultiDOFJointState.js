// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MultiDOFJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.joint_names = null;
      this.frame_ids = null;
      this.child_frame_ids = null;
      this.poses = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('frame_ids')) {
        this.frame_ids = initObj.frame_ids
      }
      else {
        this.frame_ids = [];
      }
      if (initObj.hasOwnProperty('child_frame_ids')) {
        this.child_frame_ids = initObj.child_frame_ids
      }
      else {
        this.child_frame_ids = [];
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiDOFJointState
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [frame_ids]
    bufferOffset = _arraySerializer.string(obj.frame_ids, buffer, bufferOffset, null);
    // Serialize message field [child_frame_ids]
    bufferOffset = _arraySerializer.string(obj.child_frame_ids, buffer, bufferOffset, null);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiDOFJointState
    let len;
    let data = new MultiDOFJointState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [frame_ids]
    data.frame_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [child_frame_ids]
    data.child_frame_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.frame_ids.forEach((val) => {
      length += 4 + val.length;
    });
    object.child_frame_ids.forEach((val) => {
      length += 4 + val.length;
    });
    length += 56 * object.poses.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_kinematics_msgs/MultiDOFJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddd04f13c06870db031db8d5c0a6379d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #A representation of a multi-dof joint state
    time stamp
    string[] joint_names
    string[] frame_ids
    string[] child_frame_ids
    geometry_msgs/Pose[] poses
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiDOFJointState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.frame_ids !== undefined) {
      resolved.frame_ids = msg.frame_ids;
    }
    else {
      resolved.frame_ids = []
    }

    if (msg.child_frame_ids !== undefined) {
      resolved.child_frame_ids = msg.child_frame_ids;
    }
    else {
      resolved.child_frame_ids = []
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    return resolved;
    }
};

module.exports = MultiDOFJointState;
