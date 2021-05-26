#include <sstream>
#include <ros/ros.h>
// #include <std_msgs/String.h>
#include "arm_lib/NameDetail.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "msgPublisher");
  ros::NodeHandle n;
  ros::Publisher msgPublisher = n.advertise<arm_lib::NameDetail>("/publishMsg", 1000);
  ros::Rate loop_rate(10);

  int counter = 0;

  while (ros::ok())
  {
    arm_lib::NameDetail detail;
    detail.firstName = "Elbetel";
    detail.lastName = "Workineh";
    detail.count = counter;

    std::cout << "Msg # " << (int)detail.count << ": First Name: " << detail.firstName << " Last Name: " << detail.lastName << std::endl;

    msgPublisher.publish(detail);

    ros::spinOnce();
    loop_rate.sleep();
    counter++;
  }
  return 0;
}