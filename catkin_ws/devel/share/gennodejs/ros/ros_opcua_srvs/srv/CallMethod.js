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

class CallMethodRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.method = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new ros_opcua_msgs.msg.Address();
      }
      if (initObj.hasOwnProperty('method')) {
        this.method = initObj.method
      }
      else {
        this.method = new ros_opcua_msgs.msg.Address();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CallMethodRequest
    // Serialize message field [node]
    bufferOffset = ros_opcua_msgs.msg.Address.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [method]
    bufferOffset = ros_opcua_msgs.msg.Address.serialize(obj.method, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = ros_opcua_msgs.msg.TypeValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CallMethodRequest
    let len;
    let data = new CallMethodRequest(null);
    // Deserialize message field [node]
    data.node = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [method]
    data.method = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = ros_opcua_msgs.msg.TypeValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ros_opcua_msgs.msg.Address.getMessageSize(object.node);
    length += ros_opcua_msgs.msg.Address.getMessageSize(object.method);
    object.data.forEach((val) => {
      length += ros_opcua_msgs.msg.TypeValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/CallMethodRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd911fedbf4548ba12a7052d0fa8bc895';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_opcua_msgs/Address node
    ros_opcua_msgs/Address method
    ros_opcua_msgs/TypeValue[] data
    
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
    const resolved = new CallMethodRequest(null);
    if (msg.node !== undefined) {
      resolved.node = ros_opcua_msgs.msg.Address.Resolve(msg.node)
    }
    else {
      resolved.node = new ros_opcua_msgs.msg.Address()
    }

    if (msg.method !== undefined) {
      resolved.method = ros_opcua_msgs.msg.Address.Resolve(msg.method)
    }
    else {
      resolved.method = new ros_opcua_msgs.msg.Address()
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = ros_opcua_msgs.msg.TypeValue.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

class CallMethodResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_message = null;
      this.data = null;
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
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CallMethodResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = ros_opcua_msgs.msg.TypeValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CallMethodResponse
    let len;
    let data = new CallMethodResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = ros_opcua_msgs.msg.TypeValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_message);
    object.data.forEach((val) => {
      length += ros_opcua_msgs.msg.TypeValue.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/CallMethodResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47e49cd90e316142b73785b69c187ff3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string error_message
    ros_opcua_msgs/TypeValue[] data
    
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
    const resolved = new CallMethodResponse(null);
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

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = ros_opcua_msgs.msg.TypeValue.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: CallMethodRequest,
  Response: CallMethodResponse,
  md5sum() { return 'c81736c009931c7a501dd513cf80a7b6'; },
  datatype() { return 'ros_opcua_srvs/CallMethod'; }
};
