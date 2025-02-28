// Generated by gencpp from file ros_opcua_srvs/CallMethodRequest.msg
// DO NOT EDIT!


#ifndef ROS_OPCUA_SRVS_MESSAGE_CALLMETHODREQUEST_H
#define ROS_OPCUA_SRVS_MESSAGE_CALLMETHODREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_opcua_msgs/Address.h>
#include <ros_opcua_msgs/Address.h>
#include <ros_opcua_msgs/TypeValue.h>

namespace ros_opcua_srvs
{
template <class ContainerAllocator>
struct CallMethodRequest_
{
  typedef CallMethodRequest_<ContainerAllocator> Type;

  CallMethodRequest_()
    : node()
    , method()
    , data()  {
    }
  CallMethodRequest_(const ContainerAllocator& _alloc)
    : node(_alloc)
    , method(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ros_opcua_msgs::Address_<ContainerAllocator>  _node_type;
  _node_type node;

   typedef  ::ros_opcua_msgs::Address_<ContainerAllocator>  _method_type;
  _method_type method;

   typedef std::vector< ::ros_opcua_msgs::TypeValue_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ros_opcua_msgs::TypeValue_<ContainerAllocator> >> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CallMethodRequest_

typedef ::ros_opcua_srvs::CallMethodRequest_<std::allocator<void> > CallMethodRequest;

typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodRequest > CallMethodRequestPtr;
typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodRequest const> CallMethodRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator2> & rhs)
{
  return lhs.node == rhs.node &&
    lhs.method == rhs.method &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_opcua_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d911fedbf4548ba12a7052d0fa8bc895";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd911fedbf4548ba1ULL;
  static const uint64_t static_value2 = 0x2a7052d0fa8bc895ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_opcua_srvs/CallMethodRequest";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_opcua_msgs/Address node\n"
"ros_opcua_msgs/Address method\n"
"ros_opcua_msgs/TypeValue[] data\n"
"\n"
"================================================================================\n"
"MSG: ros_opcua_msgs/Address\n"
"string nodeId\n"
"string qualifiedName\n"
"================================================================================\n"
"MSG: ros_opcua_msgs/TypeValue\n"
"# This represents OPC-UA type-value pair\n"
"string type\n"
"bool bool_d\n"
"int8 int8_d\n"
"uint8 uint8_d\n"
"int16 int16_d\n"
"uint16 uint16_d\n"
"int32 int32_d\n"
"uint32 uint32_d\n"
"int64 int64_d\n"
"uint64 uint64_d\n"
"float32 float_d\n"
"float64 double_d\n"
"string string_d\n"
;
  }

  static const char* value(const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node);
      stream.next(m.method);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CallMethodRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_opcua_srvs::CallMethodRequest_<ContainerAllocator>& v)
  {
    s << indent << "node: ";
    s << std::endl;
    Printer< ::ros_opcua_msgs::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.node);
    s << indent << "method: ";
    s << std::endl;
    Printer< ::ros_opcua_msgs::Address_<ContainerAllocator> >::stream(s, indent + "  ", v.method);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_opcua_msgs::TypeValue_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_OPCUA_SRVS_MESSAGE_CALLMETHODREQUEST_H
