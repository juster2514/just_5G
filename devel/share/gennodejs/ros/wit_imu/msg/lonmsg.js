// Auto-generated. Do not edit!

// (in-package wit_imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class lonmsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orientation_x = null;
      this.orientation_y = null;
      this.orientation_z = null;
      this.orientation_w = null;
      this.angular_velocity_x = null;
      this.angular_velocity_y = null;
      this.angular_velocity_z = null;
      this.linear_acceleration_x = null;
      this.linear_acceleration_y = null;
      this.linear_acceleration_z = null;
    }
    else {
      if (initObj.hasOwnProperty('orientation_x')) {
        this.orientation_x = initObj.orientation_x
      }
      else {
        this.orientation_x = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_y')) {
        this.orientation_y = initObj.orientation_y
      }
      else {
        this.orientation_y = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_z')) {
        this.orientation_z = initObj.orientation_z
      }
      else {
        this.orientation_z = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_w')) {
        this.orientation_w = initObj.orientation_w
      }
      else {
        this.orientation_w = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_x')) {
        this.angular_velocity_x = initObj.angular_velocity_x
      }
      else {
        this.angular_velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_y')) {
        this.angular_velocity_y = initObj.angular_velocity_y
      }
      else {
        this.angular_velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_z')) {
        this.angular_velocity_z = initObj.angular_velocity_z
      }
      else {
        this.angular_velocity_z = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_x')) {
        this.linear_acceleration_x = initObj.linear_acceleration_x
      }
      else {
        this.linear_acceleration_x = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_y')) {
        this.linear_acceleration_y = initObj.linear_acceleration_y
      }
      else {
        this.linear_acceleration_y = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_z')) {
        this.linear_acceleration_z = initObj.linear_acceleration_z
      }
      else {
        this.linear_acceleration_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lonmsg
    // Serialize message field [orientation_x]
    bufferOffset = _serializer.float64(obj.orientation_x, buffer, bufferOffset);
    // Serialize message field [orientation_y]
    bufferOffset = _serializer.float64(obj.orientation_y, buffer, bufferOffset);
    // Serialize message field [orientation_z]
    bufferOffset = _serializer.float64(obj.orientation_z, buffer, bufferOffset);
    // Serialize message field [orientation_w]
    bufferOffset = _serializer.float64(obj.orientation_w, buffer, bufferOffset);
    // Serialize message field [angular_velocity_x]
    bufferOffset = _serializer.float64(obj.angular_velocity_x, buffer, bufferOffset);
    // Serialize message field [angular_velocity_y]
    bufferOffset = _serializer.float64(obj.angular_velocity_y, buffer, bufferOffset);
    // Serialize message field [angular_velocity_z]
    bufferOffset = _serializer.float64(obj.angular_velocity_z, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_x]
    bufferOffset = _serializer.float64(obj.linear_acceleration_x, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_y]
    bufferOffset = _serializer.float64(obj.linear_acceleration_y, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_z]
    bufferOffset = _serializer.float64(obj.linear_acceleration_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lonmsg
    let len;
    let data = new lonmsg(null);
    // Deserialize message field [orientation_x]
    data.orientation_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_y]
    data.orientation_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_z]
    data.orientation_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_w]
    data.orientation_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_x]
    data.angular_velocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_y]
    data.angular_velocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_z]
    data.angular_velocity_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_x]
    data.linear_acceleration_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_y]
    data.linear_acceleration_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_z]
    data.linear_acceleration_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wit_imu/lonmsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6d3fea111e2a8e030584cb7b23fbadb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 orientation_x
    float64 orientation_y
    float64 orientation_z
    float64 orientation_w
    float64 angular_velocity_x
    float64 angular_velocity_y
    float64 angular_velocity_z
    float64 linear_acceleration_x
    float64 linear_acceleration_y
    float64 linear_acceleration_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lonmsg(null);
    if (msg.orientation_x !== undefined) {
      resolved.orientation_x = msg.orientation_x;
    }
    else {
      resolved.orientation_x = 0.0
    }

    if (msg.orientation_y !== undefined) {
      resolved.orientation_y = msg.orientation_y;
    }
    else {
      resolved.orientation_y = 0.0
    }

    if (msg.orientation_z !== undefined) {
      resolved.orientation_z = msg.orientation_z;
    }
    else {
      resolved.orientation_z = 0.0
    }

    if (msg.orientation_w !== undefined) {
      resolved.orientation_w = msg.orientation_w;
    }
    else {
      resolved.orientation_w = 0.0
    }

    if (msg.angular_velocity_x !== undefined) {
      resolved.angular_velocity_x = msg.angular_velocity_x;
    }
    else {
      resolved.angular_velocity_x = 0.0
    }

    if (msg.angular_velocity_y !== undefined) {
      resolved.angular_velocity_y = msg.angular_velocity_y;
    }
    else {
      resolved.angular_velocity_y = 0.0
    }

    if (msg.angular_velocity_z !== undefined) {
      resolved.angular_velocity_z = msg.angular_velocity_z;
    }
    else {
      resolved.angular_velocity_z = 0.0
    }

    if (msg.linear_acceleration_x !== undefined) {
      resolved.linear_acceleration_x = msg.linear_acceleration_x;
    }
    else {
      resolved.linear_acceleration_x = 0.0
    }

    if (msg.linear_acceleration_y !== undefined) {
      resolved.linear_acceleration_y = msg.linear_acceleration_y;
    }
    else {
      resolved.linear_acceleration_y = 0.0
    }

    if (msg.linear_acceleration_z !== undefined) {
      resolved.linear_acceleration_z = msg.linear_acceleration_z;
    }
    else {
      resolved.linear_acceleration_z = 0.0
    }

    return resolved;
    }
};

module.exports = lonmsg;
