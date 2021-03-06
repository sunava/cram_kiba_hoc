// Generated by gencpp from file knowrob/EventToken.msg
// DO NOT EDIT!


#ifndef KNOWROB_MESSAGE_EVENTTOKEN_H
#define KNOWROB_MESSAGE_EVENTTOKEN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace knowrob
{
template <class ContainerAllocator>
struct EventToken_
{
  typedef EventToken_<ContainerAllocator> Type;

  EventToken_()
    : timestamp(0.0)
    , polarization(0)
    , event_type()
    , participants()  {
    }
  EventToken_(const ContainerAllocator& _alloc)
    : timestamp(0.0)
    , polarization(0)
    , event_type(_alloc)
    , participants(_alloc)  {
  (void)_alloc;
    }



   typedef double _timestamp_type;
  _timestamp_type timestamp;

   typedef int32_t _polarization_type;
  _polarization_type polarization;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _event_type_type;
  _event_type_type event_type;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _participants_type;
  _participants_type participants;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(EVENT_BEGIN)
  #undef EVENT_BEGIN
#endif
#if defined(_WIN32) && defined(EVENT_END)
  #undef EVENT_END
#endif

  enum {
    EVENT_BEGIN = 0u,
    EVENT_END = 1u,
  };


  typedef boost::shared_ptr< ::knowrob::EventToken_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::knowrob::EventToken_<ContainerAllocator> const> ConstPtr;

}; // struct EventToken_

typedef ::knowrob::EventToken_<std::allocator<void> > EventToken;

typedef boost::shared_ptr< ::knowrob::EventToken > EventTokenPtr;
typedef boost::shared_ptr< ::knowrob::EventToken const> EventTokenConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::knowrob::EventToken_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::knowrob::EventToken_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::knowrob::EventToken_<ContainerAllocator1> & lhs, const ::knowrob::EventToken_<ContainerAllocator2> & rhs)
{
  return lhs.timestamp == rhs.timestamp &&
    lhs.polarization == rhs.polarization &&
    lhs.event_type == rhs.event_type &&
    lhs.participants == rhs.participants;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::knowrob::EventToken_<ContainerAllocator1> & lhs, const ::knowrob::EventToken_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace knowrob

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::knowrob::EventToken_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::knowrob::EventToken_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::knowrob::EventToken_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::knowrob::EventToken_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::knowrob::EventToken_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::knowrob::EventToken_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::knowrob::EventToken_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef1605ad2e6ea74763902600ec3f2947";
  }

  static const char* value(const ::knowrob::EventToken_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef1605ad2e6ea747ULL;
  static const uint64_t static_value2 = 0x63902600ec3f2947ULL;
};

template<class ContainerAllocator>
struct DataType< ::knowrob::EventToken_<ContainerAllocator> >
{
  static const char* value()
  {
    return "knowrob/EventToken";
  }

  static const char* value(const ::knowrob::EventToken_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::knowrob::EventToken_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint8 EVENT_BEGIN=0\n"
"uint8 EVENT_END=1\n"
"\n"
"float64 timestamp\n"
"int32 polarization\n"
"string event_type\n"
"string[] participants\n"
;
  }

  static const char* value(const ::knowrob::EventToken_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::knowrob::EventToken_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timestamp);
      stream.next(m.polarization);
      stream.next(m.event_type);
      stream.next(m.participants);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventToken_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::knowrob::EventToken_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::knowrob::EventToken_<ContainerAllocator>& v)
  {
    s << indent << "timestamp: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp);
    s << indent << "polarization: ";
    Printer<int32_t>::stream(s, indent + "  ", v.polarization);
    s << indent << "event_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.event_type);
    s << indent << "participants[]" << std::endl;
    for (size_t i = 0; i < v.participants.size(); ++i)
    {
      s << indent << "  participants[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.participants[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KNOWROB_MESSAGE_EVENTTOKEN_H
