// Auto-generated. Do not edit!

// (in-package msg_creator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Keypoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.IsTrue = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('IsTrue')) {
        this.IsTrue = initObj.IsTrue
      }
      else {
        this.IsTrue = new Array(25).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keypoints
    // Check that the constant length array field [x] has the right length
    if (obj.x.length !== 25) {
      throw new Error('Unable to serialize array field x - length must be 25')
    }
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float64(obj.x, buffer, bufferOffset, 25);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 25) {
      throw new Error('Unable to serialize array field y - length must be 25')
    }
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float64(obj.y, buffer, bufferOffset, 25);
    // Check that the constant length array field [z] has the right length
    if (obj.z.length !== 25) {
      throw new Error('Unable to serialize array field z - length must be 25')
    }
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float64(obj.z, buffer, bufferOffset, 25);
    // Check that the constant length array field [IsTrue] has the right length
    if (obj.IsTrue.length !== 25) {
      throw new Error('Unable to serialize array field IsTrue - length must be 25')
    }
    // Serialize message field [IsTrue]
    bufferOffset = _arraySerializer.float64(obj.IsTrue, buffer, bufferOffset, 25);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keypoints
    let len;
    let data = new Keypoints(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [IsTrue]
    data.IsTrue = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    return data;
  }

  static getMessageSize(object) {
    return 800;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_creator/Keypoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca61976b7747333c168cedac9b79b953';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[25] x
    float64[25] y
    float64[25] z
    float64[25] IsTrue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Keypoints(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = new Array(25).fill(0)
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = new Array(25).fill(0)
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = new Array(25).fill(0)
    }

    if (msg.IsTrue !== undefined) {
      resolved.IsTrue = msg.IsTrue;
    }
    else {
      resolved.IsTrue = new Array(25).fill(0)
    }

    return resolved;
    }
};

module.exports = Keypoints;
