// Generated by gencpp from file iai_kinematics_msgs/KinematicSolverInfo.msg
// DO NOT EDIT!


#ifndef IAI_KINEMATICS_MSGS_MESSAGE_KINEMATICSOLVERINFO_H
#define IAI_KINEMATICS_MSGS_MESSAGE_KINEMATICSOLVERINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <iai_kinematics_msgs/JointLimits.h>

namespace iai_kinematics_msgs
{
template <class ContainerAllocator>
struct KinematicSolverInfo_
{
  typedef KinematicSolverInfo_<ContainerAllocator> Type;

  KinematicSolverInfo_()
    : joint_names()
    , limits()
    , link_names()  {
    }
  KinematicSolverInfo_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , limits(_alloc)
    , link_names(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector< ::iai_kinematics_msgs::JointLimits_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::iai_kinematics_msgs::JointLimits_<ContainerAllocator> >::other >  _limits_type;
  _limits_type limits;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _link_names_type;
  _link_names_type link_names;





  typedef boost::shared_ptr< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> const> ConstPtr;

}; // struct KinematicSolverInfo_

typedef ::iai_kinematics_msgs::KinematicSolverInfo_<std::allocator<void> > KinematicSolverInfo;

typedef boost::shared_ptr< ::iai_kinematics_msgs::KinematicSolverInfo > KinematicSolverInfoPtr;
typedef boost::shared_ptr< ::iai_kinematics_msgs::KinematicSolverInfo const> KinematicSolverInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator2> & rhs)
{
  return lhs.joint_names == rhs.joint_names &&
    lhs.limits == rhs.limits &&
    lhs.link_names == rhs.link_names;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_kinematics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc048557c0f9795c392dd80f8bb00489";
  }

  static const char* value(const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc048557c0f9795cULL;
  static const uint64_t static_value2 = 0x392dd80f8bb00489ULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_kinematics_msgs/KinematicSolverInfo";
  }

  static const char* value(const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A list of joints in the kinematic tree\n"
"string[] joint_names\n"
"# A list of joint limits corresponding to the joint names\n"
"iai_kinematics_msgs/JointLimits[] limits\n"
"# A list of links that the kinematics node provides solutions for\n"
"string[] link_names\n"
"\n"
"================================================================================\n"
"MSG: iai_kinematics_msgs/JointLimits\n"
"# This message contains information about limits of a particular joint (or control dimension)\n"
"string joint_name\n"
"\n"
"# true if the joint has position limits\n"
"bool has_position_limits\n"
"\n"
"# min and max position limits\n"
"float64 min_position\n"
"float64 max_position\n"
"\n"
"# true if joint has velocity limits\n"
"bool has_velocity_limits\n"
"\n"
"# max velocity limit\n"
"float64 max_velocity\n"
"# min_velocity is assumed to be -max_velocity\n"
"\n"
"# true if joint has acceleration limits\n"
"bool has_acceleration_limits\n"
"# max acceleration limit\n"
"float64 max_acceleration\n"
"# min_acceleration is assumed to be -max_acceleration\n"
;
  }

  static const char* value(const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.limits);
      stream.next(m.link_names);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KinematicSolverInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_kinematics_msgs::KinematicSolverInfo_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "limits[]" << std::endl;
    for (size_t i = 0; i < v.limits.size(); ++i)
    {
      s << indent << "  limits[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::iai_kinematics_msgs::JointLimits_<ContainerAllocator> >::stream(s, indent + "    ", v.limits[i]);
    }
    s << indent << "link_names[]" << std::endl;
    for (size_t i = 0; i < v.link_names.size(); ++i)
    {
      s << indent << "  link_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.link_names[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_KINEMATICS_MSGS_MESSAGE_KINEMATICSOLVERINFO_H
