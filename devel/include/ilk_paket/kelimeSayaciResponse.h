// Generated by gencpp from file ilk_paket/kelimeSayaciResponse.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_KELIMESAYACIRESPONSE_H
#define ILK_PAKET_MESSAGE_KELIMESAYACIRESPONSE_H


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
struct kelimeSayaciResponse_
{
  typedef kelimeSayaciResponse_<ContainerAllocator> Type;

  kelimeSayaciResponse_()
    : sayac(0)  {
    }
  kelimeSayaciResponse_(const ContainerAllocator& _alloc)
    : sayac(0)  {
  (void)_alloc;
    }



   typedef uint32_t _sayac_type;
  _sayac_type sayac;





  typedef boost::shared_ptr< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> const> ConstPtr;

}; // struct kelimeSayaciResponse_

typedef ::ilk_paket::kelimeSayaciResponse_<std::allocator<void> > kelimeSayaciResponse;

typedef boost::shared_ptr< ::ilk_paket::kelimeSayaciResponse > kelimeSayaciResponsePtr;
typedef boost::shared_ptr< ::ilk_paket::kelimeSayaciResponse const> kelimeSayaciResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator1> & lhs, const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sayac == rhs.sayac;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator1> & lhs, const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ilk_paket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86a35ce7b0986f4236e9ef3777ed7074";
  }

  static const char* value(const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86a35ce7b0986f42ULL;
  static const uint64_t static_value2 = 0x36e9ef3777ed7074ULL;
};

template<class ContainerAllocator>
struct DataType< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ilk_paket/kelimeSayaciResponse";
  }

  static const char* value(const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 sayac\n"
;
  }

  static const char* value(const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sayac);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kelimeSayaciResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ilk_paket::kelimeSayaciResponse_<ContainerAllocator>& v)
  {
    s << indent << "sayac: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sayac);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ILK_PAKET_MESSAGE_KELIMESAYACIRESPONSE_H
