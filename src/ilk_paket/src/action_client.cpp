#include "ilk_paket/FibonacciAction.h"
#include "actionlib/client/simple_action_client.h"
#include "actionlib/client/terminal_state.h"
#include "cstdlib"


int main(int argc, char ** argv)
{       ros::init(argc,argv,"ros_Action_Client_Example");
        actionlib::SimpleActionClient<ilk_paket::FibonacciAction>action_client("action_Ex_test");
        action_client.waitForServer();
        ilk_paket::FibonacciActionGoal ac_goal;
        ac_goal.goal.order=atoi(argv[1]);
        action_client.sendGoal(ac_goal.goal);

        bool ac_limit = action_client.waitForResult(ros::Duration(30.0));
        if(ac_limit){
            actionlib::SimpleClientGoalState ac_state = action_client.getState();
            ROS_INFO("process has been okay. The resault: %s",ac_state.toString().c_str());
        }
        else {
            ROS_INFO("process has not been in the between defined time...");

        }
    return 0;
}
