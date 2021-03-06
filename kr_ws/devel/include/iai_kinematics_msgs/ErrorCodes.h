// Generated by gencpp from file iai_kinematics_msgs/ErrorCodes.msg
// DO NOT EDIT!


#ifndef IAI_KINEMATICS_MSGS_MESSAGE_ERRORCODES_H
#define IAI_KINEMATICS_MSGS_MESSAGE_ERRORCODES_H


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
struct ErrorCodes_
{
  typedef ErrorCodes_<ContainerAllocator> Type;

  ErrorCodes_()
    : val(0)  {
    }
  ErrorCodes_(const ContainerAllocator& _alloc)
    : val(0)  {
  (void)_alloc;
    }



   typedef int32_t _val_type;
  _val_type val;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(PLANNING_FAILED)
  #undef PLANNING_FAILED
#endif
#if defined(_WIN32) && defined(SUCCESS)
  #undef SUCCESS
#endif
#if defined(_WIN32) && defined(TIMED_OUT)
  #undef TIMED_OUT
#endif
#if defined(_WIN32) && defined(START_STATE_IN_COLLISION)
  #undef START_STATE_IN_COLLISION
#endif
#if defined(_WIN32) && defined(START_STATE_VIOLATES_PATH_CONSTRAINTS)
  #undef START_STATE_VIOLATES_PATH_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(GOAL_IN_COLLISION)
  #undef GOAL_IN_COLLISION
#endif
#if defined(_WIN32) && defined(GOAL_VIOLATES_PATH_CONSTRAINTS)
  #undef GOAL_VIOLATES_PATH_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_ROBOT_STATE)
  #undef INVALID_ROBOT_STATE
#endif
#if defined(_WIN32) && defined(INCOMPLETE_ROBOT_STATE)
  #undef INCOMPLETE_ROBOT_STATE
#endif
#if defined(_WIN32) && defined(INVALID_PLANNER_ID)
  #undef INVALID_PLANNER_ID
#endif
#if defined(_WIN32) && defined(INVALID_NUM_PLANNING_ATTEMPTS)
  #undef INVALID_NUM_PLANNING_ATTEMPTS
#endif
#if defined(_WIN32) && defined(INVALID_ALLOWED_PLANNING_TIME)
  #undef INVALID_ALLOWED_PLANNING_TIME
#endif
#if defined(_WIN32) && defined(INVALID_GROUP_NAME)
  #undef INVALID_GROUP_NAME
#endif
#if defined(_WIN32) && defined(INVALID_GOAL_JOINT_CONSTRAINTS)
  #undef INVALID_GOAL_JOINT_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_GOAL_POSITION_CONSTRAINTS)
  #undef INVALID_GOAL_POSITION_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_GOAL_ORIENTATION_CONSTRAINTS)
  #undef INVALID_GOAL_ORIENTATION_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_PATH_JOINT_CONSTRAINTS)
  #undef INVALID_PATH_JOINT_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_PATH_POSITION_CONSTRAINTS)
  #undef INVALID_PATH_POSITION_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_PATH_ORIENTATION_CONSTRAINTS)
  #undef INVALID_PATH_ORIENTATION_CONSTRAINTS
#endif
#if defined(_WIN32) && defined(INVALID_TRAJECTORY)
  #undef INVALID_TRAJECTORY
#endif
#if defined(_WIN32) && defined(INVALID_INDEX)
  #undef INVALID_INDEX
#endif
#if defined(_WIN32) && defined(JOINT_LIMITS_VIOLATED)
  #undef JOINT_LIMITS_VIOLATED
#endif
#if defined(_WIN32) && defined(PATH_CONSTRAINTS_VIOLATED)
  #undef PATH_CONSTRAINTS_VIOLATED
#endif
#if defined(_WIN32) && defined(COLLISION_CONSTRAINTS_VIOLATED)
  #undef COLLISION_CONSTRAINTS_VIOLATED
#endif
#if defined(_WIN32) && defined(GOAL_CONSTRAINTS_VIOLATED)
  #undef GOAL_CONSTRAINTS_VIOLATED
#endif
#if defined(_WIN32) && defined(JOINTS_NOT_MOVING)
  #undef JOINTS_NOT_MOVING
#endif
#if defined(_WIN32) && defined(TRAJECTORY_CONTROLLER_FAILED)
  #undef TRAJECTORY_CONTROLLER_FAILED
#endif
#if defined(_WIN32) && defined(FRAME_TRANSFORM_FAILURE)
  #undef FRAME_TRANSFORM_FAILURE
#endif
#if defined(_WIN32) && defined(COLLISION_CHECKING_UNAVAILABLE)
  #undef COLLISION_CHECKING_UNAVAILABLE
#endif
#if defined(_WIN32) && defined(ROBOT_STATE_STALE)
  #undef ROBOT_STATE_STALE
#endif
#if defined(_WIN32) && defined(SENSOR_INFO_STALE)
  #undef SENSOR_INFO_STALE
#endif
#if defined(_WIN32) && defined(NO_IK_SOLUTION)
  #undef NO_IK_SOLUTION
#endif
#if defined(_WIN32) && defined(INVALID_LINK_NAME)
  #undef INVALID_LINK_NAME
#endif
#if defined(_WIN32) && defined(IK_LINK_IN_COLLISION)
  #undef IK_LINK_IN_COLLISION
#endif
#if defined(_WIN32) && defined(NO_FK_SOLUTION)
  #undef NO_FK_SOLUTION
#endif
#if defined(_WIN32) && defined(KINEMATICS_STATE_IN_COLLISION)
  #undef KINEMATICS_STATE_IN_COLLISION
#endif
#if defined(_WIN32) && defined(INVALID_TIMEOUT)
  #undef INVALID_TIMEOUT
#endif

