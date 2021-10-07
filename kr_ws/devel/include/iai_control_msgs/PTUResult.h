// Generated by gencpp from file iai_control_msgs/PTUResult.msg
// DO NOT EDIT!


#ifndef IAI_CONTROL_MSGS_MESSAGE_PTURESULT_H
#define IAI_CONTROL_MSGS_MESSAGE_PTURESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iai_control_msgs
{
template <class ContainerAllocator>
struct PTUResult_
{
  typedef PTUResult_<ContainerAllocator> Type;

  PTUResult_()
    : answer()  {
    }
  PTUResult_(const ContainerAllocator& _alloc)
    : answer(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _answer_type;
  _answer_type answer;





  typedef boost::shared_ptr< ::iai_control_msgs::PTUResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_control_msgs::PTUResult_<ContainerAllocator> const> ConstPtr;

}; // struct PTUResult_

typedef ::iai_control_msgs::PTUResult_<std::allocator<void> > PTUResult;

typedef boost::shared_ptr< ::iai_control_msgs::PTUResult > PTUResultPtr;
typedef boost::shared_ptr< ::iai_control_msgs::PTUResult const> PTUResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_control_msgs::PTUResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_control_msgs::PTUResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_control_msgs::PTUResult_<ContainerAllocator1> & lhs, const ::iai_control_msgs::PTUResult_<ContainerAllocator2> & rhs)
{
  return lhs.answer == rhs.answer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_control_msgs::PTUResult_<ContainerAllocator1> & lhs, const ::iai_control_msgs::PTUResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::PTUResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::PTUResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::PTUResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7e708f879c94bb931716d8f4f130f30";
  }

  static const char* value(const ::iai_control_msgs::PTUResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7e708f879c94bb9ULL;
  static const uint64_t static_value2 = 0x31716d8f4f130f30ULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_control_msgs/PTUResult";
  }

  static const char* value(const ::iai_control_msgs::PTUResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"string answer\n"
;
  }

  static const char* value(const ::iai_control_msgs::PTUResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.answer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PTUResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_control_msgs::PTUResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_control_msgs::PTUResult_<ContainerAllocator>& v)
  {
    s << indent << "answer: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.answer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_CONTROL_MSGS_MESSAGE_PTURESULT_H
