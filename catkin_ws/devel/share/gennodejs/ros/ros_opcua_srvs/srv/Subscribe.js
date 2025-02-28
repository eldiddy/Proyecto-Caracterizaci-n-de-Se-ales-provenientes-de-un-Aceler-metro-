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

class SubscribeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.callback_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new ros_opcua_msgs.msg.Address();
      }
      if (initObj.hasOwnProperty('callback_topic')) {
        this.callback_topic = initObj.callback_topic
      }
      else {
        this.callback_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubscribeRequest
    // Serialize message field [node]
    bufferOffset = ros_opcua_msgs.msg.Address.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [callback_topic]
    bufferOffset = _serializer.string(obj.callback_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribeRequest
    let len;
    let data = new SubscribeRequest(null);
    // Deserialize message field [node]
    data.node = ros_opcua_msgs.msg.Address.deserialize(buffer, bufferOffset);
    // Deserialize message field [callback_topic]
    data.callback_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ros_opcua_msgs.msg.Address.getMessageSize(object.node);
    length += _getByteLength(object.callback_topic);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/SubscribeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76af75c8aa2949c653fb7fd726b3a1bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_opcua_msgs/Address node
    string callback_topic
    
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
    const resolved = new SubscribeRequest(null);
    if (msg.node !== undefined) {
      resolved.node = ros_opcua_msgs.msg.Address.Resolve(msg.node)
    }
    else {
      resolved.node = new ros_opcua_msgs.msg.Address()
    }

    if (msg.callback_topic !== undefined) {
      resolved.callback_topic = msg.callback_topic;
    }
    else {
      resolved.callback_topic = ''
    }

    return resolved;
    }
};

class SubscribeResponse {
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
    // Serializes a message object of type SubscribeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribeResponse
    let len;
    let data = new SubscribeResponse(null);
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
    return 'ros_opcua_srvs/SubscribeResponse';
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
    const resolved = new SubscribeResponse(null);
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
  Request: SubscribeRequest,
  Response: SubscribeResponse,
  md5sum() { return '611f15914760b79ca1b609342b109c53'; },
  datatype() { return 'ros_opcua_srvs/Subscribe'; }
};
