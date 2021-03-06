// Generated by gencpp from file json_prolog_msgs/PrologQueryResponse.msg
// DO NOT EDIT!


#ifndef JSON_PROLOG_MSGS_MESSAGE_PROLOGQUERYRESPONSE_H
#define JSON_PROLOG_MSGS_MESSAGE_PROLOGQUERYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace json_prolog_msgs
{
template <class ContainerAllocator>
struct PrologQueryResponse_
{
  typedef PrologQueryResponse_<ContainerAllocator> Type;

  PrologQueryResponse_()
    : ok(false)
    , message()  {
    }
  PrologQueryResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PrologQueryResponse_

typedef ::json_prolog_msgs::PrologQueryResponse_<std::allocator<void> > PrologQueryResponse;

typedef boost::shared_ptr< ::json_prolog_msgs::PrologQueryResponse > PrologQueryResponsePtr;
typedef boost::shared_ptr< ::json_prolog_msgs::PrologQueryResponse const> PrologQueryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator1> & lhs, const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator1> & lhs, const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace json_prolog_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f6fcb3b1ed8c7743c7fb7d5bcca28513";
  }

  static const char* value(const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf6fcb3b1ed8c7743ULL;
  static const uint64_t static_value2 = 0xc7fb7d5bcca28513ULL;
};

template<class ContainerAllocator>
struct DataType< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "json_prolog_msgs/PrologQueryResponse";
  }

  static const char* value(const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrologQueryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::json_prolog_msgs::PrologQueryResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSON_PROLOG_MSGS_MESSAGE_PROLOGQUERYRESPONSE_H
