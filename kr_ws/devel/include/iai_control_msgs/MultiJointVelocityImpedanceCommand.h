// Generated by gencpp from file iai_control_msgs/MultiJointVelocityImpedanceCommand.msg
// DO NOT EDIT!


#ifndef IAI_CONTROL_MSGS_MESSAGE_MULTIJOINTVELOCITYIMPEDANCECOMMAND_H
#define IAI_CONTROL_MSGS_MESSAGE_MULTIJOINTVELOCITYIMPEDANCECOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace iai_control_msgs
{
template <class ContainerAllocator>
struct MultiJointVelocityImpedanceCommand_
{
  typedef MultiJointVelocityImpedanceCommand_<ContainerAllocator> Type;

  MultiJointVelocityImpedanceCommand_()
    : header()
    , velocity()
    , stiffness()
    , damping()
    , add_torque()  {
    }
  MultiJointVelocityImpedanceCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , velocity(_alloc)
    , stiffness(_alloc)
    , damping(_alloc)
    , add_torque(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _velocity_type;
  _velocity_type velocity;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _stiffness_type;
  _stiffness_type stiffness;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _damping_type;
  _damping_type damping;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _add_torque_type;
  _add_torque_type add_torque;





  typedef boost::shared_ptr< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> const> ConstPtr;

}; // struct MultiJointVelocityImpedanceCommand_

typedef ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<std::allocator<void> > MultiJointVelocityImpedanceCommand;

typedef boost::shared_ptr< ::iai_control_msgs::MultiJointVelocityImpedanceCommand > MultiJointVelocityImpedanceCommandPtr;
typedef boost::shared_ptr< ::iai_control_msgs::MultiJointVelocityImpedanceCommand const> MultiJointVelocityImpedanceCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator1> & lhs, const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.velocity == rhs.velocity &&
    lhs.stiffness == rhs.stiffness &&
    lhs.damping == rhs.damping &&
    lhs.add_torque == rhs.add_torque;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator1> & lhs, const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4747ea02611dd2a7cda90f6dce148aa";
  }

  static const char* value(const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4747ea02611dd2aULL;
  static const uint64_t static_value2 = 0x7cda90f6dce148aaULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_control_msgs/MultiJointVelocityImpedanceCommand";
  }

  static const char* value(const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Header\n"
"Header header\n"
"\n"
"# Command to move a set of velocity-resolved robot joints \n"
"float32[] velocity     #joint velocity in rad/s\n"
"float32[] stiffness    #joint stiffness in Nm/rad\n"
"float32[] damping      #joint damping (normalized, 0.7 is critically dampped)\n"
"\n"
"# Experimental field: DO NOT USE unless you really know what you are doing!\n"
"float32[] add_torque   #additional joint torque in Nm\n"
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
;
  }

  static const char* value(const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.velocity);
      stream.next(m.stiffness);
      stream.next(m.damping);
      stream.next(m.add_torque);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiJointVelocityImpedanceCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_control_msgs::MultiJointVelocityImpedanceCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "stiffness[]" << std::endl;
    for (size_t i = 0; i < v.stiffness.size(); ++i)
    {
      s << indent << "  stiffness[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.stiffness[i]);
    }
    s << indent << "damping[]" << std::endl;
    for (size_t i = 0; i < v.damping.size(); ++i)
    {
      s << indent << "  damping[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.damping[i]);
    }
    s << indent << "add_torque[]" << std::endl;
    for (size_t i = 0; i < v.add_torque.size(); ++i)
    {
      s << indent << "  add_torque[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.add_torque[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_CONTROL_MSGS_MESSAGE_MULTIJOINTVELOCITYIMPEDANCECOMMAND_H
