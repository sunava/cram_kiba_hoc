
"use strict";

let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let ToolDataMsg = require('./ToolDataMsg.js');
let Analog = require('./Analog.js');
let RobotModeDataMsg = require('./RobotModeDataMsg.js');
let IOStates = require('./IOStates.js');
let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let Digital = require('./Digital.js');

module.exports = {
  MasterboardDataMsg: MasterboardDataMsg,
  ToolDataMsg: ToolDataMsg,
  Analog: Analog,
  RobotModeDataMsg: RobotModeDataMsg,
  IOStates: IOStates,
  RobotStateRTMsg: RobotStateRTMsg,
  Digital: Digital,
};
