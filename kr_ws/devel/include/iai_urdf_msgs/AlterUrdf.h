// Generated by gencpp from file iai_urdf_msgs/AlterUrdf.msg
// DO NOT EDIT!


#ifndef IAI_URDF_MSGS_MESSAGE_ALTERURDF_H
#define IAI_URDF_MSGS_MESSAGE_ALTERURDF_H

#include <ros/service_traits.h>


#include <iai_urdf_msgs/AlterUrdfRequest.h>
#include <iai_urdf_msgs/AlterUrdfResponse.h>


namespace iai_urdf_msgs
{

struct AlterUrdf
{

typedef AlterUrdfRequest Request;
typedef AlterUrdfResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AlterUrdf
} // namespace iai_urdf_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iai_urdf_msgs::AlterUrdf > {
  static const char* value()
  {
    return "3b731db7cc750f692e4b9188b114d807";
  }

  static const char* value(const ::iai_urdf_msgs::AlterUrdf&) { return value(); }
};

template<>
struct DataType< ::iai_urdf_msgs::AlterUrdf > {
  static const char* value()
  {
    return "iai_urdf_msgs/AlterUrdf";
  }

  static const char* value(const ::iai_urdf_msgs::AlterUrdf&) { return value(); }
};


// service_traits::MD5Sum< ::iai_urdf_msgs::AlterUrdfRequest> should match
// service_traits::MD5Sum< ::iai_urdf_msgs::AlterUrdf >
template<>
struct MD5Sum< ::iai_urdf_msgs::AlterUrdfRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iai_urdf_msgs::AlterUrdf >::value();
  }
  static const char* value(const ::iai_urdf_msgs::AlterUrdfRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_urdf_msgs::AlterUrdfRequest> should match
// service_traits::DataType< ::iai_urdf_msgs::AlterUrdf >
template<>
struct DataType< ::iai_urdf_msgs::AlterUrdfRequest>
{
  static const char* value()
  {
    return DataType< ::iai_urdf_msgs::AlterUrdf >::value();
  }
  static const char* value(const ::iai_urdf_msgs::AlterUrdfRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iai_urdf_msgs::AlterUrdfResponse> should match
// service_traits::MD5Sum< ::iai_urdf_msgs::AlterUrdf >
template<>
struct MD5Sum< ::iai_urdf_msgs::AlterUrdfResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iai_urdf_msgs::AlterUrdf >::value();
  }
  static const char* value(const ::iai_urdf_msgs::AlterUrdfResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_urdf_msgs::AlterUrdfResponse> should match
// service_traits::DataType< ::iai_urdf_msgs::AlterUrdf >
template<>
struct DataType< ::iai_urdf_msgs::AlterUrdfResponse>
{
  static const char* value()
  {
    return DataType< ::iai_urdf_msgs::AlterUrdf >::value();
  }
  static const char* value(const ::iai_urdf_msgs::AlterUrdfResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IAI_URDF_MSGS_MESSAGE_ALTERURDF_H
