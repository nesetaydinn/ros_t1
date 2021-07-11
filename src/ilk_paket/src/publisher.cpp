#include "ros/ros.h"
#include "ilk_paket/zaman.h"

int main(int argc, char **argv)
{
    ros::init(argc,argv,"publisher"); //rosu initialize (başlattık) ettik
    ros::NodeHandle nh; //bir nodehandle ı oluşturduk
    ros::Publisher ilk_paket_sub = nh.advertise<ilk_paket::zaman>("msg_time",100); //bir publisher oluşturduk adı "msg_time" ve 100 karakterlik alanı var.
    ros::Rate loop_rate(10); //frekans için Rate cinsinden bir değişken oluşturduk. 10Hz
    ilk_paket::zaman msg; // oluşturduğumuz .msg dosyasının tipinde msg isimli bir değişken oluşturduk
    int counter=0;
    while(ros::ok()) //ros çökmediği sürece çalışması için ekledik
    {
        msg.stamp=ros::Time::now(); //stamp'a anlık zamanı alıyor
        msg.data =counter; 

        ROS_INFO("Gönderilen saniye= %d",msg.stamp.sec);
        ROS_INFO("Gönderilen data = %d",msg.data );

        ilk_paket_sub.publish(msg); //oluşturduğumuz publisher değişkeni üzerinden msg değişkenini publish ediyoruz 
        loop_rate.sleep(); //eğer belirtilen periyottan daha kısa sürerse bekliyor.
        counter++;
    }

    return 0;
}
