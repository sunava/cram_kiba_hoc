// Auto-generated. Do not edit!

// (in-package designator_integration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class KeyValuePair {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.parent = null;
      this.type = null;
      this.key = null;
      this.value_string = null;
      this.value_float = null;
      this.value_data = null;
      this.value_array = null;
      this.value_posestamped = null;
      this.value_pose = null;
      this.value_point = null;
      this.value_wrench = null;
      this.value_transformstamped = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('parent')) {
        this.parent = initObj.parent
      }
      else {
        this.parent = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('value_string')) {
        this.value_string = initObj.value_string
      }
      else {
        this.value_string = '';
      }
      if (initObj.hasOwnProperty('value_float')) {
        this.value_float = initObj.value_float
      }
      else {
        this.value_float = 0.0;
      }
      if (initObj.hasOwnProperty('value_data')) {
        this.value_data = initObj.value_data
      }
      else {
        this.value_data = [];
      }
      if (initObj.hasOwnProperty('value_array')) {
        this.value_array = initObj.value_array
      }
      else {
        this.value_array = [];
      }
      if (initObj.hasOwnProperty('value_posestamped')) {
        this.value_posestamped = initObj.value_posestamped
      }
      else {
        this.value_posestamped = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('value_pose')) {
        this.value_pose = initObj.value_pose
      }
      else {
        this.value_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('value_point')) {
        this.value_point = initObj.value_point
      }
      else {
        this.value_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('value_wrench')) {
        this.value_wrench = initObj.value_wrench
      }
      else {
        this.value_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('value_transformstamped')) {
        this.value_transformstamped = initObj.value_transformstamped
      }
      else {
        this.value_transformstamped = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyValuePair
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [parent]
    bufferOffset = _serializer.int32(obj.parent, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [value_string]
    bufferOffset = _serializer.string(obj.value_string, buffer, bufferOffset);
    // Serialize message field [value_float]
    bufferOffset = _serializer.float64(obj.value_float, buffer, bufferOffset);
    // Serialize message field [value_data]
    bufferOffset = _arraySerializer.char(obj.value_data, buffer, bufferOffset, null);
    // Serialize message field [value_array]
    bufferOffset = _arraySerializer.float64(obj.value_array, buffer, bufferOffset, null);
    // Serialize message field [value_posestamped]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.value_posestamped, buffer, bufferOffset);
    // Serialize message field [value_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.value_pose, buffer, bufferOffset);
    // Serialize message field [value_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.value_point, buffer, bufferOffset);
    // Serialize message field [value_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.value_wrench, buffer, bufferOffset);
    // Serialize message field [value_transformstamped]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.value_transformstamped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyValuePair
    let len;
    let data = new KeyValuePair(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parent]
    data.parent = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value_string]
    data.value_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value_float]
    data.value_float = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [value_data]
    data.value_data = _arrayDeserializer.char(buffer, bufferOffset, null)
    // Deserialize message field [value_array]
    data.value_array = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [value_posestamped]
    data.value_posestamped = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [value_pose]
    data.value_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [value_point]
    data.value_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [value_wrench]
    data.value_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [value_transformstamped]
    data.value_transformstamped = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    length += object.value_string.length;
    length += object.value_data.length;
    length += 8 * object.value_array.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.value_posestamped);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.value_transformstamped);
    return length + 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'designator_integration_msgs/KeyValuePair';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1028427513befe30073351bcecef205';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Purely for (de-)serialization purposes
    int32 id
    int32 parent
    
    # Data
    int32 TYPE_STRING=0
    int32 TYPE_FLOAT=1
    int32 TYPE_DATA=2
    int32 TYPE_LIST=3
    int32 TYPE_POSESTAMPED=4
    int32 TYPE_POSE=5
    int32 TYPE_DESIGNATOR_ACTION=6
    int32 TYPE_DESIGNATOR_OBJECT=7
    int32 TYPE_DESIGNATOR_LOCATION=8
    int32 TYPE_DESIGNATOR_HUMAN=9
    int32 TYPE_POINT=10
    int32 TYPE_WRENCH=11
    int32 TYPE_MATRIX=12
    int32 TYPE_VECTOR=13
    int32 TYPE_TRANSFORMSTAMPED=14
    
    int32 type
    
    string key
    string value_string
    float64 value_float
    char[] value_data
    float64[] value_array
    geometry_msgs/PoseStamped value_posestamped
    geometry_msgs/Pose value_pose
    geometry_msgs/Point value_point
    geometry_msgs/Wrench value_wrench
    geometry_msgs/TransformStamped value_transformstamped
    
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
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeyValuePair(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.parent !== undefined) {
      resolved.parent = msg.parent;
    }
    else {
      resolved.parent = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.value_string !== undefined) {
      resolved.value_string = msg.value_string;
    }
    else {
      resolved.value_string = ''
    }

    if (msg.value_float !== undefined) {
      resolved.value_float = msg.value_float;
    }
    else {
      resolved.value_float = 0.0
    }

    if (msg.value_data !== undefined) {
      resolved.value_data = msg.value_data;
    }
    else {
      resolved.value_data = []
    }

    if (msg.value_array !== undefined) {
      resolved.value_array = msg.value_array;
    }
    else {
      resolved.value_array = []
    }

    if (msg.value_posestamped !== undefined) {
      resolved.value_posestamped = geometry_msgs.msg.PoseStamped.Resolve(msg.value_posestamped)
    }
    else {
      resolved.value_posestamped = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.value_pose !== undefined) {
      resolved.value_pose = geometry_msgs.msg.Pose.Resolve(msg.value_pose)
    }
    else {
      resolved.value_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.value_point !== undefined) {
      resolved.value_point = geometry_msgs.msg.Point.Resolve(msg.value_point)
    }
    else {
      resolved.value_point = new geometry_msgs.msg.Point()
    }

    if (msg.value_wrench !== undefined) {
      resolved.value_wrench = geometry_msgs.msg.Wrench.Resolve(msg.value_wrench)
    }
    else {
      resolved.value_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.value_transformstamped !== undefined) {
      resolved.value_transformstamped = geometry_msgs.msg.TransformStamped.Resolve(msg.value_transformstamped)
    }
    else {
      resolved.value_transformstamped = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

// Constants for message
KeyValuePair.Constants = {
  TYPE_STRING: 0,
  TYPE_FLOAT: 1,
  TYPE_DATA: 2,
  TYPE_LIST: 3,
  TYPE_POSESTAMPED: 4,
  TYPE_POSE: 5,
  TYPE_DESIGNATOR_ACTION: 6,
  TYPE_DESIGNATOR_OBJECT: 7,
  TYPE_DESIGNATOR_LOCATION: 8,
  TYPE_DESIGNATOR_HUMAN: 9,
  TYPE_POINT: 10,
  TYPE_WRENCH: 11,
  TYPE_MATRIX: 12,
  TYPE_VECTOR: 13,
  TYPE_TRANSFORMSTAMPED: 14,
}

module.exports = KeyValuePair;
