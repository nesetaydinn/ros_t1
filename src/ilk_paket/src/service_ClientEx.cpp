#include "ros/ros.h"
#include "ilk_paket/toplam.h"
#include "cstdlib"

//Client server'a 2 değer gönderecek ve server bu iki değeri toplayıp client'e gönderecek 

int main(int argc, char **argv)
{
    if(argc<3){
        ROS_ERROR("Hatali sayida parametre girildi...\n");
        ROS_ERROR("service_ServerEx sayi1 sayi2\n");
        return 1;
    }
    ros::init(argc,argv,"srv_ExClient");
    ros::NodeHandle nh;
    ros::ServiceClient service_client=nh.serviceClient<ilk_paket::toplam>("Sayi_ToplamaEx");
    
    ilk_paket::toplam srv;
    srv.request.sayi1=atoi(argv[1]);
    srv.request.sayi2=atoi(argv[2]);
    
    if(service_client.call(srv)){
        ROS_INFO("Sayi1=%d\tSayi2=%d\n",srv.request.sayi1,srv.request.sayi2);
        ROS_INFO("Cevap=%d",srv.response.sonuc);
    }
    else{
        ROS_ERROR("Hata mevcut....\n");
    return 1;
    }

    
    
    return 0;
}
