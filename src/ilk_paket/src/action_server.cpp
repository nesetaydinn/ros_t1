#include "actionlib/server/simple_action_server.h"
#include "ilk_paket/FibonacciAction.h"

class fibonacciAct{

private:

ros::NodeHandle nh;
actionlib::SimpleActionServer<ilk_paket::FibonacciAction>action_Server;

ilk_paket::FibonacciActionGoal as_goal;
ilk_paket::FibonacciActionFeedback as_feedBack;
ilk_paket::FibonacciActionResult as_result;



public:

fibonacciAct();
~fibonacciAct(){}

void ac_getGoal(const actionlib::SimpleActionServer<ilk_paket::FibonacciAction>::GoalConstPtr &goal);

};

fibonacciAct::fibonacciAct():
action_Server(nh,"action_Ex_test",boost::bind(&fibonacciAct::ac_getGoal,this,_1),false){

    action_Server.start();
}

void fibonacciAct::ac_getGoal(const actionlib::SimpleActionServer<ilk_paket::FibonacciAction>::GoalConstPtr &goal){

ros::Rate rate(1);
as_feedBack.feedback.sequence.clear();

as_feedBack.feedback.sequence.push_back(0);
as_feedBack.feedback.sequence.push_back(1);

for(int c=1;c<goal->order;c++)
    as_feedBack.feedback.sequence.push_back(as_feedBack.feedback.sequence[c]+as_feedBack.feedback.sequence[c-1]);
    as_result.result.sequence=as_feedBack.feedback.sequence;
    action_Server.setSucceeded(as_result.result);
}


int main(int argc, char ** argv)
{
    ros::init(argc,argv,"ros_Action_Server_Example");
    fibonacciAct fibonacciAct;
    ros::spin();
    return 0;
}
