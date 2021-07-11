#include "ros/ros.h"
#include "ilk_paket/drone.h"

int main(int argc, char **argv)
{
    ros::init(argc,argv,"Drone_Pub");
    ros::NodeHandle nh;

    ros::Publisher ilk_paket_drone = nh.advertise<ilk_paket::drone>("drone_topic",100);
    ros::Rate freq(50);

    ilk_paket::drone msg;
    int counter=0;
    msg.id=1453;
    msg.name="gokBoru";
    u_int16_t batarya=1000,sicaklik=25;    

    while (ros::ok())
    {
        msg.batarya_durumu=(batarya-(counter*0.001));
        msg.hiz=(int32_t)(counter*0.1);
        msg.sicaklik=(sicaklik+(counter*0.001));
        ilk_paket_drone.publish(msg);
        freq.sleep();
        counter++;
    }
    

    return 0;
}
