// Auto-generated. Do not edit!

// (in-package Exercise.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Exercise {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_ex = null;
    }
    else {
      if (initObj.hasOwnProperty('type_ex')) {
        this.type_ex = initObj.type_ex
      }
      else {
        this.type_ex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Exercise
    // Serialize message field [type_ex]
    bufferOffset = _serializer.uint8(obj.type_ex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Exercise
    let len;
    let data = new Exercise(null);
    // Deserialize message field [type_ex]
    data.type_ex = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Exercise/Exercise';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ca487a1ddc49ed0ec158a356e02a3ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type_ex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Exercise(null);
    if (msg.type_ex !== undefined) {
      resolved.type_ex = msg.type_ex;
    }
    else {
      resolved.type_ex = 0
    }

    return resolved;
    }
};

module.exports = Exercise;
