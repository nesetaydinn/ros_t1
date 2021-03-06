// Generated by gencpp from file ilk_paket/toplamResponse.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_TOPLAMRESPONSE_H
#define ILK_PAKET_MESSAGE_TOPLAMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ilk_paket
{
template <class ContainerAllocator>
struct toplamResponse_
{
  typedef toplamResponse_<ContainerAllocator> Type;

  toplamResponse_()
    : sonuc(0)  {
    }
  toplamResponse_(const ContainerAllocator& _alloc)
    : sonuc(0)  {
  (void)_alloc;
    }



   typedef int32_t _sonuc_type;
  _sonuc_type sonuc;





  typedef boost::shared_ptr< ::ilk_paket::toplamResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ilk_paket::toplamResponse_<ContainerAllocator> const> ConstPtr;

}; // struct toplamResponse_

typedef ::ilk_paket::toplamResponse_<std::allocator<void> > toplamResponse;

typedef boost::shared_ptr< ::ilk_paket::toplamResponse > toplamResponsePtr;
typedef boost::shared_ptr< ::ilk_paket::toplamResponse const> toplamResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ilk_paket::toplamResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ilk_paket::toplamResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ilk_paket::toplamResponse_<ContainerAllocator1> & lhs, const ::ilk_paket::toplamResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sonuc == rhs.sonuc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ilk_paket::toplamResponse_<ContainerAllocator1> & lhs, const ::ilk_paket::toplamResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ilk_paket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::toplamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::toplamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::toplamResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::toplamResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::toplamResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::toplamResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ilk_paket::toplamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b71c2553696b39a3575811d4670473a7";
  }

  static const char* value(const ::ilk_paket::toplamResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb71c2553696b39a3ULL;
  static const uint64_t static_value2 = 0x575811d4670473a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ilk_paket::toplamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ilk_paket/toplamResponse";
  }

  static const char* value(const ::ilk_paket::toplamResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ilk_paket::toplamResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 sonuc\n"
;
  }

  static const char* value(const ::ilk_paket::toplamResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ilk_paket::toplamResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sonuc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct toplamResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ilk_paket::toplamResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ilk_paket::toplamResponse_<ContainerAllocator>& v)
  {
    s << indent << "sonuc: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sonuc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ILK_PAKET_MESSAGE_TOPLAMRESPONSE_H
