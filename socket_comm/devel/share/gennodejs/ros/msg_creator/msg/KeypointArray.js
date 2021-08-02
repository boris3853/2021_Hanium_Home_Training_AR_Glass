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

class KeypointArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.prob = null;
      this.KeyTrue = null;
      this.type_ex = null;
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
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('KeyTrue')) {
        this.KeyTrue = initObj.KeyTrue
      }
      else {
        this.KeyTrue = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('type_ex')) {
        this.type_ex = initObj.type_ex
      }
      else {
        this.type_ex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeypointArray
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
    // Check that the constant length array field [prob] has the right length
    if (obj.prob.length !== 25) {
      throw new Error('Unable to serialize array field prob - length must be 25')
    }
    // Serialize message field [prob]
    bufferOffset = _arraySerializer.float64(obj.prob, buffer, bufferOffset, 25);
    // Check that the constant length array field [KeyTrue] has the right length
    if (obj.KeyTrue.length !== 25) {
      throw new Error('Unable to serialize array field KeyTrue - length must be 25')
    }
    // Serialize message field [KeyTrue]
    bufferOffset = _arraySerializer.float64(obj.KeyTrue, buffer, bufferOffset, 25);
    // Serialize message field [type_ex]
    bufferOffset = _serializer.uint8(obj.type_ex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeypointArray
    let len;
    let data = new KeypointArray(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [prob]
    data.prob = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [KeyTrue]
    data.KeyTrue = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    // Deserialize message field [type_ex]
    data.type_ex = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 801;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_creator/KeypointArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2259b33e519f11f311bd1ff20ba6ac6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[25] x
    float64[25] y
    float64[25] prob
    
    float64[25] KeyTrue
    uint8 type_ex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeypointArray(null);
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

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = new Array(25).fill(0)
    }

    if (msg.KeyTrue !== undefined) {
      resolved.KeyTrue = msg.KeyTrue;
    }
    else {
      resolved.KeyTrue = new Array(25).fill(0)
    }

    if (msg.type_ex !== undefined) {
      resolved.type_ex = msg.type_ex;
    }
    else {
      resolved.type_ex = 0
    }

    return resolved;
    }
};

module.exports = KeypointArray;
