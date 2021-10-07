// Auto-generated. Do not edit!

// (in-package iai_kinematics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.val = null;
    }
    else {
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorCodes
    // Serialize message field [val]
    bufferOffset = _serializer.int32(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorCodes
    let len;
    let data = new ErrorCodes(null);
    // Deserialize message field [val]
    data.val = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iai_kinematics_msgs/ErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5acf26755415e1ec18a6d523028f204d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ErrorCodes(null);
    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0
    }

    return resolved;
    }
};

// Constants for message
ErrorCodes.Constants = {
  PLANNING_FAILED: -1,
  SUCCESS: 1,
  TIMED_OUT: -2,
  START_STATE_IN_COLLISION: -3,
  START_STATE_VIOLATES_PATH_CONSTRAINTS: -4,
  GOAL_IN_COLLISION: -5,
  GOAL_VIOLATES_PATH_CONSTRAINTS: -6,
  INVALID_ROBOT_STATE: -7,
  INCOMPLETE_ROBOT_STATE: -8,
  INVALID_PLANNER_ID: -9,
  INVALID_NUM_PLANNING_ATTEMPTS: -10,
  INVALID_ALLOWED_PLANNING_TIME: -11,
  INVALID_GROUP_NAME: -12,
  INVALID_GOAL_JOINT_CONSTRAINTS: -13,
  INVALID_GOAL_POSITION_CONSTRAINTS: -14,
  INVALID_GOAL_ORIENTATION_CONSTRAINTS: -15,
  INVALID_PATH_JOINT_CONSTRAINTS: -16,
  INVALID_PATH_POSITION_CONSTRAINTS: -17,
  INVALID_PATH_ORIENTATION_CONSTRAINTS: -18,
  INVALID_TRAJECTORY: -19,
  INVALID_INDEX: -20,
  JOINT_LIMITS_VIOLATED: -21,
  PATH_CONSTRAINTS_VIOLATED: -22,
  COLLISION_CONSTRAINTS_VIOLATED: -23,
  GOAL_CONSTRAINTS_VIOLATED: -24,
  JOINTS_NOT_MOVING: -25,
  TRAJECTORY_CONTROLLER_FAILED: -26,
  FRAME_TRANSFORM_FAILURE: -27,
  COLLISION_CHECKING_UNAVAILABLE: -28,
  ROBOT_STATE_STALE: -29,
  SENSOR_INFO_STALE: -30,
  NO_IK_SOLUTION: -31,
  INVALID_LINK_NAME: -32,
  IK_LINK_IN_COLLISION: -33,
  NO_FK_SOLUTION: -34,
  KINEMATICS_STATE_IN_COLLISION: -35,
  INVALID_TIMEOUT: -36,
}

module.exports = ErrorCodes;
