// Generated by gencpp from file iai_kinematics_msgs/GetPositionFKRequest.msg
// DO NOT EDIT!


#ifndef IAI_KINEMATICS_MSGS_MESSAGE_GETPOSITIONFKREQUEST_H
#define IAI_KINEMATICS_MSGS_MESSAGE_GETPOSITIONFKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <iai_kinematics_msgs/RobotState.h>

namespace iai_kinematics_msgs
{
template <class ContainerAllocator>
struct GetPositionFKRequest_
{
  typedef GetPositionFKRequest_<ContainerAllocator> Type;

  GetPositionFKRequest_()
    : header()
    , fk_link_names()
    , robot_state()  {
    }
  GetPositionFKRequest_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , fk_link_names(_alloc)
    , robot_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _fk_link_names_type;
  _fk_link_names_type fk_link_names;

   typedef  ::iai_kinematics_msgs::RobotState_<ContainerAllocator>  _robot_state_type;
  _robot_state_type robot_state;





  typedef boost::shared_ptr< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPositionFKRequest_

typedef ::iai_kinematics_msgs::GetPositionFKRequest_<std::allocator<void> > GetPositionFKRequest;

typedef boost::shared_ptr< ::iai_kinematics_msgs::GetPositionFKRequest > GetPositionFKRequestPtr;
typedef boost::shared_ptr< ::iai_kinematics_msgs::GetPositionFKRequest const> GetPositionFKRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.fk_link_names == rhs.fk_link_names &&
    lhs.robot_state == rhs.robot_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_kinematics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ddaa8b9932e60599795bcb983e28cf57";
  }

  static const char* value(const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xddaa8b9932e60599ULL;
  static const uint64_t static_value2 = 0x795bcb983e28cf57ULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_kinematics_msgs/GetPositionFKRequest";
  }

  static const char* value(const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A service definition for a standard forward kinematics service\n"
"# The frame_id in the header message is the frame in which \n"
"# the forward kinematics poses will be returned\n"
"Header header\n"
"\n"
"# A vector of link name for which forward kinematics must be computed\n"
"string[] fk_link_names\n"
"\n"
"# A robot state consisting of joint names and joint positions to be used for forward kinematics\n"
"iai_kinematics_msgs/RobotState robot_state\n"
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
"\n"
"================================================================================\n"
"MSG: iai_kinematics_msgs/RobotState\n"
"# This message contains information about the robot state, i.e. the positions of its joints and links\n"
"sensor_msgs/JointState joint_state\n"
"iai_kinematics_msgs/MultiDOFJointState multi_dof_joint_state\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/JointState\n"
"# This is a message that holds data to describe the state of a set of torque controlled joints. \n"
"#\n"
"# The state of each joint (revolute or prismatic) is defined by:\n"
"#  * the position of the joint (rad or m),\n"
"#  * the velocity of the joint (rad/s or m/s) and \n"
"#  * the effort that is applied in the joint (Nm or N).\n"
"#\n"
"# Each joint is uniquely identified by its name\n"
"# The header specifies the time at which the joint states were recorded. All the joint states\n"
"# in one message have to be recorded at the same time.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the joint state. \n"
"# The goal is to make each of the fields optional. When e.g. your joints have no\n"
"# effort associated with them, you can leave the effort array empty. \n"
"#\n"
"# All arrays in this message should have the same size, or be empty.\n"
"# This is the only way to uniquely associate the joint name with the correct\n"
"# states.\n"
"\n"
"\n"
"Header header\n"
"\n"
"string[] name\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] effort\n"
"\n"
"================================================================================\n"
"MSG: iai_kinematics_msgs/MultiDOFJointState\n"
"#A representation of a multi-dof joint state\n"
"time stamp\n"
"string[] joint_names\n"
"string[] frame_ids\n"
"string[] child_frame_ids\n"
"geometry_msgs/Pose[] poses\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.fk_link_names);
      stream.next(m.robot_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPositionFKRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_kinematics_msgs::GetPositionFKRequest_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "fk_link_names[]" << std::endl;
    for (size_t i = 0; i < v.fk_link_names.size(); ++i)
    {
      s << indent << "  fk_link_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.fk_link_names[i]);
    }
    s << indent << "robot_state: ";
    s << std::endl;
    Printer< ::iai_kinematics_msgs::RobotState_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_KINEMATICS_MSGS_MESSAGE_GETPOSITIONFKREQUEST_H
