// Generated by gencpp from file designator_integration_msgs/DesignatorCommunicationRequest.msg
// DO NOT EDIT!


#ifndef DESIGNATOR_INTEGRATION_MSGS_MESSAGE_DESIGNATORCOMMUNICATIONREQUEST_H
#define DESIGNATOR_INTEGRATION_MSGS_MESSAGE_DESIGNATORCOMMUNICATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <designator_integration_msgs/DesignatorRequest.h>

namespace designator_integration_msgs
{
template <class ContainerAllocator>
struct DesignatorCommunicationRequest_
{
  typedef DesignatorCommunicationRequest_<ContainerAllocator> Type;

  DesignatorCommunicationRequest_()
    : request()  {
    }
  DesignatorCommunicationRequest_(const ContainerAllocator& _alloc)
    : request(_alloc)  {
  (void)_alloc;
    }



   typedef  ::designator_integration_msgs::DesignatorRequest_<ContainerAllocator>  _request_type;
  _request_type request;





  typedef boost::shared_ptr< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DesignatorCommunicationRequest_

typedef ::designator_integration_msgs::DesignatorCommunicationRequest_<std::allocator<void> > DesignatorCommunicationRequest;

typedef boost::shared_ptr< ::designator_integration_msgs::DesignatorCommunicationRequest > DesignatorCommunicationRequestPtr;
typedef boost::shared_ptr< ::designator_integration_msgs::DesignatorCommunicationRequest const> DesignatorCommunicationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator1> & lhs, const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.request == rhs.request;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator1> & lhs, const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace designator_integration_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4481249db37f11e5ce84692ede879600";
  }

  static const char* value(const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4481249db37f11e5ULL;
  static const uint64_t static_value2 = 0xce84692ede879600ULL;
};

template<class ContainerAllocator>
struct DataType< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "designator_integration_msgs/DesignatorCommunicationRequest";
  }

  static const char* value(const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "DesignatorRequest request\n"
"\n"
"================================================================================\n"
"MSG: designator_integration_msgs/DesignatorRequest\n"
"Designator designator\n"
"\n"
"================================================================================\n"
"MSG: designator_integration_msgs/Designator\n"
"int32 TYPE_OBJECT=0\n"
"int32 TYPE_ACTION=1\n"
"int32 TYPE_LOCATION=2\n"
"int32 TYPE_HUMAN=3\n"
"\n"
"int32 type\n"
"\n"
"KeyValuePair[] description\n"
"\n"
"================================================================================\n"
"MSG: designator_integration_msgs/KeyValuePair\n"
"# Purely for (de-)serialization purposes\n"
"int32 id\n"
"int32 parent\n"
"\n"
"# Data\n"
"int32 TYPE_STRING=0\n"
"int32 TYPE_FLOAT=1\n"
"int32 TYPE_DATA=2\n"
"int32 TYPE_LIST=3\n"
"int32 TYPE_POSESTAMPED=4\n"
"int32 TYPE_POSE=5\n"
"int32 TYPE_DESIGNATOR_ACTION=6\n"
"int32 TYPE_DESIGNATOR_OBJECT=7\n"
"int32 TYPE_DESIGNATOR_LOCATION=8\n"
"int32 TYPE_DESIGNATOR_HUMAN=9\n"
"int32 TYPE_POINT=10\n"
"int32 TYPE_WRENCH=11\n"
"int32 TYPE_MATRIX=12\n"
"int32 TYPE_VECTOR=13\n"
"int32 TYPE_TRANSFORMSTAMPED=14\n"
"\n"
"int32 type\n"
"\n"
"string key\n"
"string value_string\n"
"float64 value_float\n"
"char[] value_data\n"
"float64[] value_array\n"
"geometry_msgs/PoseStamped value_posestamped\n"
"geometry_msgs/Pose value_pose\n"
"geometry_msgs/Point value_point\n"
"geometry_msgs/Wrench value_wrench\n"
"geometry_msgs/TransformStamped value_transformstamped\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Wrench\n"
"# This represents force in free space, separated into\n"
"# its linear and angular parts.\n"
"Vector3  force\n"
"Vector3  torque\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/TransformStamped\n"
"# This expresses a transform from coordinate frame header.frame_id\n"
"# to the coordinate frame child_frame_id\n"
"#\n"
"# This message is mostly used by the \n"
"# <a href=\"http://wiki.ros.org/tf\">tf</a> package. \n"
"# See its documentation for more information.\n"
"\n"
"Header header\n"
"string child_frame_id # the frame id of the child frame\n"
"Transform transform\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Transform\n"
"# This represents the transform between two coordinate frames in free space.\n"
"\n"
"Vector3 translation\n"
"Quaternion rotation\n"
;
  }

  static const char* value(const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.request);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DesignatorCommunicationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::designator_integration_msgs::DesignatorCommunicationRequest_<ContainerAllocator>& v)
  {
    s << indent << "request: ";
    s << std::endl;
    Printer< ::designator_integration_msgs::DesignatorRequest_<ContainerAllocator> >::stream(s, indent + "  ", v.request);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DESIGNATOR_INTEGRATION_MSGS_MESSAGE_DESIGNATORCOMMUNICATIONREQUEST_H
