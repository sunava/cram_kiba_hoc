// Generated by gencpp from file planning_msgs/PlanningRequest.msg
// DO NOT EDIT!


#ifndef PLANNING_MSGS_MESSAGE_PLANNINGREQUEST_H
#define PLANNING_MSGS_MESSAGE_PLANNINGREQUEST_H


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
struct PlanningRequest_
{
  typedef PlanningRequest_<ContainerAllocator> Type;

  PlanningRequest_()
    : pattern()
    , bindings()
    , scoring_methods()  {
    }
  PlanningRequest_(const ContainerAllocator& _alloc)
    : pattern(_alloc)
    , bindings(_alloc)
    , scoring_methods(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pattern_type;
  _pattern_type pattern;

   typedef std::vector< ::planning_msgs::Binding_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::planning_msgs::Binding_<ContainerAllocator> >::other >  _bindings_type;
  _bindings_type bindings;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _scoring_methods_type;
  _scoring_methods_type scoring_methods;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OSPT)
  #undef OSPT
#endif
#if defined(_WIN32) && defined(PSPT)
  #undef PSPT
#endif
#if defined(_WIN32) && defined(LPFO)
  #undef LPFO
#endif


  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  OSPT;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  PSPT;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  LPFO;

  typedef boost::shared_ptr< ::planning_msgs::PlanningRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning_msgs::PlanningRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PlanningRequest_

typedef ::planning_msgs::PlanningRequest_<std::allocator<void> > PlanningRequest;

typedef boost::shared_ptr< ::planning_msgs::PlanningRequest > PlanningRequestPtr;
typedef boost::shared_ptr< ::planning_msgs::PlanningRequest const> PlanningRequestConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PlanningRequest_<ContainerAllocator>::OSPT =
        
          "\"ospt\""
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PlanningRequest_<ContainerAllocator>::PSPT =
        
          "\"pspt\""
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      PlanningRequest_<ContainerAllocator>::LPFO =
        
          "\"lpfo\""
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning_msgs::PlanningRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning_msgs::PlanningRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planning_msgs::PlanningRequest_<ContainerAllocator1> & lhs, const ::planning_msgs::PlanningRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pattern == rhs.pattern &&
    lhs.bindings == rhs.bindings &&
    lhs.scoring_methods == rhs.scoring_methods;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planning_msgs::PlanningRequest_<ContainerAllocator1> & lhs, const ::planning_msgs::PlanningRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planning_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::PlanningRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::PlanningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::PlanningRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "df3573d1c696fbd0479c044049b5e3a0";
  }

  static const char* value(const ::planning_msgs::PlanningRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdf3573d1c696fbd0ULL;
  static const uint64_t static_value2 = 0x479c044049b5e3a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning_msgs/PlanningRequest";
  }

  static const char* value(const ::planning_msgs::PlanningRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Scoring methods\n"
"string OSPT=\"ospt\"\n"
"string PSPT=\"pspt\"\n"
"string LPFO=\"lpfo\"\n"
"\n"
"# Request fields\n"
"string pattern\n"
"Binding[] bindings\n"
"string[] scoring_methods\n"
"\n"
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

  static const char* value(const ::planning_msgs::PlanningRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pattern);
      stream.next(m.bindings);
      stream.next(m.scoring_methods);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanningRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning_msgs::PlanningRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning_msgs::PlanningRequest_<ContainerAllocator>& v)
  {
    s << indent << "pattern: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pattern);
    s << indent << "bindings[]" << std::endl;
    for (size_t i = 0; i < v.bindings.size(); ++i)
    {
      s << indent << "  bindings[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::planning_msgs::Binding_<ContainerAllocator> >::stream(s, indent + "    ", v.bindings[i]);
    }
    s << indent << "scoring_methods[]" << std::endl;
    for (size_t i = 0; i < v.scoring_methods.size(); ++i)
    {
      s << indent << "  scoring_methods[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.scoring_methods[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MSGS_MESSAGE_PLANNINGREQUEST_H
