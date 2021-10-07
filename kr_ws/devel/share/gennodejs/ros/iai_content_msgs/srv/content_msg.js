// Auto-generated. Do not edit!

// (in-package iai_content_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class content_msgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depth = null;
      this.depth_grasped = null;
    }
    else {
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth_grasped')) {
        this.depth_grasped = initObj.depth_grasped
      }
      else {
        this.depth_grasped = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type content_msgRequest
    // Serialize message field [depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth, buffer, bufferOffset);
    // Serialize message field [depth_grasped]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth_grasped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type content_msgRequest
    let len;
    let data = new content_msgRequest(null);
    // Deserialize message field [depth]
    data.depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_grasped]
    data.depth_grasped = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.depth);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth_grasped);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_content_msgs/content_msgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd454ceb7dbd72bbd7263e50d386a9436';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image depth 
    sensor_msgs/Image depth_grasped
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    const resolved = new content_msgRequest(null);
    if (msg.depth !== undefined) {
      resolved.depth = sensor_msgs.msg.Image.Resolve(msg.depth)
    }
    else {
      resolved.depth = new sensor_msgs.msg.Image()
    }

    if (msg.depth_grasped !== undefined) {
      resolved.depth_grasped = sensor_msgs.msg.Image.Resolve(msg.depth_grasped)
    }
    else {
      resolved.depth_grasped = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class content_msgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type content_msgResponse
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type content_msgResponse
    let len;
    let data = new content_msgResponse(null);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.content.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iai_content_msgs/content_msgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e84951ee6d0addf437bfddd5b19734';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string content
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new content_msgResponse(null);
    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: content_msgRequest,
  Response: content_msgResponse,
  md5sum() { return 'cd8f4c57d396801edf6a2140ccb6506e'; },
  datatype() { return 'iai_content_msgs/content_msg'; }
};
