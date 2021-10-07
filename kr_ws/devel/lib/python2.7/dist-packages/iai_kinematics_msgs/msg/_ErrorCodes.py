# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iai_kinematics_msgs/ErrorCodes.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ErrorCodes(genpy.Message):
  _md5sum = "5acf26755415e1ec18a6d523028f204d"
  _type = "iai_kinematics_msgs/ErrorCodes"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 val

# overall behavior
int32 PLANNING_FAILED=-1
int32 SUCCESS=1
int32 TIMED_OUT=-2

# start state errors
int32 START_STATE_IN_COLLISION=-3
int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4

# goal errors
int32 GOAL_IN_COLLISION=-5
int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6

# robot state
int32 INVALID_ROBOT_STATE=-7
int32 INCOMPLETE_ROBOT_STATE=-8

# planning request errors
int32 INVALID_PLANNER_ID=-9
int32 INVALID_NUM_PLANNING_ATTEMPTS=-10
int32 INVALID_ALLOWED_PLANNING_TIME=-11
int32 INVALID_GROUP_NAME=-12
int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13
int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14
int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15
int32 INVALID_PATH_JOINT_CONSTRAINTS=-16
int32 INVALID_PATH_POSITION_CONSTRAINTS=-17
int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18

# state/trajectory monitor errors
int32 INVALID_TRAJECTORY=-19
int32 INVALID_INDEX=-20
int32 JOINT_LIMITS_VIOLATED=-21
int32 PATH_CONSTRAINTS_VIOLATED=-22
int32 COLLISION_CONSTRAINTS_VIOLATED=-23
int32 GOAL_CONSTRAINTS_VIOLATED=-24
int32 JOINTS_NOT_MOVING=-25
int32 TRAJECTORY_CONTROLLER_FAILED=-26

# system errors
int32 FRAME_TRANSFORM_FAILURE=-27
int32 COLLISION_CHECKING_UNAVAILABLE=-28
int32 ROBOT_STATE_STALE=-29
int32 SENSOR_INFO_STALE=-30

# kinematics errors
int32 NO_IK_SOLUTION=-31
int32 INVALID_LINK_NAME=-32
int32 IK_LINK_IN_COLLISION=-33
int32 NO_FK_SOLUTION=-34
int32 KINEMATICS_STATE_IN_COLLISION=-35

# general errors
int32 INVALID_TIMEOUT=-36

"""
  # Pseudo-constants
  PLANNING_FAILED = -1
  SUCCESS = 1
  TIMED_OUT = -2
  START_STATE_IN_COLLISION = -3
  START_STATE_VIOLATES_PATH_CONSTRAINTS = -4
  GOAL_IN_COLLISION = -5
  GOAL_VIOLATES_PATH_CONSTRAINTS = -6
  INVALID_ROBOT_STATE = -7
  INCOMPLETE_ROBOT_STATE = -8
  INVALID_PLANNER_ID = -9
  INVALID_NUM_PLANNING_ATTEMPTS = -10
  INVALID_ALLOWED_PLANNING_TIME = -11
  INVALID_GROUP_NAME = -12
  INVALID_GOAL_JOINT_CONSTRAINTS = -13
  INVALID_GOAL_POSITION_CONSTRAINTS = -14
  INVALID_GOAL_ORIENTATION_CONSTRAINTS = -15
  INVALID_PATH_JOINT_CONSTRAINTS = -16
  INVALID_PATH_POSITION_CONSTRAINTS = -17
  INVALID_PATH_ORIENTATION_CONSTRAINTS = -18
  INVALID_TRAJECTORY = -19
  INVALID_INDEX = -20
  JOINT_LIMITS_VIOLATED = -21
  PATH_CONSTRAINTS_VIOLATED = -22
  COLLISION_CONSTRAINTS_VIOLATED = -23
  GOAL_CONSTRAINTS_VIOLATED = -24
  JOINTS_NOT_MOVING = -25
  TRAJECTORY_CONTROLLER_FAILED = -26
  FRAME_TRANSFORM_FAILURE = -27
  COLLISION_CHECKING_UNAVAILABLE = -28
  ROBOT_STATE_STALE = -29
  SENSOR_INFO_STALE = -30
  NO_IK_SOLUTION = -31
  INVALID_LINK_NAME = -32
  IK_LINK_IN_COLLISION = -33
  NO_FK_SOLUTION = -34
  KINEMATICS_STATE_IN_COLLISION = -35
  INVALID_TIMEOUT = -36

  __slots__ = ['val']
  _slot_types = ['int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       val

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ErrorCodes, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.val is None:
        self.val = 0
    else:
      self.val = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.val
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.val,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.val
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.val,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
