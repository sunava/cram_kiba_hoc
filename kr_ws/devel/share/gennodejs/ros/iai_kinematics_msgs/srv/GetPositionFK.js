// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotState = require('../msg/RobotState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let ErrorCodes = require('../msg/ErrorCodes.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetPositionFKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fk_link_names = null;
      this.robot_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fk_link_names')) {
        this.fk_link_names = initObj.fk_link_names
      }
      else {
        this.fk_link_names = [];
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
    // Serializes a message object of type GetPositionFKRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fk_link_names]
    bufferOffset = _arraySerializer.string(obj.fk_link_names, buffer, bufferOffset, null);
    // Serialize message field [robot_state]
    bufferOffset = RobotState.serialize(obj.robot_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionFKRequest
    let len;
    let data = new GetPositionFKRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fk_link_names]
    data.fk_link_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [robot_state]
    data.robot_state = RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.fk_link_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += RobotState.getMessageSize(object.robot_state);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetPositionFKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddaa8b9932e60599795bcb983e28cf57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A service definition for a standard forward kinematics service
    # The frame_id in the header message is the frame in which 
    # the forward kinematics poses will be returned
    Header header
    
    # A vector of link name for which forward kinematics must be computed
    string[] fk_link_names
    
    # A robot state consisting of joint names and joint positions to be used for forward kinematics
    iai_kinematics_msgs/RobotState robot_state
    
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
    const resolved = new GetPositionFKRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fk_link_names !== undefined) {
      resolved.fk_link_names = msg.fk_link_names;
    }
    else {
      resolved.fk_link_names = []
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

class GetPositionFKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_stamped = null;
      this.fk_link_names = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_stamped')) {
        this.pose_stamped = initObj.pose_stamped
      }
      else {
        this.pose_stamped = [];
      }
      if (initObj.hasOwnProperty('fk_link_names')) {
        this.fk_link_names = initObj.fk_link_names
      }
      else {
        this.fk_link_names = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new ErrorCodes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPositionFKResponse
    // Serialize message field [pose_stamped]
    // Serialize the length for message field [pose_stamped]
    bufferOffset = _serializer.uint32(obj.pose_stamped.length, buffer, bufferOffset);
    obj.pose_stamped.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [fk_link_names]
    bufferOffset = _arraySerializer.string(obj.fk_link_names, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = ErrorCodes.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionFKResponse
    let len;
    let data = new GetPositionFKResponse(null);
    // Deserialize message field [pose_stamped]
    // Deserialize array length for message field [pose_stamped]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_stamped = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_stamped[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [fk_link_names]
    data.fk_link_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = ErrorCodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_stamped.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    object.fk_link_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetPositionFKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a3efc190f6ac6f248069cfa3cd94286';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The resultant vector of PoseStamped messages that contains the (stamped) poses of the requested links
    geometry_msgs/PoseStamped[] pose_stamped
    
    # The list of link names corresponding to the poses
    string[] fk_link_names
    
    iai_kinematics_msgs/ErrorCodes error_code
    
    
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
    MSG: iai_kinematics_msgs/ErrorCodes
    int32 val
    
    # overall behavior
    int32 PLANNING_FAILED=-1
    int32 SUCCESS=1
    int32 TIMED_OUT=-2
    
    # start state errors
    int32 START_STATE_IN_COLLISION=-3
    int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4
    
    # goal errors
    int32 GOAL_IN_COLLISION=-5
    int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6
    
    # robot state
    int32 INVALID_ROBOT_STATE=-7
    int32 INCOMPLETE_ROBOT_STATE=-8
    
    # planning request errors
    int32 INVALID_PLANNER_ID=-9
    int32 INVALID_NUM_PLANNING_ATTEMPTS=-10
    int32 INVALID_ALLOWED_PLANNING_TIME=-11
    int32 INVALID_GROUP_NAME=-12
    int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13
    int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14
    int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15
    int32 INVALID_PATH_JOINT_CONSTRAINTS=-16
    int32 INVALID_PATH_POSITION_CONSTRAINTS=-17
    int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18
    
    # state/trajectory monitor errors
    int32 INVALID_TRAJECTORY=-19
    int32 INVALID_INDEX=-20
    int32 JOINT_LIMITS_VIOLATED=-21
    int32 PATH_CONSTRAINTS_VIOLATED=-22
    int32 COLLISION_CONSTRAINTS_VIOLATED=-23
    int32 GOAL_CONSTRAINTS_VIOLATED=-24
    int32 JOINTS_NOT_MOVING=-25
    int32 TRAJECTORY_CONTROLLER_FAILED=-26
    
    # system errors
    int32 FRAME_TRANSFORM_FAILURE=-27
    int32 COLLISION_CHECKING_UNAVAILABLE=-28
    int32 ROBOT_STATE_STALE=-29
    int32 SENSOR_INFO_STALE=-30
    
    # kinematics errors
    int32 NO_IK_SOLUTION=-31
    int32 INVALID_LINK_NAME=-32
    int32 IK_LINK_IN_COLLISION=-33
    int32 NO_FK_SOLUTION=-34
    int32 KINEMATICS_STATE_IN_COLLISION=-35
    
    # general errors
    int32 INVALID_TIMEOUT=-36
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPositionFKResponse(null);
    if (msg.pose_stamped !== undefined) {
      resolved.pose_stamped = new Array(msg.pose_stamped.length);
      for (let i = 0; i < resolved.pose_stamped.length; ++i) {
        resolved.pose_stamped[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamped[i]);
      }
    }
    else {
      resolved.pose_stamped = []
    }

    if (msg.fk_link_names !== undefined) {
      resolved.fk_link_names = msg.fk_link_names;
    }
    else {
      resolved.fk_link_names = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = ErrorCodes.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new ErrorCodes()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPositionFKRequest,
  Response: GetPositionFKResponse,
  md5sum() { return '2088007c8963e2252a67c872affa0985'; },
  datatype() { return 'iai_kinematics_msgs/GetPositionFK'; }
};
