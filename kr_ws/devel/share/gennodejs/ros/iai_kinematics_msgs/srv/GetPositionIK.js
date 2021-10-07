// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionIKRequest = require('../msg/PositionIKRequest.js');

//-----------------------------------------------------------

let RobotState = require('../msg/RobotState.js');
let ErrorCodes = require('../msg/ErrorCodes.js');

//-----------------------------------------------------------

class GetPositionIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ik_request = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('ik_request')) {
        this.ik_request = initObj.ik_request
      }
      else {
        this.ik_request = new PositionIKRequest();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPositionIKRequest
    // Serialize message field [ik_request]
    bufferOffset = PositionIKRequest.serialize(obj.ik_request, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.duration(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionIKRequest
    let len;
    let data = new GetPositionIKRequest(null);
    // Deserialize message field [ik_request]
    data.ik_request = PositionIKRequest.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PositionIKRequest.getMessageSize(object.ik_request);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetPositionIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf9ee33930d9eaff390b8af4a213ba62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A service call to carry out an inverse kinematics computation
    # The inverse kinematics request
    iai_kinematics_msgs/PositionIKRequest ik_request
    # Maximum allowed time for IK calculation
    duration timeout
    
    ================================================================================
    MSG: iai_kinematics_msgs/PositionIKRequest
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
    const resolved = new GetPositionIKRequest(null);
    if (msg.ik_request !== undefined) {
      resolved.ik_request = PositionIKRequest.Resolve(msg.ik_request)
    }
    else {
      resolved.ik_request = new PositionIKRequest()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class GetPositionIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.solution = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('solution')) {
        this.solution = initObj.solution
      }
      else {
        this.solution = new RobotState();
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
    // Serializes a message object of type GetPositionIKResponse
    // Serialize message field [solution]
    bufferOffset = RobotState.serialize(obj.solution, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = ErrorCodes.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionIKResponse
    let len;
    let data = new GetPositionIKResponse(null);
    // Deserialize message field [solution]
    data.solution = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = ErrorCodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RobotState.getMessageSize(object.solution);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetPositionIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a8bbc4eb2775fe00cbd09858fd3dc65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The returned solution 
    # (in the same order as the list of joints specified in the IKRequest message)
    iai_kinematics_msgs/RobotState solution
    
    iai_kinematics_msgs/ErrorCodes error_code
    
    
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
    const resolved = new GetPositionIKResponse(null);
    if (msg.solution !== undefined) {
      resolved.solution = RobotState.Resolve(msg.solution)
    }
    else {
      resolved.solution = new RobotState()
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
  Request: GetPositionIKRequest,
  Response: GetPositionIKResponse,
  md5sum() { return '6d82fcb918d48c6d8a708bc55e34ace2'; },
  datatype() { return 'iai_kinematics_msgs/GetPositionIK'; }
};
