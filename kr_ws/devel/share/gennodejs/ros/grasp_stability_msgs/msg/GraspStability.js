// Auto-generated. Do not edit!

// (in-package grasp_stability_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GraspStability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.measurement_context_id = null;
      this.grasp_quality = null;
      this.estimation_confidence = null;
      this.grasp_category = null;
    }
    else {
      if (initObj.hasOwnProperty('measurement_context_id')) {
        this.measurement_context_id = initObj.measurement_context_id
      }
      else {
        this.measurement_context_id = '';
      }
      if (initObj.hasOwnProperty('grasp_quality')) {
        this.grasp_quality = initObj.grasp_quality
      }
      else {
        this.grasp_quality = 0.0;
      }
      if (initObj.hasOwnProperty('estimation_confidence')) {
        this.estimation_confidence = initObj.estimation_confidence
      }
      else {
        this.estimation_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('grasp_category')) {
        this.grasp_category = initObj.grasp_category
      }
      else {
        this.grasp_category = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspStability
    // Serialize message field [measurement_context_id]
    bufferOffset = _serializer.string(obj.measurement_context_id, buffer, bufferOffset);
    // Serialize message field [grasp_quality]
    bufferOffset = _serializer.float32(obj.grasp_quality, buffer, bufferOffset);
    // Serialize message field [estimation_confidence]
    bufferOffset = _serializer.float32(obj.estimation_confidence, buffer, bufferOffset);
    // Serialize message field [grasp_category]
    bufferOffset = _serializer.int32(obj.grasp_category, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspStability
    let len;
    let data = new GraspStability(null);
    // Deserialize message field [measurement_context_id]
    data.measurement_context_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [grasp_quality]
    data.grasp_quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [estimation_confidence]
    data.estimation_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grasp_category]
    data.grasp_category = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.measurement_context_id.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grasp_stability_msgs/GraspStability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27f85b330ae8a5e5c97d0bc8c3a83f4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## All of these fields are subject to change as the discussion about
    ## integration of grasp stability estimation and CRAM progresses
    
    
    # For telling different grasp stability estimations (i.e. multiple
    # arms that are monitored simultaneously) apart.
    string measurement_context_id
    
    # Functional data, describing the results of the estimation, and
    # the confidence in the result.
    float32 grasp_quality		# range: 0.0 - 1.0
    float32 estimation_confidence	# range: 0.0 - 1.0
    
    # Grasp category, based on the above values
    int32 GRASP_CAT_UNDEFINED=0
    int32 GRASP_CAT_GOOD=1
    int32 GRASP_CAT_MEDIUM=2
    int32 GRASP_CAT_BAD=3
    
    int32 grasp_category		# the category of the grasp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspStability(null);
    if (msg.measurement_context_id !== undefined) {
      resolved.measurement_context_id = msg.measurement_context_id;
    }
    else {
      resolved.measurement_context_id = ''
    }

    if (msg.grasp_quality !== undefined) {
      resolved.grasp_quality = msg.grasp_quality;
    }
    else {
      resolved.grasp_quality = 0.0
    }

    if (msg.estimation_confidence !== undefined) {
      resolved.estimation_confidence = msg.estimation_confidence;
    }
    else {
      resolved.estimation_confidence = 0.0
    }

    if (msg.grasp_category !== undefined) {
      resolved.grasp_category = msg.grasp_category;
    }
    else {
      resolved.grasp_category = 0
    }

    return resolved;
    }
};

// Constants for message
GraspStability.Constants = {
  GRASP_CAT_UNDEFINED: 0,
  GRASP_CAT_GOOD: 1,
  GRASP_CAT_MEDIUM: 2,
  GRASP_CAT_BAD: 3,
}

module.exports = GraspStability;
