#include <ros/ros.h>
#include "arm_lib/NameDetail.h"

void publishMsg_callback(const arm_lib::NameDetail &subscribeMsg)
{
  std::cout << "Rotated along X and Translated\n"
            << "x' = " << subscribeMsg.newXX << "\n"
            << "y' = " << subscribeMsg.newXY << "\n"
            << "z' = " << subscribeMsg.newXZ << std::endl;

  std::cout << "Rotated along Y and Translated\n"
            << "x' = " << subscribeMsg.newYX << "\n"
            << "y' = " << subscribeMsg.newYY << "\n"
            << "z' = " << subscribeMsg.newYZ << std::endl;
  std::cout << "Rotated along Z and Translated\n"
            << "x' = " << subscribeMsg.newZX << "\n"
            << "y' = " << subscribeMsg.newZY << "\n"
            << "z' = " << subscribeMsg.newZZ << std::endl;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "vectorSubscribe");
  ros::NodeHandle node;

  ros::Subscriber subscribe_color = node.subscribe("/publishVector", 1000, publishMsg_callback);

  ros::spin();

  return 0;
}