  enum {
    PLANNING_FAILED = -1,
    SUCCESS = 1,
    TIMED_OUT = -2,
    START_STATE_IN_COLLISION = -3,
    START_STATE_VIOLATES_PATH_CONSTRAINTS = -4,
    GOAL_IN_COLLISION = -5,
    GOAL_VIOLATES_PATH_CONSTRAINTS = -6,
    INVALID_ROBOT_STATE = -7,
    INCOMPLETE_ROBOT_STATE = -8,
    INVALID_PLANNER_ID = -9,
    INVALID_NUM_PLANNING_ATTEMPTS = -10,
    INVALID_ALLOWED_PLANNING_TIME = -11,
    INVALID_GROUP_NAME = -12,
    INVALID_GOAL_JOINT_CONSTRAINTS = -13,
    INVALID_GOAL_POSITION_CONSTRAINTS = -14,
    INVALID_GOAL_ORIENTATION_CONSTRAINTS = -15,
    INVALID_PATH_JOINT_CONSTRAINTS = -16,
    INVALID_PATH_POSITION_CONSTRAINTS = -17,
    INVALID_PATH_ORIENTATION_CONSTRAINTS = -18,
    INVALID_TRAJECTORY = -19,
    INVALID_INDEX = -20,
    JOINT_LIMITS_VIOLATED = -21,
    PATH_CONSTRAINTS_VIOLATED = -22,
    COLLISION_CONSTRAINTS_VIOLATED = -23,
    GOAL_CONSTRAINTS_VIOLATED = -24,
    JOINTS_NOT_MOVING = -25,
    TRAJECTORY_CONTROLLER_FAILED = -26,
    FRAME_TRANSFORM_FAILURE = -27,
    COLLISION_CHECKING_UNAVAILABLE = -28,
    ROBOT_STATE_STALE = -29,
    SENSOR_INFO_STALE = -30,
    NO_IK_SOLUTION = -31,
    INVALID_LINK_NAME = -32,
    IK_LINK_IN_COLLISION = -33,
    NO_FK_SOLUTION = -34,
    KINEMATICS_STATE_IN_COLLISION = -35,
    INVALID_TIMEOUT = -36,
  };


  typedef boost::shared_ptr< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> const> ConstPtr;

}; // struct ErrorCodes_

