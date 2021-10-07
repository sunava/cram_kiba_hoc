# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from grasp_stability_msgs/GraspStability.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GraspStability(genpy.Message):
  _md5sum = "27f85b330ae8a5e5c97d0bc8c3a83f4a"
  _type = "grasp_stability_msgs/GraspStability"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """## All of these fields are subject to change as the discussion about
## integration of grasp stability estimation and CRAM progresses


# For telling different grasp stability estimations (i.e. multiple
# arms that are monitored simultaneously) apart.
string measurement_context_id

# Functional data, describing the results of the estimation, and
# the confidence in the result.
float32 grasp_quality		# range: 0.0 - 1.0
float32 estimation_confidence	# range: 0.0 - 1.0

# Grasp category, based on the above values
int32 GRASP_CAT_UNDEFINED=0
int32 GRASP_CAT_GOOD=1
int32 GRASP_CAT_MEDIUM=2
int32 GRASP_CAT_BAD=3

int32 grasp_category		# the category of the grasp"""
  # Pseudo-constants
  GRASP_CAT_UNDEFINED = 0
  GRASP_CAT_GOOD = 1
  GRASP_CAT_MEDIUM = 2
  GRASP_CAT_BAD = 3

  __slots__ = ['measurement_context_id','grasp_quality','estimation_confidence','grasp_category']
  _slot_types = ['string','float32','float32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       measurement_context_id,grasp_quality,estimation_confidence,grasp_category

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GraspStability, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.measurement_context_id is None:
        self.measurement_context_id = ''
      if self.grasp_quality is None:
        self.grasp_quality = 0.
      if self.estimation_confidence is None:
        self.estimation_confidence = 0.
      if self.grasp_category is None:
        self.grasp_category = 0
    else:
      self.measurement_context_id = ''
      self.grasp_quality = 0.
      self.estimation_confidence = 0.
      self.grasp_category = 0

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
      _x = self.measurement_context_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2fi().pack(_x.grasp_quality, _x.estimation_confidence, _x.grasp_category))
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
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.measurement_context_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.measurement_context_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.grasp_quality, _x.estimation_confidence, _x.grasp_category,) = _get_struct_2fi().unpack(str[start:end])
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
      _x = self.measurement_context_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2fi().pack(_x.grasp_quality, _x.estimation_confidence, _x.grasp_category))
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
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.measurement_context_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.measurement_context_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.grasp_quality, _x.estimation_confidence, _x.grasp_category,) = _get_struct_2fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2fi = None
def _get_struct_2fi():
    global _struct_2fi
    if _struct_2fi is None:
        _struct_2fi = struct.Struct("<2fi")
    return _struct_2fi
