// Generated by gencpp from file attache_msgs/JointControlResponse.msg
// DO NOT EDIT!


#ifndef ATTACHE_MSGS_MESSAGE_JOINTCONTROLRESPONSE_H
#define ATTACHE_MSGS_MESSAGE_JOINTCONTROLRESPONSE_H


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
struct JointControlResponse_
{
  typedef JointControlResponse_<ContainerAllocator> Type;

  JointControlResponse_()
    : success(false)  {
    }
  JointControlResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::attache_msgs::JointControlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::attache_msgs::JointControlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct JointControlResponse_

typedef ::attache_msgs::JointControlResponse_<std::allocator<void> > JointControlResponse;

typedef boost::shared_ptr< ::attache_msgs::JointControlResponse > JointControlResponsePtr;
typedef boost::shared_ptr< ::attache_msgs::JointControlResponse const> JointControlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::attache_msgs::JointControlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::attache_msgs::JointControlResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::attache_msgs::JointControlResponse_<ContainerAllocator1> & lhs, const ::attache_msgs::JointControlResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::attache_msgs::JointControlResponse_<ContainerAllocator1> & lhs, const ::attache_msgs::JointControlResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace attache_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::attache_msgs::JointControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::attache_msgs::JointControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::attache_msgs::JointControlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::attache_msgs::JointControlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "attache_msgs/JointControlResponse";
  }

  static const char* value(const ::attache_msgs::JointControlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::attache_msgs::JointControlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointControlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::attache_msgs::JointControlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::attache_msgs::JointControlResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATTACHE_MSGS_MESSAGE_JOINTCONTROLRESPONSE_H
