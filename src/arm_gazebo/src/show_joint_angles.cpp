
#include <functional>
#include <gazebo/gazebo.hh>
#include <ros/ros.h>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include "arm_gazebo/JointAngles.h"

namespace gazebo
{
  class JointAngle : public ModelPlugin
  {
  public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      // Store the pointer to the model
      this->model = _parent;
      this->jointController = this->model->GetJointController();
      ros::NodeHandle n;
      this->jointAnglePublisher = n.advertise<arm_gazebo::JointAngles>("/publishJointAngle", 1000);

      if (!ros::isInitialized())
      {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "publish_joint_angles", ros::init_options::NoSigintHandler);
      }
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&JointAngle::OnUpdate, this));
    };

  public:
    void OnUpdate()
    {
      this->publishJointAngles();
    }

  public:
    void publishJointAngles()
    {
      // ROS_INFO("PUBLISHER JOINT ANGLE");
      double a1 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);

      double a2 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);

      double a3 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);

      double a4 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);

      a1 = a1 * 180.0 / M_PI;
      a2 = a2 * 180.0 / M_PI;
      a3 = a3 * 180.0 / M_PI;
      a4 = a4 * 180.0 / M_PI;

      arm_gazebo::JointAngles jointAngles;

      jointAngles.joint1 = a1;
      jointAngles.joint2 = a2;
      jointAngles.joint3 = a3;
      jointAngles.joint4 = a3;

      ros::Rate loop_rate(10);
      ROS_INFO("MSG[JOINT 1]: %f", jointAngles.joint1);
      ROS_INFO("MSG[JOINT 2]: %f", jointAngles.joint2);
      ROS_INFO("MSG[JOINT 3]: %f", jointAngles.joint3);
      ROS_INFO("MSG[JOINT 4]: %f", jointAngles.joint4);

      // PUBLISH
      jointAnglePublisher.publish(jointAngles);
    }

    // Pointer to the model
  private:
    physics::ModelPtr model;

  private:
    event::ConnectionPtr updateConnection;

  private:
    physics::JointControllerPtr jointController;

  private:
    ros::Publisher jointAnglePublisher;
  };
  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(JointAngle)
}