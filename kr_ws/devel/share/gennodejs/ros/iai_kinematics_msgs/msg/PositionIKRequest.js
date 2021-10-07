// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotState = require('./RobotState.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PositionIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ik_link_name = null;
      this.pose_stamped = null;
      this.ik_seed_state = null;
      this.robot_state = null;
    }
    else {
      if (initObj.hasOwnProperty('ik_link_name')) {
        this.ik_link_name = initObj.ik_link_name
      }
      else {
        this.ik_link_name = '';
      }
      if (initObj.hasOwnProperty('pose_stamped')) {
        this.pose_stamped = initObj.pose_stamped
      }
      else {
        this.pose_stamped = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('ik_seed_state')) {
        this.ik_seed_state = initObj.ik_seed_state
      }
      else {
        this.ik_seed_state = new RobotState();
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = new RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionIKRequest
    // Serialize message field [ik_link_name]
    bufferOffset = _serializer.string(obj.ik_link_name, buffer, bufferOffset);
    // Serialize message field [pose_stamped]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_stamped, buffer, bufferOffset);
    // Serialize message field [ik_seed_state]
    bufferOffset = RobotState.serialize(obj.ik_seed_state, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = RobotState.serialize(obj.robot_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionIKRequest
    let len;
    let data = new PositionIKRequest(null);
    // Deserialize message field [ik_link_name]
    data.ik_link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_stamped]
    data.pose_stamped = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [ik_seed_state]
    data.ik_seed_state = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ik_link_name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_stamped);
    length += RobotState.getMessageSize(object.ik_seed_state);
    length += RobotState.getMessageSize(object.robot_state);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_kinematics_msgs/PositionIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '737bb756c6253bdd460b1383d0b12dac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A Position IK request message
    # The name of the link for which we are computing IK
    string ik_link_name
    
    # The (stamped) pose of the link
    geometry_msgs/PoseStamped pose_stamped
    
    # A RobotState consisting of hint/seed positions for the IK computation. 
    # These may be used to seed the IK search. 
    # The seed state MUST contain state for all joints to be used by the IK solver
    # to compute IK. The list of joints that the IK solver deals with can be found using
    # the kinematics_msgs/GetKinematicSolverInfo
    iai_kinematics_msgs/RobotState ik_seed_state
    
    # Additional state information can be provided here to specify the starting positions 
    # of other joints/links on the robot.
    iai_kinematics_msgs/RobotState robot_state
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: iai_kinematics_msgs/RobotState
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
    MSG: iai_kinematics_msgs/MultiDOFJointState
    #A representation of a multi-dof joint state
    time stamp
    string[] joint_names
    string[] frame_ids
    string[] child_frame_ids
    geometry_msgs/Pose[] poses
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionIKRequest(null);
    if (msg.ik_link_name !== undefined) {
      resolved.ik_link_name = msg.ik_link_name;
    }
    else {
      resolved.ik_link_name = ''
    }

    if (msg.pose_stamped !== undefined) {
      resolved.pose_stamped = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamped)
    }
    else {
      resolved.pose_stamped = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.ik_seed_state !== undefined) {
      resolved.ik_seed_state = RobotState.Resolve(msg.ik_seed_state)
    }
    else {
      resolved.ik_seed_state = new RobotState()
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = RobotState.Resolve(msg.robot_state)
    }
    else {
      resolved.robot_state = new RobotState()
    }

    return resolved;
    }
};

module.exports = PositionIKRequest;
