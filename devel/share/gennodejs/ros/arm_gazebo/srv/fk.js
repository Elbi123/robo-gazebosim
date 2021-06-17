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

class fkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointAngles = null;
      this.linkAengths = null;
    }
    else {
      if (initObj.hasOwnProperty('jointAngles')) {
        this.jointAngles = initObj.jointAngles
      }
      else {
        this.jointAngles = [];
      }
      if (initObj.hasOwnProperty('linkAengths')) {
        this.linkAengths = initObj.linkAengths
      }
      else {
        this.linkAengths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fkRequest
    // Serialize message field [jointAngles]
    bufferOffset = _arraySerializer.float64(obj.jointAngles, buffer, bufferOffset, null);
    // Serialize message field [linkAengths]
    bufferOffset = _arraySerializer.float64(obj.linkAengths, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkRequest
    let len;
    let data = new fkRequest(null);
    // Deserialize message field [jointAngles]
    data.jointAngles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [linkAengths]
    data.linkAengths = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.jointAngles.length;
    length += 8 * object.linkAengths.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/fkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43298ecb5966ba4619f2e2482688a400';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64[] jointAngles
    float64[] linkAengths
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fkRequest(null);
    if (msg.jointAngles !== undefined) {
      resolved.jointAngles = msg.jointAngles;
    }
    else {
      resolved.jointAngles = []
    }

    if (msg.linkAengths !== undefined) {
      resolved.linkAengths = msg.linkAengths;
    }
    else {
      resolved.linkAengths = []
    }

    return resolved;
    }
};

class fkResponse {
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
    // Serializes a message object of type fkResponse
    // Serialize message field [actuatorPose]
    bufferOffset = _arraySerializer.float64(obj.actuatorPose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkResponse
    let len;
    let data = new fkResponse(null);
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
    return 'arm_gazebo/fkResponse';
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
    const resolved = new fkResponse(null);
    if (msg.actuatorPose !== undefined) {
      resolved.actuatorPose = msg.actuatorPose;
    }
    else {
      resolved.actuatorPose = []
    }

    return resolved;
    }
};

module.exports = {
  Request: fkRequest,
  Response: fkResponse,
  md5sum() { return '983ceff1c2f2603605ab3cc1ed99a3a4'; },
  datatype() { return 'arm_gazebo/fk'; }
};
