// Generated by gencpp from file iai_control_msgs/JointLimits.msg
// DO NOT EDIT!


#ifndef IAI_CONTROL_MSGS_MESSAGE_JOINTLIMITS_H
#define IAI_CONTROL_MSGS_MESSAGE_JOINTLIMITS_H


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
struct JointLimits_
{
  typedef JointLimits_<ContainerAllocator> Type;

  JointLimits_()
    : joint_names()
    , limits_lower()
    , limits_upper()
    , current_position()
    , dist_to_lower()
    , dist_to_upper()
    , dist_to_closer()  {
    }
  JointLimits_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , limits_lower(_alloc)
    , limits_upper(_alloc)
    , current_position(_alloc)
    , dist_to_lower(_alloc)
    , dist_to_upper(_alloc)
    , dist_to_closer(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _limits_lower_type;
  _limits_lower_type limits_lower;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _limits_upper_type;
  _limits_upper_type limits_upper;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _current_position_type;
  _current_position_type current_position;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dist_to_lower_type;
  _dist_to_lower_type dist_to_lower;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dist_to_upper_type;
  _dist_to_upper_type dist_to_upper;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dist_to_closer_type;
  _dist_to_closer_type dist_to_closer;





  typedef boost::shared_ptr< ::iai_control_msgs::JointLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_control_msgs::JointLimits_<ContainerAllocator> const> ConstPtr;

}; // struct JointLimits_

typedef ::iai_control_msgs::JointLimits_<std::allocator<void> > JointLimits;

typedef boost::shared_ptr< ::iai_control_msgs::JointLimits > JointLimitsPtr;
typedef boost::shared_ptr< ::iai_control_msgs::JointLimits const> JointLimitsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_control_msgs::JointLimits_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_control_msgs::JointLimits_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_control_msgs::JointLimits_<ContainerAllocator1> & lhs, const ::iai_control_msgs::JointLimits_<ContainerAllocator2> & rhs)
{
  return lhs.joint_names == rhs.joint_names &&
    lhs.limits_lower == rhs.limits_lower &&
    lhs.limits_upper == rhs.limits_upper &&
    lhs.current_position == rhs.current_position &&
    lhs.dist_to_lower == rhs.dist_to_lower &&
    lhs.dist_to_upper == rhs.dist_to_upper &&
    lhs.dist_to_closer == rhs.dist_to_closer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_control_msgs::JointLimits_<ContainerAllocator1> & lhs, const ::iai_control_msgs::JointLimits_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::JointLimits_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::JointLimits_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::JointLimits_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0da633688836e6915588ad2b309323f6";
  }

  static const char* value(const ::iai_control_msgs::JointLimits_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0da633688836e691ULL;
  static const uint64_t static_value2 = 0x5588ad2b309323f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_control_msgs/JointLimits";
  }

  static const char* value(const ::iai_control_msgs::JointLimits_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] joint_names\n"
"float64[] limits_lower\n"
"float64[] limits_upper\n"
"float64[] current_position\n"
"float64[] dist_to_lower\n"
"float64[] dist_to_upper\n"
"float64[] dist_to_closer\n"
"\n"
;
  }

  static const char* value(const ::iai_control_msgs::JointLimits_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.limits_lower);
      stream.next(m.limits_upper);
      stream.next(m.current_position);
      stream.next(m.dist_to_lower);
      stream.next(m.dist_to_upper);
      stream.next(m.dist_to_closer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointLimits_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_control_msgs::JointLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_control_msgs::JointLimits_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "limits_lower[]" << std::endl;
    for (size_t i = 0; i < v.limits_lower.size(); ++i)
    {
      s << indent << "  limits_lower[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.limits_lower[i]);
    }
    s << indent << "limits_upper[]" << std::endl;
    for (size_t i = 0; i < v.limits_upper.size(); ++i)
    {
      s << indent << "  limits_upper[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.limits_upper[i]);
    }
    s << indent << "current_position[]" << std::endl;
    for (size_t i = 0; i < v.current_position.size(); ++i)
    {
      s << indent << "  current_position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.current_position[i]);
    }
    s << indent << "dist_to_lower[]" << std::endl;
    for (size_t i = 0; i < v.dist_to_lower.size(); ++i)
    {
      s << indent << "  dist_to_lower[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dist_to_lower[i]);
    }
    s << indent << "dist_to_upper[]" << std::endl;
    for (size_t i = 0; i < v.dist_to_upper.size(); ++i)
    {
      s << indent << "  dist_to_upper[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dist_to_upper[i]);
    }
    s << indent << "dist_to_closer[]" << std::endl;
    for (size_t i = 0; i < v.dist_to_closer.size(); ++i)
    {
      s << indent << "  dist_to_closer[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dist_to_closer[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_CONTROL_MSGS_MESSAGE_JOINTLIMITS_H