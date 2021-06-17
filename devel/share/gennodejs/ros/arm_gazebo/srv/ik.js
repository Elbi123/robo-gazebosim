// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ikRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuatorPose = null;
    }
    else {
      if (initObj.hasOwnProperty('actuatorPose')) {
        this.actuatorPose = initObj.actuatorPose
      }
      else {
        this.actuatorPose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikRequest
    // Serialize message field [actuatorPose]
    bufferOffset = _arraySerializer.float64(obj.actuatorPose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikRequest
    let len;
    let data = new ikRequest(null);
    // Deserialize message field [actuatorPose]
    data.actuatorPose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.actuatorPose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c696b4af88031e77051d617ad9fec833';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] actuatorPose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikRequest(null);
    if (msg.actuatorPose !== undefined) {
      resolved.actuatorPose = msg.actuatorPose;
    }
    else {
      resolved.actuatorPose = []
    }

    return resolved;
    }
};

class ikResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointAngles = null;
    }
    else {
      if (initObj.hasOwnProperty('jointAngles')) {
        this.jointAngles = initObj.jointAngles
      }
      else {
        this.jointAngles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikResponse
    // Serialize message field [jointAngles]
    bufferOffset = _arraySerializer.float64(obj.jointAngles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikResponse
    let len;
    let data = new ikResponse(null);
    // Deserialize message field [jointAngles]
    data.jointAngles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.jointAngles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7b76a74c4440d1dc9236fba91d019cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] jointAngles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikResponse(null);
    if (msg.jointAngles !== undefined) {
      resolved.jointAngles = msg.jointAngles;
    }
    else {
      resolved.jointAngles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ikRequest,
  Response: ikResponse,
  md5sum() { return 'a27fccb1b9ad9c7a2721e57a6277d63b'; },
  datatype() { return 'arm_gazebo/ik'; }
};
