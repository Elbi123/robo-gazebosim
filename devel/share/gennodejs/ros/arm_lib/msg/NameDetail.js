// Auto-generated. Do not edit!

// (in-package arm_lib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NameDetail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.firstName = null;
      this.lastName = null;
      this.count = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.alpha = null;
      this.beta = null;
      this.gamma = null;
      this.newXX = null;
      this.newXY = null;
      this.newXZ = null;
      this.newYX = null;
      this.newYY = null;
      this.newYZ = null;
      this.newZX = null;
      this.newZY = null;
      this.newZZ = null;
      this.distance = null;
      this.finalVectorX1 = null;
      this.finalVectorX2 = null;
      this.finalVectorX3 = null;
      this.finalVectorY1 = null;
      this.finalVectorY2 = null;
      this.finalVectorY3 = null;
      this.finalVectorZ1 = null;
      this.finalVectorZ2 = null;
      this.finalVectorZ3 = null;
    }
    else {
      if (initObj.hasOwnProperty('firstName')) {
        this.firstName = initObj.firstName
      }
      else {
        this.firstName = '';
      }
      if (initObj.hasOwnProperty('lastName')) {
        this.lastName = initObj.lastName
      }
      else {
        this.lastName = '';
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('newXX')) {
        this.newXX = initObj.newXX
      }
      else {
        this.newXX = 0.0;
      }
      if (initObj.hasOwnProperty('newXY')) {
        this.newXY = initObj.newXY
      }
      else {
        this.newXY = 0.0;
      }
      if (initObj.hasOwnProperty('newXZ')) {
        this.newXZ = initObj.newXZ
      }
      else {
        this.newXZ = 0.0;
      }
      if (initObj.hasOwnProperty('newYX')) {
        this.newYX = initObj.newYX
      }
      else {
        this.newYX = 0.0;
      }
      if (initObj.hasOwnProperty('newYY')) {
        this.newYY = initObj.newYY
      }
      else {
        this.newYY = 0.0;
      }
      if (initObj.hasOwnProperty('newYZ')) {
        this.newYZ = initObj.newYZ
      }
      else {
        this.newYZ = 0.0;
      }
      if (initObj.hasOwnProperty('newZX')) {
        this.newZX = initObj.newZX
      }
      else {
        this.newZX = 0.0;
      }
      if (initObj.hasOwnProperty('newZY')) {
        this.newZY = initObj.newZY
      }
      else {
        this.newZY = 0.0;
      }
      if (initObj.hasOwnProperty('newZZ')) {
        this.newZZ = initObj.newZZ
      }
      else {
        this.newZZ = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorX1')) {
        this.finalVectorX1 = initObj.finalVectorX1
      }
      else {
        this.finalVectorX1 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorX2')) {
        this.finalVectorX2 = initObj.finalVectorX2
      }
      else {
        this.finalVectorX2 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorX3')) {
        this.finalVectorX3 = initObj.finalVectorX3
      }
      else {
        this.finalVectorX3 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorY1')) {
        this.finalVectorY1 = initObj.finalVectorY1
      }
      else {
        this.finalVectorY1 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorY2')) {
        this.finalVectorY2 = initObj.finalVectorY2
      }
      else {
        this.finalVectorY2 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorY3')) {
        this.finalVectorY3 = initObj.finalVectorY3
      }
      else {
        this.finalVectorY3 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorZ1')) {
        this.finalVectorZ1 = initObj.finalVectorZ1
      }
      else {
        this.finalVectorZ1 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorZ2')) {
        this.finalVectorZ2 = initObj.finalVectorZ2
      }
      else {
        this.finalVectorZ2 = 0.0;
      }
      if (initObj.hasOwnProperty('finalVectorZ3')) {
        this.finalVectorZ3 = initObj.finalVectorZ3
      }
      else {
        this.finalVectorZ3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NameDetail
    // Serialize message field [firstName]
    bufferOffset = _serializer.string(obj.firstName, buffer, bufferOffset);
    // Serialize message field [lastName]
    bufferOffset = _serializer.string(obj.lastName, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float32(obj.alpha, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.float32(obj.beta, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float32(obj.gamma, buffer, bufferOffset);
    // Serialize message field [newXX]
    bufferOffset = _serializer.float32(obj.newXX, buffer, bufferOffset);
    // Serialize message field [newXY]
    bufferOffset = _serializer.float32(obj.newXY, buffer, bufferOffset);
    // Serialize message field [newXZ]
    bufferOffset = _serializer.float32(obj.newXZ, buffer, bufferOffset);
    // Serialize message field [newYX]
    bufferOffset = _serializer.float32(obj.newYX, buffer, bufferOffset);
    // Serialize message field [newYY]
    bufferOffset = _serializer.float32(obj.newYY, buffer, bufferOffset);
    // Serialize message field [newYZ]
    bufferOffset = _serializer.float32(obj.newYZ, buffer, bufferOffset);
    // Serialize message field [newZX]
    bufferOffset = _serializer.float32(obj.newZX, buffer, bufferOffset);
    // Serialize message field [newZY]
    bufferOffset = _serializer.float32(obj.newZY, buffer, bufferOffset);
    // Serialize message field [newZZ]
    bufferOffset = _serializer.float32(obj.newZZ, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [finalVectorX1]
    bufferOffset = _serializer.float32(obj.finalVectorX1, buffer, bufferOffset);
    // Serialize message field [finalVectorX2]
    bufferOffset = _serializer.float32(obj.finalVectorX2, buffer, bufferOffset);
    // Serialize message field [finalVectorX3]
    bufferOffset = _serializer.float32(obj.finalVectorX3, buffer, bufferOffset);
    // Serialize message field [finalVectorY1]
    bufferOffset = _serializer.float32(obj.finalVectorY1, buffer, bufferOffset);
    // Serialize message field [finalVectorY2]
    bufferOffset = _serializer.float32(obj.finalVectorY2, buffer, bufferOffset);
    // Serialize message field [finalVectorY3]
    bufferOffset = _serializer.float32(obj.finalVectorY3, buffer, bufferOffset);
    // Serialize message field [finalVectorZ1]
    bufferOffset = _serializer.float32(obj.finalVectorZ1, buffer, bufferOffset);
    // Serialize message field [finalVectorZ2]
    bufferOffset = _serializer.float32(obj.finalVectorZ2, buffer, bufferOffset);
    // Serialize message field [finalVectorZ3]
    bufferOffset = _serializer.float32(obj.finalVectorZ3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NameDetail
    let len;
    let data = new NameDetail(null);
    // Deserialize message field [firstName]
    data.firstName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lastName]
    data.lastName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newXX]
    data.newXX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newXY]
    data.newXY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newXZ]
    data.newXZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newYX]
    data.newYX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newYY]
    data.newYY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newYZ]
    data.newYZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newZX]
    data.newZX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newZY]
    data.newZY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [newZZ]
    data.newZZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorX1]
    data.finalVectorX1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorX2]
    data.finalVectorX2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorX3]
    data.finalVectorX3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorY1]
    data.finalVectorY1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorY2]
    data.finalVectorY2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorY3]
    data.finalVectorY3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorZ1]
    data.finalVectorZ1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorZ2]
    data.finalVectorZ2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finalVectorZ3]
    data.finalVectorZ3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.firstName);
    length += _getByteLength(object.lastName);
    return length + 109;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_lib/NameDetail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d2e9b0661c09cf072222627b7f8a0f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string firstName
        string lastName
            uint8 count
    
                float32 x
                    float32 y
                        float32 z
                            float32 alpha
                                float32 beta
                                    float32 gamma
                                        float32 newXX
                                            float32 newXY
                                                float32 newXZ
                                                    float32 newYX
                                                        float32 newYY
                                                            float32 newYZ
                                                                float32 newZX
                                                                    float32 newZY
                                                                        float32 newZZ
                                                                            float32 distance
                                                                                float32 finalVectorX1
                                                                                    float32 finalVectorX2
                                                                                        float32 finalVectorX3
                                                                                            float32 finalVectorY1
                                                                                                float32 finalVectorY2
                                                                                                    float32 finalVectorY3
                                                                                                        float32 finalVectorZ1
                                                                                                            float32 finalVectorZ2
                                                                                                                float32 finalVectorZ3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NameDetail(null);
    if (msg.firstName !== undefined) {
      resolved.firstName = msg.firstName;
    }
    else {
      resolved.firstName = ''
    }

    if (msg.lastName !== undefined) {
      resolved.lastName = msg.lastName;
    }
    else {
      resolved.lastName = ''
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.newXX !== undefined) {
      resolved.newXX = msg.newXX;
    }
    else {
      resolved.newXX = 0.0
    }

    if (msg.newXY !== undefined) {
      resolved.newXY = msg.newXY;
    }
    else {
      resolved.newXY = 0.0
    }

    if (msg.newXZ !== undefined) {
      resolved.newXZ = msg.newXZ;
    }
    else {
      resolved.newXZ = 0.0
    }

    if (msg.newYX !== undefined) {
      resolved.newYX = msg.newYX;
    }
    else {
      resolved.newYX = 0.0
    }

    if (msg.newYY !== undefined) {
      resolved.newYY = msg.newYY;
    }
    else {
      resolved.newYY = 0.0
    }

    if (msg.newYZ !== undefined) {
      resolved.newYZ = msg.newYZ;
    }
    else {
      resolved.newYZ = 0.0
    }

    if (msg.newZX !== undefined) {
      resolved.newZX = msg.newZX;
    }
    else {
      resolved.newZX = 0.0
    }

    if (msg.newZY !== undefined) {
      resolved.newZY = msg.newZY;
    }
    else {
      resolved.newZY = 0.0
    }

    if (msg.newZZ !== undefined) {
      resolved.newZZ = msg.newZZ;
    }
    else {
      resolved.newZZ = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.finalVectorX1 !== undefined) {
      resolved.finalVectorX1 = msg.finalVectorX1;
    }
    else {
      resolved.finalVectorX1 = 0.0
    }

    if (msg.finalVectorX2 !== undefined) {
      resolved.finalVectorX2 = msg.finalVectorX2;
    }
    else {
      resolved.finalVectorX2 = 0.0
    }

    if (msg.finalVectorX3 !== undefined) {
      resolved.finalVectorX3 = msg.finalVectorX3;
    }
    else {
      resolved.finalVectorX3 = 0.0
    }

    if (msg.finalVectorY1 !== undefined) {
      resolved.finalVectorY1 = msg.finalVectorY1;
    }
    else {
      resolved.finalVectorY1 = 0.0
    }

    if (msg.finalVectorY2 !== undefined) {
      resolved.finalVectorY2 = msg.finalVectorY2;
    }
    else {
      resolved.finalVectorY2 = 0.0
    }

    if (msg.finalVectorY3 !== undefined) {
      resolved.finalVectorY3 = msg.finalVectorY3;
    }
    else {
      resolved.finalVectorY3 = 0.0
    }

    if (msg.finalVectorZ1 !== undefined) {
      resolved.finalVectorZ1 = msg.finalVectorZ1;
    }
    else {
      resolved.finalVectorZ1 = 0.0
    }

    if (msg.finalVectorZ2 !== undefined) {
      resolved.finalVectorZ2 = msg.finalVectorZ2;
    }
    else {
      resolved.finalVectorZ2 = 0.0
    }

    if (msg.finalVectorZ3 !== undefined) {
      resolved.finalVectorZ3 = msg.finalVectorZ3;
    }
    else {
      resolved.finalVectorZ3 = 0.0
    }

    return resolved;
    }
};

module.exports = NameDetail;
