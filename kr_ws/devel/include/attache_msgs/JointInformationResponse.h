// Generated by gencpp from file attache_msgs/JointInformationResponse.msg
// DO NOT EDIT!


#ifndef ATTACHE_MSGS_MESSAGE_JOINTINFORMATIONRESPONSE_H
#define ATTACHE_MSGS_MESSAGE_JOINTINFORMATIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace attache_msgs
{
template <class ContainerAllocator>
struct JointInformationResponse_
{
  typedef JointInformationResponse_<ContainerAllocator> Type;

  JointInformationResponse_()
    : success(false)
    , position(0.0)
    , min(0.0)
    , max(0.0)  {
    }
  JointInformationResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , position(0.0)
    , min(0.0)
    , max(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef float _position_type;
  _position_type position;

   typedef float _min_type;
  _min_type min;

   typedef float _max_type;
  _max_type max;





  typedef boost::shared_ptr< ::attache_msgs::JointInformationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::attache_msgs::JointInformationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct JointInformationResponse_

typedef ::attache_msgs::JointInformationResponse_<std::allocator<void> > JointInformationResponse;

typedef boost::shared_ptr< ::attache_msgs::JointInformationResponse > JointInformationResponsePtr;
typedef boost::shared_ptr< ::attache_msgs::JointInformationResponse const> JointInformationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::attache_msgs::JointInformationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::attache_msgs::JointInformationResponse_<ContainerAllocator1> & lhs, const ::attache_msgs::JointInformationResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.position == rhs.position &&
    lhs.min == rhs.min &&
    lhs.max == rhs.max;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::attache_msgs::JointInformationResponse_<ContainerAllocator1> & lhs, const ::attache_msgs::JointInformationResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace attache_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::attache_msgs::JointInformationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::attache_msgs::JointInformationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::attache_msgs::JointInformationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b90e2695124aa5e50c04865b4e2fd6d";
  }

  static const char* value(const ::attache_msgs::JointInformationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b90e2695124aa5eULL;
  static const uint64_t static_value2 = 0x50c04865b4e2fd6dULL;
};

template<class ContainerAllocator>
struct DataType< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "attache_msgs/JointInformationResponse";
  }

  static const char* value(const ::attache_msgs::JointInformationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"float32 position\n"
"float32 min\n"
"float32 max\n"
"\n"
;
  }

  static const char* value(const ::attache_msgs::JointInformationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.position);
      stream.next(m.min);
      stream.next(m.max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointInformationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::attache_msgs::JointInformationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::attache_msgs::JointInformationResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "min: ";
    Printer<float>::stream(s, indent + "  ", v.min);
    s << indent << "max: ";
    Printer<float>::stream(s, indent + "  ", v.max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATTACHE_MSGS_MESSAGE_JOINTINFORMATIONRESPONSE_H
