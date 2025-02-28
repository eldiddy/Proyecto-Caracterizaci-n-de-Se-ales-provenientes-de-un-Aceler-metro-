// Auto-generated. Do not edit!

// (in-package ros_opcua_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConnectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endpoint = null;
    }
    else {
      if (initObj.hasOwnProperty('endpoint')) {
        this.endpoint = initObj.endpoint
      }
      else {
        this.endpoint = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectRequest
    // Serialize message field [endpoint]
    bufferOffset = _serializer.string(obj.endpoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectRequest
    let len;
    let data = new ConnectRequest(null);
    // Deserialize message field [endpoint]
    data.endpoint = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.endpoint);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_opcua_srvs/ConnectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '271aa4be505330f3d0735576816a63bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string endpoint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectRequest(null);
    if (msg.endpoint !== undefined) {
      resolved.endpoint = msg.endpoint;
    }
    else {
      resolved.endpoint = ''
    }

    return resolved;
    }
};

class ConnectResponse {
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
    // Serializes a message object of type ConnectResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectResponse
    let len;
    let data = new ConnectResponse(null);
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
    return 'ros_opcua_srvs/ConnectResponse';
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
    const resolved = new ConnectResponse(null);
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
  Request: ConnectRequest,
  Response: ConnectResponse,
  md5sum() { return '7339b9b9dcb669a384869db171c460ad'; },
  datatype() { return 'ros_opcua_srvs/Connect'; }
};
