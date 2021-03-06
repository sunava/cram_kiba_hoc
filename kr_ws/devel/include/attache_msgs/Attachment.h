// Generated by gencpp from file attache_msgs/Attachment.msg
// DO NOT EDIT!


#ifndef ATTACHE_MSGS_MESSAGE_ATTACHMENT_H
#define ATTACHE_MSGS_MESSAGE_ATTACHMENT_H

#include <ros/service_traits.h>


#include <attache_msgs/AttachmentRequest.h>
#include <attache_msgs/AttachmentResponse.h>


namespace attache_msgs
{

struct Attachment
{

typedef AttachmentRequest Request;
typedef AttachmentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Attachment
} // namespace attache_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::attache_msgs::Attachment > {
  static const char* value()
  {
    return "c66622a43bf3cac88540c60ce36d5b63";
  }

  static const char* value(const ::attache_msgs::Attachment&) { return value(); }
};

template<>
struct DataType< ::attache_msgs::Attachment > {
  static const char* value()
  {
    return "attache_msgs/Attachment";
  }

  static const char* value(const ::attache_msgs::Attachment&) { return value(); }
};


// service_traits::MD5Sum< ::attache_msgs::AttachmentRequest> should match
// service_traits::MD5Sum< ::attache_msgs::Attachment >
template<>
struct MD5Sum< ::attache_msgs::AttachmentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::attache_msgs::Attachment >::value();
  }
  static const char* value(const ::attache_msgs::AttachmentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::attache_msgs::AttachmentRequest> should match
// service_traits::DataType< ::attache_msgs::Attachment >
template<>
struct DataType< ::attache_msgs::AttachmentRequest>
{
  static const char* value()
  {
    return DataType< ::attache_msgs::Attachment >::value();
  }
  static const char* value(const ::attache_msgs::AttachmentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::attache_msgs::AttachmentResponse> should match
// service_traits::MD5Sum< ::attache_msgs::Attachment >
template<>
struct MD5Sum< ::attache_msgs::AttachmentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::attache_msgs::Attachment >::value();
  }
  static const char* value(const ::attache_msgs::AttachmentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::attache_msgs::AttachmentResponse> should match
// service_traits::DataType< ::attache_msgs::Attachment >
template<>
struct DataType< ::attache_msgs::AttachmentResponse>
{
  static const char* value()
  {
    return DataType< ::attache_msgs::Attachment >::value();
  }
  static const char* value(const ::attache_msgs::AttachmentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ATTACHE_MSGS_MESSAGE_ATTACHMENT_H
