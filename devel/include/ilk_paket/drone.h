// Generated by gencpp from file ilk_paket/drone.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_DRONE_H
#define ILK_PAKET_MESSAGE_DRONE_H


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
struct drone_
{
  typedef drone_<ContainerAllocator> Type;

  drone_()
    : id(0)
    , name()
    , hiz(0)
    , sicaklik(0.0)
    , batarya_durumu(0.0)  {
    }
  drone_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , hiz(0)
    , sicaklik(0.0)
    , batarya_durumu(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _hiz_type;
  _hiz_type hiz;

   typedef float _sicaklik_type;
  _sicaklik_type sicaklik;

   typedef float _batarya_durumu_type;
  _batarya_durumu_type batarya_durumu;





  typedef boost::shared_ptr< ::ilk_paket::drone_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ilk_paket::drone_<ContainerAllocator> const> ConstPtr;

}; // struct drone_

typedef ::ilk_paket::drone_<std::allocator<void> > drone;

typedef boost::shared_ptr< ::ilk_paket::drone > dronePtr;
typedef boost::shared_ptr< ::ilk_paket::drone const> droneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ilk_paket::drone_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ilk_paket::drone_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ilk_paket::drone_<ContainerAllocator1> & lhs, const ::ilk_paket::drone_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name &&
    lhs.hiz == rhs.hiz &&
    lhs.sicaklik == rhs.sicaklik &&
    lhs.batarya_durumu == rhs.batarya_durumu;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ilk_paket::drone_<ContainerAllocator1> & lhs, const ::ilk_paket::drone_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ilk_paket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::drone_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::drone_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::drone_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::drone_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::drone_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::drone_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ilk_paket::drone_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd87af409edd0de2354fdb3acd1dd1d0";
  }

  static const char* value(const ::ilk_paket::drone_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd87af409edd0de2ULL;
  static const uint64_t static_value2 = 0x354fdb3acd1dd1d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ilk_paket::drone_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ilk_paket/drone";
  }

  static const char* value(const ::ilk_paket::drone_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ilk_paket::drone_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"string name \n"
"int32 hiz\n"
"float32 sicaklik\n"
"float32 batarya_durumu\n"
;
  }

  static const char* value(const ::ilk_paket::drone_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ilk_paket::drone_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.hiz);
      stream.next(m.sicaklik);
      stream.next(m.batarya_durumu);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct drone_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ilk_paket::drone_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ilk_paket::drone_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "hiz: ";
    Printer<int32_t>::stream(s, indent + "  ", v.hiz);
    s << indent << "sicaklik: ";
    Printer<float>::stream(s, indent + "  ", v.sicaklik);
    s << indent << "batarya_durumu: ";
    Printer<float>::stream(s, indent + "  ", v.batarya_durumu);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ILK_PAKET_MESSAGE_DRONE_H
