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

class toplamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sayi1 = null;
      this.sayi2 = null;
    }
    else {
      if (initObj.hasOwnProperty('sayi1')) {
        this.sayi1 = initObj.sayi1
      }
      else {
        this.sayi1 = 0;
      }
      if (initObj.hasOwnProperty('sayi2')) {
        this.sayi2 = initObj.sayi2
      }
      else {
        this.sayi2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type toplamRequest
    // Serialize message field [sayi1]
    bufferOffset = _serializer.int32(obj.sayi1, buffer, bufferOffset);
    // Serialize message field [sayi2]
    bufferOffset = _serializer.int32(obj.sayi2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type toplamRequest
    let len;
    let data = new toplamRequest(null);
    // Deserialize message field [sayi1]
    data.sayi1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sayi2]
    data.sayi2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/toplamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '355d071d3d9f3463a417bc9e8a18d194';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sayi1
    int32 sayi2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new toplamRequest(null);
    if (msg.sayi1 !== undefined) {
      resolved.sayi1 = msg.sayi1;
    }
    else {
      resolved.sayi1 = 0
    }

    if (msg.sayi2 !== undefined) {
      resolved.sayi2 = msg.sayi2;
    }
    else {
      resolved.sayi2 = 0
    }

    return resolved;
    }
};

class toplamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonuc = null;
    }
    else {
      if (initObj.hasOwnProperty('sonuc')) {
        this.sonuc = initObj.sonuc
      }
      else {
        this.sonuc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type toplamResponse
    // Serialize message field [sonuc]
    bufferOffset = _serializer.int32(obj.sonuc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type toplamResponse
    let len;
    let data = new toplamResponse(null);
    // Deserialize message field [sonuc]
    data.sonuc = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ilk_paket/toplamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b71c2553696b39a3575811d4670473a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sonuc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new toplamResponse(null);
    if (msg.sonuc !== undefined) {
      resolved.sonuc = msg.sonuc;
    }
    else {
      resolved.sonuc = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: toplamRequest,
  Response: toplamResponse,
  md5sum() { return 'fe8aac20b87d53f504c5864a0ca7afb7'; },
  datatype() { return 'ilk_paket/toplam'; }
};
