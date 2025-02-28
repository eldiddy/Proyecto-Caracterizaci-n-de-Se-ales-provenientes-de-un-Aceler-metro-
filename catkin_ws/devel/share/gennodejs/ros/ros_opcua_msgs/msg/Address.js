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

class Address {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodeId = null;
      this.qualifiedName = null;
    }
    else {
      if (initObj.hasOwnProperty('nodeId')) {
        this.nodeId = initObj.nodeId
      }
      else {
        this.nodeId = '';
      }
      if (initObj.hasOwnProperty('qualifiedName')) {
        this.qualifiedName = initObj.qualifiedName
      }
      else {
        this.qualifiedName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Address
    // Serialize message field [nodeId]
    bufferOffset = _serializer.string(obj.nodeId, buffer, bufferOffset);
    // Serialize message field [qualifiedName]
    bufferOffset = _serializer.string(obj.qualifiedName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Address
    let len;
    let data = new Address(null);
    // Deserialize message field [nodeId]
    data.nodeId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qualifiedName]
    data.qualifiedName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nodeId);
    length += _getByteLength(object.qualifiedName);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_opcua_msgs/Address';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b42b1dbd3ac4f374e9502c4ddbd8514';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string nodeId
    string qualifiedName
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Address(null);
    if (msg.nodeId !== undefined) {
      resolved.nodeId = msg.nodeId;
    }
    else {
      resolved.nodeId = ''
    }

    if (msg.qualifiedName !== undefined) {
      resolved.qualifiedName = msg.qualifiedName;
    }
    else {
      resolved.qualifiedName = ''
    }

    return resolved;
    }
};

module.exports = Address;
