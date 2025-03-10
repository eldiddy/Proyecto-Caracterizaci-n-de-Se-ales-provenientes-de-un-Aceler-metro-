// Generated by gencpp from file ros_opcua_srvs/ListNodeResponse.msg
// DO NOT EDIT!


#ifndef ROS_OPCUA_SRVS_MESSAGE_LISTNODERESPONSE_H
#define ROS_OPCUA_SRVS_MESSAGE_LISTNODERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_opcua_msgs/Address.h>

namespace ros_opcua_srvs
{
template <class ContainerAllocator>
struct ListNodeResponse_
{
  typedef ListNodeResponse_<ContainerAllocator> Type;

  ListNodeResponse_()
    : success(false)
    , error_message()
    , children()  {
    }
  ListNodeResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_message(_alloc)
    , children(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_message_type;
  _error_message_type error_message;

   typedef std::vector< ::ros_opcua_msgs::Address_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ros_opcua_msgs::Address_<ContainerAllocator> >> _children_type;
  _children_type children;





  typedef boost::shared_ptr< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ListNodeResponse_

typedef ::ros_opcua_srvs::ListNodeResponse_<std::allocator<void> > ListNodeResponse;

typedef boost::shared_ptr< ::ros_opcua_srvs::ListNodeResponse > ListNodeResponsePtr;
typedef boost::shared_ptr< ::ros_opcua_srvs::ListNodeResponse const> ListNodeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.error_message == rhs.error_message &&
    lhs.children == rhs.children;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator1> & lhs, const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_opcua_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a48062a715da7e7fef9ed6b2923f3162";
  }

  static const char* value(const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa48062a715da7e7fULL;
  static const uint64_t static_value2 = 0xef9ed6b2923f3162ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_opcua_srvs/ListNodeResponse";
  }

  static const char* value(const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string error_message\n"
"ros_opcua_msgs/Address[] children\n"
"\n"
"================================================================================\n"
"MSG: ros_opcua_msgs/Address\n"
"string nodeId\n"
"string qualifiedName\n"
;
  }

  static const char* value(const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_message);
      stream.next(m.children);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListNodeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_opcua_srvs::ListNodeResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error_message);
    s << indent << "children[]" << std::endl;
    for (size_t i = 0; i < v.children.size(); ++i)
    {
      s << indent << "  children[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_opcua_msgs::Address_<ContainerAllocator> >::stream(s, indent + "    ", v.children[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_OPCUA_SRVS_MESSAGE_LISTNODERESPONSE_H
