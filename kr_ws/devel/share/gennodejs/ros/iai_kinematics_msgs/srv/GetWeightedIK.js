// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KDLWeights = require('../msg/KDLWeights.js');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let ErrorCodes = require('../msg/ErrorCodes.js');

//-----------------------------------------------------------

class GetWeightedIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.tool_frame = null;
      this.ik_seed = null;
      this.weights = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('tool_frame')) {
        this.tool_frame = initObj.tool_frame
      }
      else {
        this.tool_frame = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('ik_seed')) {
        this.ik_seed = initObj.ik_seed
      }
      else {
        this.ik_seed = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = new KDLWeights();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWeightedIKRequest
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [tool_frame]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tool_frame, buffer, bufferOffset);
    // Serialize message field [ik_seed]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.ik_seed, buffer, bufferOffset);
    // Serialize message field [weights]
    bufferOffset = KDLWeights.serialize(obj.weights, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWeightedIKRequest
    let len;
    let data = new GetWeightedIKRequest(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [tool_frame]
    data.tool_frame = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [ik_seed]
    data.ik_seed = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [weights]
    data.weights = KDLWeights.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += sensor_msgs.msg.JointState.getMessageSize(object.ik_seed);
    length += KDLWeights.getMessageSize(object.weights);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetWeightedIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53b781873d4bc97a81274c9247a551d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the desired pose of the tool frame
    geometry_msgs/PoseStamped pose
    
    # tool frame defauts to x_wrist_roll_link
    geometry_msgs/Pose tool_frame
    
    # the joint space configuration to resolve redundancy
    sensor_msgs/JointState ik_seed
    
    # Weight matrices for IK solver
    iai_kinematics_msgs/KDLWeights weights
    
    
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
    MSG: iai_kinematics_msgs/KDLWeights
    byte INVALID_MODE = 0
    byte SET_TS = 1
    byte SET_JS = 2
    byte SET_LAMBDA = 4
    byte SET_TS_JS = 3
    
    byte mode                  # or-combination of values to set
    float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order
    float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order
    float64 lambda             # Lambda value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWeightedIKRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.tool_frame !== undefined) {
      resolved.tool_frame = geometry_msgs.msg.Pose.Resolve(msg.tool_frame)
    }
    else {
      resolved.tool_frame = new geometry_msgs.msg.Pose()
    }

    if (msg.ik_seed !== undefined) {
      resolved.ik_seed = sensor_msgs.msg.JointState.Resolve(msg.ik_seed)
    }
    else {
      resolved.ik_seed = new sensor_msgs.msg.JointState()
    }

    if (msg.weights !== undefined) {
      resolved.weights = KDLWeights.Resolve(msg.weights)
    }
    else {
      resolved.weights = new KDLWeights()
    }

    return resolved;
    }
};

class GetWeightedIKResponse {
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
        this.solution = new sensor_msgs.msg.JointState();
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
    // Serializes a message object of type GetWeightedIKResponse
    // Serialize message field [solution]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.solution, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = ErrorCodes.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWeightedIKResponse
    let len;
    let data = new GetWeightedIKResponse(null);
    // Deserialize message field [solution]
    data.solution = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = ErrorCodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.solution);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_kinematics_msgs/GetWeightedIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26703d3aa2f94a5367558f4749423a09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/JointState solution
    
    iai_kinematics_msgs/ErrorCodes error_code
    
    
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
    const resolved = new GetWeightedIKResponse(null);
    if (msg.solution !== undefined) {
      resolved.solution = sensor_msgs.msg.JointState.Resolve(msg.solution)
    }
    else {
      resolved.solution = new sensor_msgs.msg.JointState()
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
  Request: GetWeightedIKRequest,
  Response: GetWeightedIKResponse,
  md5sum() { return 'ae963d0cab638b025249ba90e48a170c'; },
  datatype() { return 'iai_kinematics_msgs/GetWeightedIK'; }
};
