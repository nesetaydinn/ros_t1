#include "ros/ros.h"
#include "ilk_paket/zaman.h"

void subsFuncEx(const ilk_paket::zaman::ConstPtr &msg){ //callback fonksiyonu
    ROS_INFO("Alınan mesaj saniye değeri = %d",msg->stamp.sec);
    ROS_INFO("Alınan mesaj data değeri = %d",msg->data);
}

int main(int argc, char **argv)
{
    
    ros::init(argc,argv,"subscriber"); //ros'u başlatık node adı subscriber
    ros::NodeHandle nh; 
    ros::Subscriber ilk_paket_sub= nh.subscribe("msg_time",100,subsFuncEx); //bir subscriber oluşturduk topic adı = msg_time , 100 bayt alan ve callback fonksiyonu atandı
    ros::spin(); //callback fonksiyonu kusursuz çalışması için bir döngüye sokuyoruz.

    return 0;
}
