#include "ros/ros.h"
#include "ilk_paket/kelimeSayaci.h"

//Senaryo: Clientten gelecek olan kelimelerin adetini tutup response olarak cliente gönderecek


int main(int argc, char **argv)
{
    if(argc<2){
        ROS_ERROR("HATALI PARAMETRE GIRDINIZ...");
        ROS_ERROR("kelimeler_service_ClientEx kelimeler...");
    return 1;
    }


    ros::init(argc,argv,"kelimeler_Client_Node");
    ros::NodeHandle nh;

    ros::ServiceClient client_ = nh.serviceClient<ilk_paket::kelimeSayaci>("kelimelerTopic");

    ilk_paket::kelimeSayaci kelimeler;
   while(nullptr!=*argv){
    printf("%s\n",*argv);
   kelimeler.request.kelimeler+=(' '+(*argv++));
   }

    if(client_.call(kelimeler)){
        printf("Kelimeler =%s\n",kelimeler.request.kelimeler);
        printf("Kelime sayisi=%d\n",kelimeler.response.sayac);
    }
    else{
        ROS_ERROR("HATA OLUSTU...");
        return 1;
    }


    return 0;
}