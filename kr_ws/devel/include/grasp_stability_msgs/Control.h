// Generated by gencpp from file grasp_stability_msgs/Control.msg
// DO NOT EDIT!


#ifndef GRASP_STABILITY_MSGS_MESSAGE_CONTROL_H
#define GRASP_STABILITY_MSGS_MESSAGE_CONTROL_H

#include <ros/service_traits.h>


#include <grasp_stability_msgs/ControlRequest.h>
#include <grasp_stability_msgs/ControlResponse.h>


namespace grasp_stability_msgs
{

struct Control
{

typedef ControlRequest Request;
typedef ControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Control
} // namespace grasp_stability_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::grasp_stability_msgs::Control > {
  static const char* value()
  {
    return "bf72fbddb94b79305e5d568733fc59be";
  }

  static const char* value(const ::grasp_stability_msgs::Control&) { return value(); }
};

template<>
struct DataType< ::grasp_stability_msgs::Control > {
  static const char* value()
  {
    return "grasp_stability_msgs/Control";
  }

  static const char* value(const ::grasp_stability_msgs::Control&) { return value(); }
};


// service_traits::MD5Sum< ::grasp_stability_msgs::ControlRequest> should match
// service_traits::MD5Sum< ::grasp_stability_msgs::Control >
template<>
struct MD5Sum< ::grasp_stability_msgs::ControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::grasp_stability_msgs::Control >::value();
  }
  static const char* value(const ::grasp_stability_msgs::ControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::grasp_stability_msgs::ControlRequest> should match
// service_traits::DataType< ::grasp_stability_msgs::Control >
template<>
struct DataType< ::grasp_stability_msgs::ControlRequest>
{
  static const char* value()
  {
    return DataType< ::grasp_stability_msgs::Control >::value();
  }
  static const char* value(const ::grasp_stability_msgs::ControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::grasp_stability_msgs::ControlResponse> should match
// service_traits::MD5Sum< ::grasp_stability_msgs::Control >
template<>
struct MD5Sum< ::grasp_stability_msgs::ControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::grasp_stability_msgs::Control >::value();
  }
  static const char* value(const ::grasp_stability_msgs::ControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::grasp_stability_msgs::ControlResponse> should match
// service_traits::DataType< ::grasp_stability_msgs::Control >
template<>
struct DataType< ::grasp_stability_msgs::ControlResponse>
{
  static const char* value()
  {
    return DataType< ::grasp_stability_msgs::Control >::value();
  }
  static const char* value(const ::grasp_stability_msgs::ControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GRASP_STABILITY_MSGS_MESSAGE_CONTROL_H
