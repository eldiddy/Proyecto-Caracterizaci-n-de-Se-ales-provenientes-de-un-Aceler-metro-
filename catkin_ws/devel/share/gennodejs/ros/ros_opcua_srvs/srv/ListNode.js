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

class ListNodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new ros_opcua_msgs.msg.Address();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListNodeRequest
    // Serialize message field [node]
    bufferOffset = ros_opcua_msgs.msg.Address.serialize(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListNodeRequest
    let len;
    let data = new ListNodeRequest(null);
    // Deserialize message field [node]
    data.node = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ros_opcua_msgs.msg.Address.getMessageSize(object.node);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/ListNodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8550fb7b375751dffeab1627285bf027';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_opcua_msgs/Address node
    
    ================================================================================
    MSG: ros_opcua_msgs/Address
    string nodeId
    string qualifiedName
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListNodeRequest(null);
    if (msg.node !== undefined) {
      resolved.node = ros_opcua_msgs.msg.Address.Resolve(msg.node)
    }
    else {
      resolved.node = new ros_opcua_msgs.msg.Address()
    }

    return resolved;
    }
};

class ListNodeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_message = null;
      this.children = null;
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
      if (initObj.hasOwnProperty('children')) {
        this.children = initObj.children
      }
      else {
        this.children = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListNodeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [children]
    // Serialize the length for message field [children]
    bufferOffset = _serializer.uint32(obj.children.length, buffer, bufferOffset);
    obj.children.forEach((val) => {
      bufferOffset = ros_opcua_msgs.msg.Address.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListNodeResponse
    let len;
    let data = new ListNodeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [children]
    // Deserialize array length for message field [children]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.children = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.children[i] = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_message);
    object.children.forEach((val) => {
      length += ros_opcua_msgs.msg.Address.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/ListNodeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a48062a715da7e7fef9ed6b2923f3162';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string error_message
    ros_opcua_msgs/Address[] children
    
    ================================================================================
    MSG: ros_opcua_msgs/Address
    string nodeId
    string qualifiedName
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListNodeResponse(null);
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

    if (msg.children !== undefined) {
      resolved.children = new Array(msg.children.length);
      for (let i = 0; i < resolved.children.length; ++i) {
        resolved.children[i] = ros_opcua_msgs.msg.Address.Resolve(msg.children[i]);
      }
    }
    else {
      resolved.children = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListNodeRequest,
  Response: ListNodeResponse,
  md5sum() { return 'b2a7f7743df0b9b4b3bc49d484a1e868'; },
  datatype() { return 'ros_opcua_srvs/ListNode'; }
};
