// Generated by gencpp from file planning_msgs/Step.msg
// DO NOT EDIT!


#ifndef PLANNING_MSGS_MESSAGE_STEP_H
#define PLANNING_MSGS_MESSAGE_STEP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <planning_msgs/Binding.h>

namespace planning_msgs
{
template <class ContainerAllocator>
struct Step_
{
  typedef Step_<ContainerAllocator> Type;

  Step_()
    : id(0)
    , parent(0)
    , type()
    , pattern()
    , call_pattern()
    , bindings()
    , score(0.0)
    , duration()  {
    }
  Step_(const ContainerAllocator& _alloc)
    : id(0)
    , parent(0)
    , type(_alloc)
    , pattern(_alloc)
    , call_pattern(_alloc)
    , bindings(_alloc)
    , score(0.0)
    , duration(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef int32_t _parent_type;
  _parent_type parent;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pattern_type;
  _pattern_type pattern;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _call_pattern_type;
  _call_pattern_type call_pattern;

   typedef std::vector< ::planning_msgs::Binding_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::planning_msgs::Binding_<ContainerAllocator> >::other >  _bindings_type;
  _bindings_type bindings;

   typedef float _score_type;
  _score_type score;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::planning_msgs::Step_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning_msgs::Step_<ContainerAllocator> const> ConstPtr;

}; // struct Step_

typedef ::planning_msgs::Step_<std::allocator<void> > Step;

typedef boost::shared_ptr< ::planning_msgs::Step > StepPtr;
typedef boost::shared_ptr< ::planning_msgs::Step const> StepConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning_msgs::Step_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning_msgs::Step_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning_msgs::Step_<ContainerAllocator1> & lhs, const ::planning_msgs::Step_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.parent == rhs.parent &&
    lhs.type == rhs.type &&
    lhs.pattern == rhs.pattern &&
    lhs.call_pattern == rhs.call_pattern &&
    lhs.bindings == rhs.bindings &&
    lhs.score == rhs.score &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning_msgs::Step_<ContainerAllocator1> & lhs, const ::planning_msgs::Step_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::Step_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::Step_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::Step_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::Step_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::Step_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::Step_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning_msgs::Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "006ef20f0b34b2893a05e6bfad4c98c7";
  }

  static const char* value(const ::planning_msgs::Step_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x006ef20f0b34b289ULL;
  static const uint64_t static_value2 = 0x3a05e6bfad4c98c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::planning_msgs::Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning_msgs/Step";
  }

  static const char* value(const ::planning_msgs::Step_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning_msgs::Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"int32 parent\n"
"string type\n"
"string pattern\n"
"string[] call_pattern\n"
"Binding[] bindings\n"
"float32 score\n"
"float32[] duration\n"
"================================================================================\n"
"MSG: planning_msgs/Binding\n"
"# Constants for determining the datatype encapsulated in the `value` string\n"
"int32 STRING=0\n"
"int32 INT=1\n"
"int32 FLOAT=2\n"
"int32 SYMBOL=3\n"
"\n"
"# The actual fields\n"
"int32 type\n"
"string key\n"
"string value\n"
;
  }

  static const char* value(const ::planning_msgs::Step_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning_msgs::Step_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.parent);
      stream.next(m.type);
      stream.next(m.pattern);
      stream.next(m.call_pattern);
      stream.next(m.bindings);
      stream.next(m.score);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Step_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning_msgs::Step_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning_msgs::Step_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "parent: ";
    Printer<int32_t>::stream(s, indent + "  ", v.parent);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "pattern: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pattern);
    s << indent << "call_pattern[]" << std::endl;
    for (size_t i = 0; i < v.call_pattern.size(); ++i)
    {
      s << indent << "  call_pattern[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.call_pattern[i]);
    }
    s << indent << "bindings[]" << std::endl;
    for (size_t i = 0; i < v.bindings.size(); ++i)
    {
      s << indent << "  bindings[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::planning_msgs::Binding_<ContainerAllocator> >::stream(s, indent + "    ", v.bindings[i]);
    }
    s << indent << "score: ";
    Printer<float>::stream(s, indent + "  ", v.score);
    s << indent << "duration[]" << std::endl;
    for (size_t i = 0; i < v.duration.size(); ++i)
    {
      s << indent << "  duration[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.duration[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MSGS_MESSAGE_STEP_H
