// Auto-generated. Do not edit!

// (in-package ros_opcua_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ros_opcua_msgs = _finder('ros_opcua_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WriteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new ros_opcua_msgs.msg.Address();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new ros_opcua_msgs.msg.TypeValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteRequest
    // Serialize message field [node]
    bufferOffset = ros_opcua_msgs.msg.Address.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = ros_opcua_msgs.msg.TypeValue.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteRequest
    let len;
    let data = new WriteRequest(null);
    // Deserialize message field [node]
    data.node = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = ros_opcua_msgs.msg.TypeValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ros_opcua_msgs.msg.Address.getMessageSize(object.node);
    length += ros_opcua_msgs.msg.TypeValue.getMessageSize(object.data);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/WriteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72d070c751907fd5ca2b477a8e081323';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_opcua_msgs/Address node
    ros_opcua_msgs/TypeValue data
    
    ================================================================================
    MSG: ros_opcua_msgs/Address
    string nodeId
    string qualifiedName
    ================================================================================
    MSG: ros_opcua_msgs/TypeValue
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
    const resolved = new WriteRequest(null);
    if (msg.node !== undefined) {
      resolved.node = ros_opcua_msgs.msg.Address.Resolve(msg.node)
    }
    else {
      resolved.node = new ros_opcua_msgs.msg.Address()
    }

    if (msg.data !== undefined) {
      resolved.data = ros_opcua_msgs.msg.TypeValue.Resolve(msg.data)
    }
    else {
      resolved.data = new ros_opcua_msgs.msg.TypeValue()
    }

    return resolved;
    }
};

class WriteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteResponse
    let len;
    let data = new WriteResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/WriteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe914479ce03184a758c3f6990c928f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string error_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WriteResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: WriteRequest,
  Response: WriteResponse,
  md5sum() { return '6b8afc0b78657683449df0e603595707'; },
  datatype() { return 'ros_opcua_srvs/Write'; }
};
