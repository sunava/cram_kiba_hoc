# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from person_msgs/SkeletonBBox.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class SkeletonBBox(genpy.Message):
  _md5sum = "7381be9dad84730eae9a875b5e16a8fa"
  _type = "person_msgs/SkeletonBBox"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

#Dimension 3D
geometry_msgs/Point32 dimension3D

#Center 3D
geometry_msgs/Point32 centroid3D

#Dimension 2D
geometry_msgs/Point32 dimension2D

#Center 2D
geometry_msgs/Point32 centroid2D


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z"""
  __slots__ = ['header','dimension3D','centroid3D','dimension2D','centroid2D']
  _slot_types = ['std_msgs/Header','geometry_msgs/Point32','geometry_msgs/Point32','geometry_msgs/Point32','geometry_msgs/Point32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,dimension3D,centroid3D,dimension2D,centroid2D

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SkeletonBBox, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.dimension3D is None:
        self.dimension3D = geometry_msgs.msg.Point32()
      if self.centroid3D is None:
        self.centroid3D = geometry_msgs.msg.Point32()
      if self.dimension2D is None:
        self.dimension2D = geometry_msgs.msg.Point32()
      if self.centroid2D is None:
        self.centroid2D = geometry_msgs.msg.Point32()
    else:
      self.header = std_msgs.msg.Header()
      self.dimension3D = geometry_msgs.msg.Point32()
      self.centroid3D = geometry_msgs.msg.Point32()
      self.dimension2D = geometry_msgs.msg.Point32()
      self.centroid2D = geometry_msgs.msg.Point32()

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_12f().pack(_x.dimension3D.x, _x.dimension3D.y, _x.dimension3D.z, _x.centroid3D.x, _x.centroid3D.y, _x.centroid3D.z, _x.dimension2D.x, _x.dimension2D.y, _x.dimension2D.z, _x.centroid2D.x, _x.centroid2D.y, _x.centroid2D.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.dimension3D is None:
        self.dimension3D = geometry_msgs.msg.Point32()
      if self.centroid3D is None:
        self.centroid3D = geometry_msgs.msg.Point32()
      if self.dimension2D is None:
        self.dimension2D = geometry_msgs.msg.Point32()
      if self.centroid2D is None:
        self.centroid2D = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.dimension3D.x, _x.dimension3D.y, _x.dimension3D.z, _x.centroid3D.x, _x.centroid3D.y, _x.centroid3D.z, _x.dimension2D.x, _x.dimension2D.y, _x.dimension2D.z, _x.centroid2D.x, _x.centroid2D.y, _x.centroid2D.z,) = _get_struct_12f().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_12f().pack(_x.dimension3D.x, _x.dimension3D.y, _x.dimension3D.z, _x.centroid3D.x, _x.centroid3D.y, _x.centroid3D.z, _x.dimension2D.x, _x.dimension2D.y, _x.dimension2D.z, _x.centroid2D.x, _x.centroid2D.y, _x.centroid2D.z))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.dimension3D is None:
        self.dimension3D = geometry_msgs.msg.Point32()
      if self.centroid3D is None:
        self.centroid3D = geometry_msgs.msg.Point32()
      if self.dimension2D is None:
        self.dimension2D = geometry_msgs.msg.Point32()
      if self.centroid2D is None:
        self.centroid2D = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.dimension3D.x, _x.dimension3D.y, _x.dimension3D.z, _x.centroid3D.x, _x.centroid3D.y, _x.centroid3D.z, _x.dimension2D.x, _x.dimension2D.y, _x.dimension2D.z, _x.centroid2D.x, _x.centroid2D.y, _x.centroid2D.z,) = _get_struct_12f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
