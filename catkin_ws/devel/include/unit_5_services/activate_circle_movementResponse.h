// Generated by gencpp from file unit_5_services/activate_circle_movementResponse.msg
// DO NOT EDIT!


#ifndef UNIT_5_SERVICES_MESSAGE_ACTIVATE_CIRCLE_MOVEMENTRESPONSE_H
#define UNIT_5_SERVICES_MESSAGE_ACTIVATE_CIRCLE_MOVEMENTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace unit_5_services
{
template <class ContainerAllocator>
struct activate_circle_movementResponse_
{
  typedef activate_circle_movementResponse_<ContainerAllocator> Type;

  activate_circle_movementResponse_()
    : success(false)  {
    }
  activate_circle_movementResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> const> ConstPtr;

}; // struct activate_circle_movementResponse_

typedef ::unit_5_services::activate_circle_movementResponse_<std::allocator<void> > activate_circle_movementResponse;

typedef boost::shared_ptr< ::unit_5_services::activate_circle_movementResponse > activate_circle_movementResponsePtr;
typedef boost::shared_ptr< ::unit_5_services::activate_circle_movementResponse const> activate_circle_movementResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator1> & lhs, const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator1> & lhs, const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace unit_5_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unit_5_services/activate_circle_movementResponse";
  }

  static const char* value(const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success      # Did it achieve it?\n"
;
  }

  static const char* value(const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct activate_circle_movementResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unit_5_services::activate_circle_movementResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNIT_5_SERVICES_MESSAGE_ACTIVATE_CIRCLE_MOVEMENTRESPONSE_H
