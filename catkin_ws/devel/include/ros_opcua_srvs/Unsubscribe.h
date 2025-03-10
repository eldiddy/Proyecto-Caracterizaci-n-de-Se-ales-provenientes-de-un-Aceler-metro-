// Generated by gencpp from file ros_opcua_srvs/Unsubscribe.msg
// DO NOT EDIT!


#ifndef ROS_OPCUA_SRVS_MESSAGE_UNSUBSCRIBE_H
#define ROS_OPCUA_SRVS_MESSAGE_UNSUBSCRIBE_H

#include <ros/service_traits.h>


#include <ros_opcua_srvs/UnsubscribeRequest.h>
#include <ros_opcua_srvs/UnsubscribeResponse.h>


namespace ros_opcua_srvs
{

struct Unsubscribe
{

typedef UnsubscribeRequest Request;
typedef UnsubscribeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Unsubscribe
} // namespace ros_opcua_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_opcua_srvs::Unsubscribe > {
  static const char* value()
  {
    return "ae5c63ee0cb642bb1e92eac019de8a2c";
  }

  static const char* value(const ::ros_opcua_srvs::Unsubscribe&) { return value(); }
};

template<>
struct DataType< ::ros_opcua_srvs::Unsubscribe > {
  static const char* value()
  {
    return "ros_opcua_srvs/Unsubscribe";
  }

  static const char* value(const ::ros_opcua_srvs::Unsubscribe&) { return value(); }
};


// service_traits::MD5Sum< ::ros_opcua_srvs::UnsubscribeRequest> should match
// service_traits::MD5Sum< ::ros_opcua_srvs::Unsubscribe >
template<>
struct MD5Sum< ::ros_opcua_srvs::UnsubscribeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_opcua_srvs::Unsubscribe >::value();
  }
  static const char* value(const ::ros_opcua_srvs::UnsubscribeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_opcua_srvs::UnsubscribeRequest> should match
// service_traits::DataType< ::ros_opcua_srvs::Unsubscribe >
template<>
struct DataType< ::ros_opcua_srvs::UnsubscribeRequest>
{
  static const char* value()
  {
    return DataType< ::ros_opcua_srvs::Unsubscribe >::value();
  }
  static const char* value(const ::ros_opcua_srvs::UnsubscribeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_opcua_srvs::UnsubscribeResponse> should match
// service_traits::MD5Sum< ::ros_opcua_srvs::Unsubscribe >
template<>
struct MD5Sum< ::ros_opcua_srvs::UnsubscribeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_opcua_srvs::Unsubscribe >::value();
  }
  static const char* value(const ::ros_opcua_srvs::UnsubscribeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_opcua_srvs::UnsubscribeResponse> should match
// service_traits::DataType< ::ros_opcua_srvs::Unsubscribe >
template<>
struct DataType< ::ros_opcua_srvs::UnsubscribeResponse>
{
  static const char* value()
  {
    return DataType< ::ros_opcua_srvs::Unsubscribe >::value();
  }
  static const char* value(const ::ros_opcua_srvs::UnsubscribeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_OPCUA_SRVS_MESSAGE_UNSUBSCRIBE_H
