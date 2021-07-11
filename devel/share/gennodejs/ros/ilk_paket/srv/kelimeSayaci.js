// Auto-generated. Do not edit!

// (in-package ilk_paket.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class kelimeSayaciRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kelimeler = null;
    }
    else {
      if (initObj.hasOwnProperty('kelimeler')) {
        this.kelimeler = initObj.kelimeler
      }
      else {
        this.kelimeler = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kelimeSayaciRequest
    // Serialize message field [kelimeler]
    bufferOffset = _serializer.string(obj.kelimeler, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kelimeSayaciRequest
    let len;
    let data = new kelimeSayaciRequest(null);
    // Deserialize message field [kelimeler]
    data.kelimeler = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.kelimeler);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/kelimeSayaciRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a1faabfc5040cbb654dd6b25c17425b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string kelimeler
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kelimeSayaciRequest(null);
    if (msg.kelimeler !== undefined) {
      resolved.kelimeler = msg.kelimeler;
    }
    else {
      resolved.kelimeler = ''
    }

    return resolved;
    }
};

class kelimeSayaciResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sayac = null;
    }
    else {
      if (initObj.hasOwnProperty('sayac')) {
        this.sayac = initObj.sayac
      }
      else {
        this.sayac = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kelimeSayaciResponse
    // Serialize message field [sayac]
    bufferOffset = _serializer.uint32(obj.sayac, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kelimeSayaciResponse
    let len;
    let data = new kelimeSayaciResponse(null);
    // Deserialize message field [sayac]
    data.sayac = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/kelimeSayaciResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86a35ce7b0986f4236e9ef3777ed7074';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sayac
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kelimeSayaciResponse(null);
    if (msg.sayac !== undefined) {
      resolved.sayac = msg.sayac;
    }
    else {
      resolved.sayac = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: kelimeSayaciRequest,
  Response: kelimeSayaciResponse,
  md5sum() { return '65c69d5d821fe1758c24c7c87273f551'; },
  datatype() { return 'ilk_paket/kelimeSayaci'; }
};
