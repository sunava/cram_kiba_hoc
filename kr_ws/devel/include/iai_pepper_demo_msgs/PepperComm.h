// Generated by gencpp from file iai_pepper_demo_msgs/PepperComm.msg
// DO NOT EDIT!


#ifndef IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMM_H
#define IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMM_H

#include <ros/service_traits.h>


#include <iai_pepper_demo_msgs/PepperCommRequest.h>
#include <iai_pepper_demo_msgs/PepperCommResponse.h>


namespace iai_pepper_demo_msgs
{

struct PepperComm
{

typedef PepperCommRequest Request;
typedef PepperCommResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PepperComm
} // namespace iai_pepper_demo_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iai_pepper_demo_msgs::PepperComm > {
  static const char* value()
  {
    return "62367ba17406150d44dbf73edf243c81";
  }

  static const char* value(const ::iai_pepper_demo_msgs::PepperComm&) { return value(); }
};

template<>
struct DataType< ::iai_pepper_demo_msgs::PepperComm > {
  static const char* value()
  {
    return "iai_pepper_demo_msgs/PepperComm";
  }

  static const char* value(const ::iai_pepper_demo_msgs::PepperComm&) { return value(); }
};


// service_traits::MD5Sum< ::iai_pepper_demo_msgs::PepperCommRequest> should match
// service_traits::MD5Sum< ::iai_pepper_demo_msgs::PepperComm >
template<>
struct MD5Sum< ::iai_pepper_demo_msgs::PepperCommRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iai_pepper_demo_msgs::PepperComm >::value();
  }
  static const char* value(const ::iai_pepper_demo_msgs::PepperCommRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_pepper_demo_msgs::PepperCommRequest> should match
// service_traits::DataType< ::iai_pepper_demo_msgs::PepperComm >
template<>
struct DataType< ::iai_pepper_demo_msgs::PepperCommRequest>
{
  static const char* value()
  {
    return DataType< ::iai_pepper_demo_msgs::PepperComm >::value();
  }
  static const char* value(const ::iai_pepper_demo_msgs::PepperCommRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iai_pepper_demo_msgs::PepperCommResponse> should match
// service_traits::MD5Sum< ::iai_pepper_demo_msgs::PepperComm >
template<>
struct MD5Sum< ::iai_pepper_demo_msgs::PepperCommResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iai_pepper_demo_msgs::PepperComm >::value();
  }
  static const char* value(const ::iai_pepper_demo_msgs::PepperCommResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_pepper_demo_msgs::PepperCommResponse> should match
// service_traits::DataType< ::iai_pepper_demo_msgs::PepperComm >
template<>
struct DataType< ::iai_pepper_demo_msgs::PepperCommResponse>
{
  static const char* value()
  {
    return DataType< ::iai_pepper_demo_msgs::PepperComm >::value();
  }
  static const char* value(const ::iai_pepper_demo_msgs::PepperCommResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IAI_PEPPER_DEMO_MSGS_MESSAGE_PEPPERCOMM_H
