// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MultiDOFJointState = require('./MultiDOFJointState.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_state = null;
      this.multi_dof_joint_state = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_state')) {
        this.joint_state = initObj.joint_state
      }
      else {
        this.joint_state = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('multi_dof_joint_state')) {
        this.multi_dof_joint_state = initObj.multi_dof_joint_state
      }
      else {
        this.multi_dof_joint_state = new MultiDOFJointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [joint_state]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.joint_state, buffer, bufferOffset);
    // Serialize message field [multi_dof_joint_state]
    bufferOffset = MultiDOFJointState.serialize(obj.multi_dof_joint_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [joint_state]
    data.joint_state = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [multi_dof_joint_state]
    data.multi_dof_joint_state = MultiDOFJointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.joint_state);
    length += MultiDOFJointState.getMessageSize(object.multi_dof_joint_state);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_kinematics_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '970d46b2ca41b9686adbdaeb592d97a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information about the robot state, i.e. the positions of its joints and links
    sensor_msgs/JointState joint_state
    iai_kinematics_msgs/MultiDOFJointState multi_dof_joint_state
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    
    ================================================================================
    MSG: iai_kinematics_msgs/MultiDOFJointState
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
    const resolved = new RobotState(null);
    if (msg.joint_state !== undefined) {
      resolved.joint_state = sensor_msgs.msg.JointState.Resolve(msg.joint_state)
    }
    else {
      resolved.joint_state = new sensor_msgs.msg.JointState()
    }

    if (msg.multi_dof_joint_state !== undefined) {
      resolved.multi_dof_joint_state = MultiDOFJointState.Resolve(msg.multi_dof_joint_state)
    }
    else {
      resolved.multi_dof_joint_state = new MultiDOFJointState()
    }

    return resolved;
    }
};

module.exports = RobotState;
