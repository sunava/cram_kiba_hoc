// Generated by gencpp from file iai_kinematics_msgs/KDLWeights.msg
// DO NOT EDIT!


#ifndef IAI_KINEMATICS_MSGS_MESSAGE_KDLWEIGHTS_H
#define IAI_KINEMATICS_MSGS_MESSAGE_KDLWEIGHTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iai_kinematics_msgs
{
template <class ContainerAllocator>
struct KDLWeights_
{
  typedef KDLWeights_<ContainerAllocator> Type;

  KDLWeights_()
    : mode(0)
    , weight_ts()
    , weight_js()
    , lambda(0.0)  {
      weight_ts.assign(0.0);
  }
  KDLWeights_(const ContainerAllocator& _alloc)
    : mode(0)
    , weight_ts()
    , weight_js(_alloc)
    , lambda(0.0)  {
  (void)_alloc;
      weight_ts.assign(0.0);
  }



   typedef int8_t _mode_type;
  _mode_type mode;

   typedef boost::array<double, 36>  _weight_ts_type;
  _weight_ts_type weight_ts;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _weight_js_type;
  _weight_js_type weight_js;

   typedef double _lambda_type;
  _lambda_type lambda;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(INVALID_MODE)
  #undef INVALID_MODE
#endif
#if defined(_WIN32) && defined(SET_TS)
  #undef SET_TS
#endif
#if defined(_WIN32) && defined(SET_JS)
  #undef SET_JS
#endif
#if defined(_WIN32) && defined(SET_LAMBDA)
  #undef SET_LAMBDA
#endif
#if defined(_WIN32) && defined(SET_TS_JS)
  #undef SET_TS_JS
#endif

  enum {
    INVALID_MODE = 0,
    SET_TS = 1,
    SET_JS = 2,
    SET_LAMBDA = 4,
    SET_TS_JS = 3,
  };


  typedef boost::shared_ptr< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> const> ConstPtr;

}; // struct KDLWeights_

typedef ::iai_kinematics_msgs::KDLWeights_<std::allocator<void> > KDLWeights;

typedef boost::shared_ptr< ::iai_kinematics_msgs::KDLWeights > KDLWeightsPtr;
typedef boost::shared_ptr< ::iai_kinematics_msgs::KDLWeights const> KDLWeightsConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode &&
    lhs.weight_ts == rhs.weight_ts &&
    lhs.weight_js == rhs.weight_js &&
    lhs.lambda == rhs.lambda;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_kinematics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
{
  static const char* value()
  {
    return "986315cd29a99987092b708377dfd2ce";
  }

  static const char* value(const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x986315cd29a99987ULL;
  static const uint64_t static_value2 = 0x092b708377dfd2ceULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_kinematics_msgs/KDLWeights";
  }

  static const char* value(const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
{
  static const char* value()
  {
    return "byte INVALID_MODE = 0\n"
"byte SET_TS = 1\n"
"byte SET_JS = 2\n"
"byte SET_LAMBDA = 4\n"
"byte SET_TS_JS = 3\n"
"\n"
"byte mode                  # or-combination of values to set\n"
"float64[36] weight_ts      # the 6x6 matrix of task space weights in row-major order\n"
"float64[] weight_js        # the joints x joints matrix of joint space weights in row-major order\n"
"float64 lambda             # Lambda value\n"
;
  }

  static const char* value(const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.weight_ts);
      stream.next(m.weight_js);
      stream.next(m.lambda);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KDLWeights_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_kinematics_msgs::KDLWeights_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "weight_ts[]" << std::endl;
    for (size_t i = 0; i < v.weight_ts.size(); ++i)
    {
      s << indent << "  weight_ts[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.weight_ts[i]);
    }
    s << indent << "weight_js[]" << std::endl;
    for (size_t i = 0; i < v.weight_js.size(); ++i)
    {
      s << indent << "  weight_js[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.weight_js[i]);
    }
    s << indent << "lambda: ";
    Printer<double>::stream(s, indent + "  ", v.lambda);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_KINEMATICS_MSGS_MESSAGE_KDLWEIGHTS_H