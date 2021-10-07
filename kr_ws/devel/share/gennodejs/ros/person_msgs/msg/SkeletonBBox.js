// Auto-generated. Do not edit!

// (in-package person_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SkeletonBBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.dimension3D = null;
      this.centroid3D = null;
      this.dimension2D = null;
      this.centroid2D = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('dimension3D')) {
        this.dimension3D = initObj.dimension3D
      }
      else {
        this.dimension3D = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('centroid3D')) {
        this.centroid3D = initObj.centroid3D
      }
      else {
        this.centroid3D = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('dimension2D')) {
        this.dimension2D = initObj.dimension2D
      }
      else {
        this.dimension2D = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('centroid2D')) {
        this.centroid2D = initObj.centroid2D
      }
      else {
        this.centroid2D = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SkeletonBBox
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [dimension3D]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.dimension3D, buffer, bufferOffset);
    // Serialize message field [centroid3D]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centroid3D, buffer, bufferOffset);
    // Serialize message field [dimension2D]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.dimension2D, buffer, bufferOffset);
    // Serialize message field [centroid2D]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centroid2D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SkeletonBBox
    let len;
    let data = new SkeletonBBox(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimension3D]
    data.dimension3D = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid3D]
    data.centroid3D = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimension2D]
    data.dimension2D = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid2D]
    data.centroid2D = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'person_msgs/SkeletonBBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7381be9dad84730eae9a875b5e16a8fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    #Dimension 3D
    geometry_msgs/Point32 dimension3D
    
    #Center 3D
    geometry_msgs/Point32 centroid3D
    
    #Dimension 2D
    geometry_msgs/Point32 dimension2D
    
    #Center 2D
    geometry_msgs/Point32 centroid2D
    
    
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
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SkeletonBBox(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.dimension3D !== undefined) {
      resolved.dimension3D = geometry_msgs.msg.Point32.Resolve(msg.dimension3D)
    }
    else {
      resolved.dimension3D = new geometry_msgs.msg.Point32()
    }

    if (msg.centroid3D !== undefined) {
      resolved.centroid3D = geometry_msgs.msg.Point32.Resolve(msg.centroid3D)
    }
    else {
      resolved.centroid3D = new geometry_msgs.msg.Point32()
    }

    if (msg.dimension2D !== undefined) {
      resolved.dimension2D = geometry_msgs.msg.Point32.Resolve(msg.dimension2D)
    }
    else {
      resolved.dimension2D = new geometry_msgs.msg.Point32()
    }

    if (msg.centroid2D !== undefined) {
      resolved.centroid2D = geometry_msgs.msg.Point32.Resolve(msg.centroid2D)
    }
    else {
      resolved.centroid2D = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = SkeletonBBox;
