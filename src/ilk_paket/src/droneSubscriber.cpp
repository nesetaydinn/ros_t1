#include "ros/ros.h"
#include "ilk_paket/drone.h"


void droneCallBack(const ilk_paket::drone::ConstPtr &pack){
    ROS_INFO("Drone id = %d\nDrone name=%s",pack->id,pack->name);
    ROS_INFO("Drone vel = %d\nDrone temp=%f",pack->hiz,pack->sicaklik);
    ROS_INFO("Drone batValue=%f",pack->batarya_durumu);
    
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"Drone_Sub");
    ros::NodeHandle nh;
    ros::Subscriber droneSub = nh.subscribe("drone_topic",100,droneCallBack);
    ros::spin();
    

    return 0;
}