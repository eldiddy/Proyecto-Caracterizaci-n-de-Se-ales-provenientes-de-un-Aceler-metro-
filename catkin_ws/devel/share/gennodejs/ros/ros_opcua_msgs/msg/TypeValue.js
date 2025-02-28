// Auto-generated. Do not edit!

// (in-package ros_opcua_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TypeValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.bool_d = null;
      this.int8_d = null;
      this.uint8_d = null;
      this.int16_d = null;
      this.uint16_d = null;
      this.int32_d = null;
      this.uint32_d = null;
      this.int64_d = null;
      this.uint64_d = null;
      this.float_d = null;
      this.double_d = null;
      this.string_d = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('bool_d')) {
        this.bool_d = initObj.bool_d
      }
      else {
        this.bool_d = false;
      }
      if (initObj.hasOwnProperty('int8_d')) {
        this.int8_d = initObj.int8_d
      }
      else {
        this.int8_d = 0;
      }
      if (initObj.hasOwnProperty('uint8_d')) {
        this.uint8_d = initObj.uint8_d
      }
      else {
        this.uint8_d = 0;
      }
      if (initObj.hasOwnProperty('int16_d')) {
        this.int16_d = initObj.int16_d
      }
      else {
        this.int16_d = 0;
      }
      if (initObj.hasOwnProperty('uint16_d')) {
        this.uint16_d = initObj.uint16_d
      }
      else {
        this.uint16_d = 0;
      }
      if (initObj.hasOwnProperty('int32_d')) {
        this.int32_d = initObj.int32_d
      }
      else {
        this.int32_d = 0;
      }
      if (initObj.hasOwnProperty('uint32_d')) {
        this.uint32_d = initObj.uint32_d
      }
      else {
        this.uint32_d = 0;
      }
      if (initObj.hasOwnProperty('int64_d')) {
        this.int64_d = initObj.int64_d
      }
      else {
        this.int64_d = 0;
      }
      if (initObj.hasOwnProperty('uint64_d')) {
        this.uint64_d = initObj.uint64_d
      }
      else {
        this.uint64_d = 0;
      }
      if (initObj.hasOwnProperty('float_d')) {
        this.float_d = initObj.float_d
      }
      else {
        this.float_d = 0.0;
      }
      if (initObj.hasOwnProperty('double_d')) {
        this.double_d = initObj.double_d
      }
      else {
        this.double_d = 0.0;
      }
      if (initObj.hasOwnProperty('string_d')) {
        this.string_d = initObj.string_d
      }
      else {
        this.string_d = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TypeValue
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [bool_d]
    bufferOffset = _serializer.bool(obj.bool_d, buffer, bufferOffset);
    // Serialize message field [int8_d]
    bufferOffset = _serializer.int8(obj.int8_d, buffer, bufferOffset);
    // Serialize message field [uint8_d]
    bufferOffset = _serializer.uint8(obj.uint8_d, buffer, bufferOffset);
    // Serialize message field [int16_d]
    bufferOffset = _serializer.int16(obj.int16_d, buffer, bufferOffset);
    // Serialize message field [uint16_d]
    bufferOffset = _serializer.uint16(obj.uint16_d, buffer, bufferOffset);
    // Serialize message field [int32_d]
    bufferOffset = _serializer.int32(obj.int32_d, buffer, bufferOffset);
    // Serialize message field [uint32_d]
    bufferOffset = _serializer.uint32(obj.uint32_d, buffer, bufferOffset);
    // Serialize message field [int64_d]
    bufferOffset = _serializer.int64(obj.int64_d, buffer, bufferOffset);
    // Serialize message field [uint64_d]
    bufferOffset = _serializer.uint64(obj.uint64_d, buffer, bufferOffset);
    // Serialize message field [float_d]
    bufferOffset = _serializer.float32(obj.float_d, buffer, bufferOffset);
    // Serialize message field [double_d]
    bufferOffset = _serializer.float64(obj.double_d, buffer, bufferOffset);
    // Serialize message field [string_d]
    bufferOffset = _serializer.string(obj.string_d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TypeValue
    let len;
    let data = new TypeValue(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bool_d]
    data.bool_d = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [int8_d]
    data.int8_d = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [uint8_d]
    data.uint8_d = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [int16_d]
    data.int16_d = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [uint16_d]
    data.uint16_d = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [int32_d]
    data.int32_d = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uint32_d]
    data.uint32_d = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [int64_d]
    data.int64_d = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [uint64_d]
    data.uint64_d = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [float_d]
    data.float_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [double_d]
    data.double_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [string_d]
    data.string_d = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += _getByteLength(object.string_d);
    return length + 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_opcua_msgs/TypeValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af7ad16307b5795f5d52adc813870ca9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents OPC-UA type-value pair
    string type
    bool bool_d
    int8 int8_d
    uint8 uint8_d
    int16 int16_d
    uint16 uint16_d
    int32 int32_d
    uint32 uint32_d
    int64 int64_d
    uint64 uint64_d
    float32 float_d
    float64 double_d
    string string_d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TypeValue(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.bool_d !== undefined) {
      resolved.bool_d = msg.bool_d;
    }
    else {
      resolved.bool_d = false
    }

    if (msg.int8_d !== undefined) {
      resolved.int8_d = msg.int8_d;
    }
    else {
      resolved.int8_d = 0
    }

    if (msg.uint8_d !== undefined) {
      resolved.uint8_d = msg.uint8_d;
    }
    else {
      resolved.uint8_d = 0
    }

    if (msg.int16_d !== undefined) {
      resolved.int16_d = msg.int16_d;
    }
    else {
      resolved.int16_d = 0
    }

    if (msg.uint16_d !== undefined) {
      resolved.uint16_d = msg.uint16_d;
    }
    else {
      resolved.uint16_d = 0
    }

    if (msg.int32_d !== undefined) {
      resolved.int32_d = msg.int32_d;
    }
    else {
      resolved.int32_d = 0
    }

    if (msg.uint32_d !== undefined) {
      resolved.uint32_d = msg.uint32_d;
    }
    else {
      resolved.uint32_d = 0
    }

    if (msg.int64_d !== undefined) {
      resolved.int64_d = msg.int64_d;
    }
    else {
      resolved.int64_d = 0
    }

    if (msg.uint64_d !== undefined) {
      resolved.uint64_d = msg.uint64_d;
    }
    else {
      resolved.uint64_d = 0
    }

    if (msg.float_d !== undefined) {
      resolved.float_d = msg.float_d;
    }
    else {
      resolved.float_d = 0.0
    }

    if (msg.double_d !== undefined) {
      resolved.double_d = msg.double_d;
    }
    else {
      resolved.double_d = 0.0
    }

    if (msg.string_d !== undefined) {
      resolved.string_d = msg.string_d;
    }
    else {
      resolved.string_d = ''
    }

    return resolved;
    }
};

module.exports = TypeValue;
