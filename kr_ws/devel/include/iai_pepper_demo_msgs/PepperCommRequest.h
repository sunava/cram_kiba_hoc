// Generated by gencpp from file iai_pepper_demo_msgs/PepperCommRequest.msg
// DO NOT EDIT!


#ifndef IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMMREQUEST_H
#define IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>

namespace iai_pepper_demo_msgs
{
template <class ContainerAllocator>
struct PepperCommRequest_
{
  typedef PepperCommRequest_<ContainerAllocator> Type;

  PepperCommRequest_()
    : speak()
    , point_at()
    , get_pose(false)
    , get_heard(false)  {
    }
  PepperCommRequest_(const ContainerAllocator& _alloc)
    : speak(_alloc)
    , point_at(_alloc)
    , get_pose(false)
    , get_heard(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _speak_type;
  _speak_type speak;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _point_at_type;
  _point_at_type point_at;

   typedef uint8_t _get_pose_type;
  _get_pose_type get_pose;

   typedef uint8_t _get_heard_type;
  _get_heard_type get_heard;





  typedef boost::shared_ptr< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PepperCommRequest_

typedef ::iai_pepper_demo_msgs::PepperCommRequest_<std::allocator<void> > PepperCommRequest;

typedef boost::shared_ptr< ::iai_pepper_demo_msgs::PepperCommRequest > PepperCommRequestPtr;
typedef boost::shared_ptr< ::iai_pepper_demo_msgs::PepperCommRequest const> PepperCommRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator1> & lhs, const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator2> & rhs)
{
  return lhs.speak == rhs.speak &&
    lhs.point_at == rhs.point_at &&
    lhs.get_pose == rhs.get_pose &&
    lhs.get_heard == rhs.get_heard;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator1> & lhs, const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_pepper_demo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6980118cc4956252ec67f5db0718491d";
  }

  static const char* value(const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6980118cc4956252ULL;
  static const uint64_t static_value2 = 0xec67f5db0718491dULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_pepper_demo_msgs/PepperCommRequest";
  }

  static const char* value(const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string speak\n"
"geometry_msgs/PointStamped point_at\n"
"bool get_pose\n"
"bool get_heard\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PointStamped\n"
"# This represents a Point with reference coordinate frame and timestamp\n"
"Header header\n"
"Point point\n"
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
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speak);
      stream.next(m.point_at);
      stream.next(m.get_pose);
      stream.next(m.get_heard);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PepperCommRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_pepper_demo_msgs::PepperCommRequest_<ContainerAllocator>& v)
  {
    s << indent << "speak: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.speak);
    s << indent << "point_at: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.point_at);
    s << indent << "get_pose: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.get_pose);
    s << indent << "get_heard: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.get_heard);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMMREQUEST_H
