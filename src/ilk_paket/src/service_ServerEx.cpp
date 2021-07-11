#include "ros/ros.h"
#include "ilk_paket/toplam.h"

//Client server'a 2 değer gönderecek ve server bu iki değeri toplayıp client'e gönderecek 

bool toplamaIslemi(ilk_paket::toplam::Request &istek, ilk_paket::toplam::Response &cevap){
    ROS_INFO("Gelen sayilar\nsayi1=%d\tsayi2=%d\n",istek.sayi1,istek.sayi2);
    cevap.sonuc=istek.sayi1 + istek.sayi2;
    ROS_INFO("Sonuc=%d\n",cevap.sonuc);
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"srv_ExServer");
    ros::NodeHandle nh;
    ros::ServiceServer service_Server=nh.advertiseService("Sayi_ToplamaEx",toplamaIslemi);
    ROS_INFO("SERVICE SERVER HAZIR...");
    ros::spin();
    
    
    return 0;
}
