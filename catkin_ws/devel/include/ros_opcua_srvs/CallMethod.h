// Generated by gencpp from file ros_opcua_srvs/CallMethod.msg
// DO NOT EDIT!


#ifndef ROS_OPCUA_SRVS_MESSAGE_CALLMETHOD_H
#define ROS_OPCUA_SRVS_MESSAGE_CALLMETHOD_H

#include <ros/service_traits.h>


#include <ros_opcua_srvs/CallMethodRequest.h>
#include <ros_opcua_srvs/CallMethodResponse.h>


namespace ros_opcua_srvs
{

struct CallMethod
{

typedef CallMethodRequest Request;
typedef CallMethodResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CallMethod
} // namespace ros_opcua_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_opcua_srvs::CallMethod > {
  static const char* value()
  {
    return "c81736c009931c7a501dd513cf80a7b6";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethod&) { return value(); }
};

template<>
struct DataType< ::ros_opcua_srvs::CallMethod > {
  static const char* value()
  {
    return "ros_opcua_srvs/CallMethod";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethod&) { return value(); }
};


// service_traits::MD5Sum< ::ros_opcua_srvs::CallMethodRequest> should match
// service_traits::MD5Sum< ::ros_opcua_srvs::CallMethod >
template<>
struct MD5Sum< ::ros_opcua_srvs::CallMethodRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_opcua_srvs::CallMethod >::value();
  }
  static const char* value(const ::ros_opcua_srvs::CallMethodRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_opcua_srvs::CallMethodRequest> should match
// service_traits::DataType< ::ros_opcua_srvs::CallMethod >
template<>
struct DataType< ::ros_opcua_srvs::CallMethodRequest>
{
  static const char* value()
  {
    return DataType< ::ros_opcua_srvs::CallMethod >::value();
  }
  static const char* value(const ::ros_opcua_srvs::CallMethodRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_opcua_srvs::CallMethodResponse> should match
// service_traits::MD5Sum< ::ros_opcua_srvs::CallMethod >
template<>
struct MD5Sum< ::ros_opcua_srvs::CallMethodResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_opcua_srvs::CallMethod >::value();
  }
  static const char* value(const ::ros_opcua_srvs::CallMethodResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_opcua_srvs::CallMethodResponse> should match
// service_traits::DataType< ::ros_opcua_srvs::CallMethod >
template<>
struct DataType< ::ros_opcua_srvs::CallMethodResponse>
{
  static const char* value()
  {
    return DataType< ::ros_opcua_srvs::CallMethod >::value();
  }
  static const char* value(const ::ros_opcua_srvs::CallMethodResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_OPCUA_SRVS_MESSAGE_CALLMETHOD_H
