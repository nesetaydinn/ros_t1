#include "ros/ros.h"
#include "ilk_paket/kelimeSayaci.h"

//Senaryo: Clientten gelecek olan kelimelerin adetini tutup response olarak cliente gönderecek


bool kelimelerClientEx(ilk_paket::kelimeSayaci::Request &istek, ilk_paket::kelimeSayaci::Response &cevap){
    cevap.sayac=1;
    for(uint32_t c=0;c<sizeof(istek.kelimeler);c++)
    if(' '==istek.kelimeler[c])cevap.sayac++;
    return true;
}


int main(int argc, char **argv)
{
    ros::init(argc,argv,"kelimeler_Server_Node");
    ros::NodeHandle nh;

    ros::ServiceServer server_ = nh.advertiseService("kelimelerTopic",kelimelerClientEx);

    ros::spin();


    return 0;
}
