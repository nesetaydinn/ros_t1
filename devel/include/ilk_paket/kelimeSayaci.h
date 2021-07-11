// Generated by gencpp from file ilk_paket/kelimeSayaci.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_KELIMESAYACI_H
#define ILK_PAKET_MESSAGE_KELIMESAYACI_H

#include <ros/service_traits.h>


#include <ilk_paket/kelimeSayaciRequest.h>
#include <ilk_paket/kelimeSayaciResponse.h>


namespace ilk_paket
{

struct kelimeSayaci
{

typedef kelimeSayaciRequest Request;
typedef kelimeSayaciResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct kelimeSayaci
} // namespace ilk_paket


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ilk_paket::kelimeSayaci > {
  static const char* value()
  {
    return "65c69d5d821fe1758c24c7c87273f551";
  }

  static const char* value(const ::ilk_paket::kelimeSayaci&) { return value(); }
};

template<>
struct DataType< ::ilk_paket::kelimeSayaci > {
  static const char* value()
  {
    return "ilk_paket/kelimeSayaci";
  }

  static const char* value(const ::ilk_paket::kelimeSayaci&) { return value(); }
};


// service_traits::MD5Sum< ::ilk_paket::kelimeSayaciRequest> should match
// service_traits::MD5Sum< ::ilk_paket::kelimeSayaci >
template<>
struct MD5Sum< ::ilk_paket::kelimeSayaciRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ilk_paket::kelimeSayaci >::value();
  }
  static const char* value(const ::ilk_paket::kelimeSayaciRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ilk_paket::kelimeSayaciRequest> should match
// service_traits::DataType< ::ilk_paket::kelimeSayaci >
template<>
struct DataType< ::ilk_paket::kelimeSayaciRequest>
{
  static const char* value()
  {
    return DataType< ::ilk_paket::kelimeSayaci >::value();
  }
  static const char* value(const ::ilk_paket::kelimeSayaciRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ilk_paket::kelimeSayaciResponse> should match
// service_traits::MD5Sum< ::ilk_paket::kelimeSayaci >
template<>
struct MD5Sum< ::ilk_paket::kelimeSayaciResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ilk_paket::kelimeSayaci >::value();
  }
  static const char* value(const ::ilk_paket::kelimeSayaciResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ilk_paket::kelimeSayaciResponse> should match
// service_traits::DataType< ::ilk_paket::kelimeSayaci >
template<>
struct DataType< ::ilk_paket::kelimeSayaciResponse>
{
  static const char* value()
  {
    return DataType< ::ilk_paket::kelimeSayaci >::value();
  }
  static const char* value(const ::ilk_paket::kelimeSayaciResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ILK_PAKET_MESSAGE_KELIMESAYACI_H
