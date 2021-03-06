// Generated by gencpp from file iai_wsg_50_msgs/IncrRequest.msg
// DO NOT EDIT!


#ifndef IAI_WSG_50_MSGS_MESSAGE_INCRREQUEST_H
#define IAI_WSG_50_MSGS_MESSAGE_INCRREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iai_wsg_50_msgs
{
template <class ContainerAllocator>
struct IncrRequest_
{
  typedef IncrRequest_<ContainerAllocator> Type;

  IncrRequest_()
    : direction()
    , increment(0.0)  {
    }
  IncrRequest_(const ContainerAllocator& _alloc)
    : direction(_alloc)
    , increment(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _direction_type;
  _direction_type direction;

   typedef float _increment_type;
  _increment_type increment;





  typedef boost::shared_ptr< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> const> ConstPtr;

}; // struct IncrRequest_

typedef ::iai_wsg_50_msgs::IncrRequest_<std::allocator<void> > IncrRequest;

typedef boost::shared_ptr< ::iai_wsg_50_msgs::IncrRequest > IncrRequestPtr;
typedef boost::shared_ptr< ::iai_wsg_50_msgs::IncrRequest const> IncrRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator1> & lhs, const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction &&
    lhs.increment == rhs.increment;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator1> & lhs, const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_wsg_50_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cca1e2c685538b4c18fbfec9ea6b6b36";
  }

  static const char* value(const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcca1e2c685538b4cULL;
  static const uint64_t static_value2 = 0x18fbfec9ea6b6b36ULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_wsg_50_msgs/IncrRequest";
  }

  static const char* value(const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string direction\n"
"float32 increment\n"
;
  }

  static const char* value(const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.increment);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IncrRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_wsg_50_msgs::IncrRequest_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.direction);
    s << indent << "increment: ";
    Printer<float>::stream(s, indent + "  ", v.increment);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_WSG_50_MSGS_MESSAGE_INCRREQUEST_H
