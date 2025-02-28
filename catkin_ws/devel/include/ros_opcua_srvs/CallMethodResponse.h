// Generated by gencpp from file ros_opcua_srvs/CallMethodResponse.msg
// DO NOT EDIT!


#ifndef ROS_OPCUA_SRVS_MESSAGE_CALLMETHODRESPONSE_H
#define ROS_OPCUA_SRVS_MESSAGE_CALLMETHODRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_opcua_msgs/TypeValue.h>

namespace ros_opcua_srvs
{
template <class ContainerAllocator>
struct CallMethodResponse_
{
  typedef CallMethodResponse_<ContainerAllocator> Type;

  CallMethodResponse_()
    : success(false)
    , error_message()
    , data()  {
    }
  CallMethodResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_message(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_message_type;
  _error_message_type error_message;

   typedef std::vector< ::ros_opcua_msgs::TypeValue_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ros_opcua_msgs::TypeValue_<ContainerAllocator> >> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CallMethodResponse_

typedef ::ros_opcua_srvs::CallMethodResponse_<std::allocator<void> > CallMethodResponse;

typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodResponse > CallMethodResponsePtr;
typedef boost::shared_ptr< ::ros_opcua_srvs::CallMethodResponse const> CallMethodResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.error_message == rhs.error_message &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_opcua_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47e49cd90e316142b73785b69c187ff3";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47e49cd90e316142ULL;
  static const uint64_t static_value2 = 0xb73785b69c187ff3ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_opcua_srvs/CallMethodResponse";
  }

  static const char* value(const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string error_message\n"
"ros_opcua_msgs/TypeValue[] data\n"
"\n"
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

  static const char* value(const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_message);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CallMethodResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_opcua_srvs::CallMethodResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error_message);
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

#endif // ROS_OPCUA_SRVS_MESSAGE_CALLMETHODRESPONSE_H