typedef ::iai_kinematics_msgs::ErrorCodes_<std::allocator<void> > ErrorCodes;

typedef boost::shared_ptr< ::iai_kinematics_msgs::ErrorCodes > ErrorCodesPtr;
typedef boost::shared_ptr< ::iai_kinematics_msgs::ErrorCodes const> ErrorCodesConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator2> & rhs)
{
  return lhs.val == rhs.val;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator1> & lhs, const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iai_kinematics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5acf26755415e1ec18a6d523028f204d";
  }

  static const char* value(const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5acf26755415e1ecULL;
  static const uint64_t static_value2 = 0x18a6d523028f204dULL;
};

template<class ContainerAllocator>
struct DataType< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iai_kinematics_msgs/ErrorCodes";
  }

  static const char* value(const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 val\n"
"\n"
"# overall behavior\n"
"int32 PLANNING_FAILED=-1\n"
"int32 SUCCESS=1\n"
"int32 TIMED_OUT=-2\n"
"\n"
"# start state errors\n"
"int32 START_STATE_IN_COLLISION=-3\n"
"int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-4\n"
"\n"
"# goal errors\n"
"int32 GOAL_IN_COLLISION=-5\n"
"int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-6\n"
"\n"
"# robot state\n"
"int32 INVALID_ROBOT_STATE=-7\n"
"int32 INCOMPLETE_ROBOT_STATE=-8\n"
"\n"
"# planning request errors\n"
"int32 INVALID_PLANNER_ID=-9\n"
"int32 INVALID_NUM_PLANNING_ATTEMPTS=-10\n"
"int32 INVALID_ALLOWED_PLANNING_TIME=-11\n"
"int32 INVALID_GROUP_NAME=-12\n"
"int32 INVALID_GOAL_JOINT_CONSTRAINTS=-13\n"
"int32 INVALID_GOAL_POSITION_CONSTRAINTS=-14\n"
"int32 INVALID_GOAL_ORIENTATION_CONSTRAINTS=-15\n"
"int32 INVALID_PATH_JOINT_CONSTRAINTS=-16\n"
"int32 INVALID_PATH_POSITION_CONSTRAINTS=-17\n"
"int32 INVALID_PATH_ORIENTATION_CONSTRAINTS=-18\n"
"\n"
"# state/trajectory monitor errors\n"
"int32 INVALID_TRAJECTORY=-19\n"
"int32 INVALID_INDEX=-20\n"
"int32 JOINT_LIMITS_VIOLATED=-21\n"
"int32 PATH_CONSTRAINTS_VIOLATED=-22\n"
"int32 COLLISION_CONSTRAINTS_VIOLATED=-23\n"
"int32 GOAL_CONSTRAINTS_VIOLATED=-24\n"
"int32 JOINTS_NOT_MOVING=-25\n"
"int32 TRAJECTORY_CONTROLLER_FAILED=-26\n"
"\n"
"# system errors\n"
"int32 FRAME_TRANSFORM_FAILURE=-27\n"
"int32 COLLISION_CHECKING_UNAVAILABLE=-28\n"
"int32 ROBOT_STATE_STALE=-29\n"
"int32 SENSOR_INFO_STALE=-30\n"
"\n"
"# kinematics errors\n"
"int32 NO_IK_SOLUTION=-31\n"
"int32 INVALID_LINK_NAME=-32\n"
"int32 IK_LINK_IN_COLLISION=-33\n"
"int32 NO_FK_SOLUTION=-34\n"
"int32 KINEMATICS_STATE_IN_COLLISION=-35\n"
"\n"
"# general errors\n"
"int32 INVALID_TIMEOUT=-36\n"
"\n"
;
  }

  static const char* value(const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ErrorCodes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iai_kinematics_msgs::ErrorCodes_<ContainerAllocator>& v)
  {
    s << indent << "val: ";
    Printer<int32_t>::stream(s, indent + "  ", v.val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IAI_KINEMATICS_MSGS_MESSAGE_ERRORCODES_H
