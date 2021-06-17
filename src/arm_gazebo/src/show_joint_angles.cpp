
#include <functional>
#include <gazebo/gazebo.hh>
#include <ros/ros.h>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include "arm_gazebo/JointAngles.h"
#include "arm_gazebo/fk.h"
#include "arm_gazebo/ik.h"

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

      std::string jointName1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
      std::string jointName2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
      std::string jointName3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
      std::string jointName4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
      std::string jointName5 = this->model->GetJoint("arm4_arm5_joint")->GetScopedName();
      std::string jointName6 = this->model->GetJoint("arm5_palm_joint")->GetScopedName();

      this->pid1 = common::PID(20.0, 10.0, 10.00);
      this->pid2 = common::PID(20.0, 10.0, 10.00);
      this->pid3 = common::PID(20.0, 10.0, 10.00);
      this->pid4 = common::PID(20.0, 10.0, 10.00);
      this->pid5 = common::PID(20.0, 10.0, 10.00);
      this->pid6 = common::PID(20.0, 10.0, 10.00);

      this->jointController->SetPositionPID(jointName1, pid1);
      this->jointController->SetPositionPID(jointName2, pid2);
      this->jointController->SetPositionPID(jointName3, pid3);
      this->jointController->SetPositionPID(jointName4, pid4);
      this->jointController->SetPositionPID(jointName5, pid5);
      this->jointController->SetPositionPID(jointName6, pid6);

      if (!ros::isInitialized())
      {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "publish_joint_angles", ros::init_options::NoSigintHandler);
      }
      this->rosNode.reset(new ros::NodeHandle("gazebo_client"));

			// Create a named topic, and subscribe to it.
			ros::SubscribeOptions so =
				ros::SubscribeOptions::create<arm_gazebo::JointAngles>(
					"/" + this->model->GetName() + "/pose_cmd",
					1,
					boost::bind(&ModelPush::OnRosMsg, this, _1),
					ros::VoidPtr(), &this->rosQueue);

			this->rosSub = this->rosNode->subscribe(so);

			// Spin up the queue helper thread.
			this->rosQueueThread = std::thread(std::bind(&ModelPush::QueueThread, this));

			this->publisherThread = std::thread(std::bind(&ModelPush::PublishPose, this));

			std::vector<double> _pose = {0.0, 20.0, 30.0};
			this->catchBox(_pose);
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&JointAngle::OnUpdate, this));
    };

  private:
		double GetAngle(std::string jointName)
		{
			return physics::JointState(this->model->GetJoint(jointName)).Position();
		}

	private:
		void SetAngle(std::string jointName, double _angle)
		{
			this->jointController->SetPositionTarget(jointName, _angle);
		}

	private:
		void SetPID(std::string jointName, common::PID _pid)
		{
			this->jointController->SetPositionPID(jointName, _pid);
		}

  private:
		void QueueThread()
		{
			static const double timeout = 0.01;
			while (this->rosNode->ok())
			{
				this->rosQueue.callAvailable(ros::WallDuration(timeout));
			}
		}

  private:
		void OnRosMsg(const arm_gazebo::JointAnglesConstPtr _jointAngle)
		{
			if (_jointAngle->option == 1)
			{
				catchBox({_jointAngle->joint1, _jointAngle->joint4, _jointAngle->joint3});
			}
			else if(_jointAngle->joint1 == 0)
			{
				celeaseBox({_jointAngle->joint1, _jointAngle->joint2, _jointAngle->joint3});
			}
		}

  private:
		void PublishPose()
		{
			while (ros::ok())
			{
				double joint1 = this->GetAngle("chasis_arm1_joint");
				double joint2 = this->GetAngle("arm1_arm2_joint");
				double joint3 = this->GetAngle("arm2_arm3_joint");
				double joint4 = this->GetAngle("arm3_arm4_joint");
				double joint5 = this->GetAngle("arm4_arm5_joint");
				double joint6 = this->GetAngle("arm5_palm_joint");

				// change to radian to degree
				joint1 = joint1 * 180.0 / M_PI;
				joint2 = joint2 * 180.0 / M_PI;
				joint3 = joint3 * 180.0 / M_PI;
				joint4 = joint4 * 180.0 / M_PI;
				joint5 = joint5 * 180.0 / M_PI;
				joint6 = joint6 * 180.0 / M_PI;

				std::vector<double> jointAngles = {joint1, joint2, joint3, joint4, joint5, joint6};
				std::vector<double> linkLengths = {0.1, 0.05, 2.0, 1.0, 0.5, 0.5, 0.5};
				ros::NodeHandle n;
				ros::ServiceClient fk_client = n.serviceClient<arm_gazebo::fk>("fk");
				arm_gazebo::fk fk;

				fk.request.jointAngles = jointAngles;
				fk.request.linkLengths = linkLengths;

				if (fk_client.call(fk))
				{
					std::vector<double> endEffector = fk.response.actuatorPose;
					arm_gazebo::JointAngles _jointAngle;
					_jointAngle.joint1 = endEffector[0];
					_jointAngle.joint2 = endEffector[1];
					_jointAngle.joint3 = endEffector[2];
					ros::Rate loop_rate(10);
					jointAnglePublisher.publish(_jointAngle);
					ros::spinOnce();
				}
				else
				{
					ROS_ERROR("Failed to call FK service.");
				}
			}
		}

  private:
		void UpdateJointAngles(std::vector<double> _jointAngle)
		{
			std::vector<double> jointAngles = this->InverseKinematics(_jointAngle);

			std::string joint1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
			std::string joint2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string joint3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string joint4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
			std::string joint5 = this->model->GetJoint("arm4_arm5_joint")->GetScopedName();
			std::string joint6 = this->model->GetJoint("arm5_palm_joint")->GetScopedName();

			this->pid1 = common::PID(20.0, 10.0, 10.00);
      this->pid2 = common::PID(20.0, 10.0, 10.00);
      this->pid3 = common::PID(20.0, 10.0, 10.00);
      this->pid4 = common::PID(20.0, 10.0, 10.00);
      this->pid5 = common::PID(20.0, 10.0, 10.00);
      this->pid6 = common::PID(20.0, 10.0, 10.00);

			this->SetPID(joint1, pid1);
			this->SetAngle(joint1, jointAngles[0]);

			this->SetPID(joint2, pid2);
			this->SetAngle(joint2, jointAngles[1]);

			this->SetPID(joint3, pid3);
			this->SetAngle(joint3, jointAngles[2]);

			this->SetPID(joint4, pid4);
			this->SetAngle(joint4, jointAngles[3]);

			this->SetPID(joint5, pid5);
			this->SetAngle(joint5, jointAngles[4]);

			this->SetPID(joint6, pid6);
			this->SetAngle(joint6, jointAngles[5]);

			this->jointController->Update();
		}

  public:
		void catchBox(std::vector<double> _endEffector)
		{
			this->UpdateJointAngles(_endEffector);
			std::string palm_left_finger = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palm_right_finger = this->model->GetJoint("palm_right_finger")->GetScopedName();
			common::PID _pid = common::PID(20.0, 10.0, 10.0);
			this->SetPID(palm_left_finger, _pid);
			this->SetAngle(palm_left_finger, -2.7);
			this->SetPID(palm_right_finger, _pid);
			this->SetAngle(palm_right_finger, 2.7);
		}

	public:
		void releaseBox(std::vector<double> _endEffector)
		{
			this->UpdateJointAngles(_endEffector);
			std::string palm_left_finger = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palm_right_finger = this->model->GetJoint("palm_right_finger")->GetScopedName();
			common::PID _pid = common::PID(7.0, 5.0, 2.0);
			this->SetPID(palm_left_finger, _pid);
			this->SetAngle(palm_left_finger, 0.0);
			this->SetPID(palm_right_finger, _pid);
			this->SetAngle(palm_right_finger, 0.0);
		}

  private:
		std::vector<double> InverseKinematics(std::vector<double> _pose)
		{
			ros::NodeHandle n;
			ros::ServiceClient ik_client = n.serviceClient<arm_gazebo::ik>("IK");
			arm_gazebo::ik ik_srv;

			ik_srv.request.actuatorPose = {_pose[0], _pose[1], _pose[2]};
			std::vector<double> angles;
			if (ik_client.call(ik_srv))
			{
				angles = ik_srv.response.jointAngles;
			}
			else
			{
				ROS_ERROR("Failed to call service transform_vector");
			}
			return angles;
		}

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
    common::PID pid1;

  private:
    common::PID pid2;

  private:
    common::PID pid3;
    private:
    common::PID pid4;

  private:
    common::PID pid5;

  private:
    common::PID pid6;
  private:
		std::thread rosQueueThread;
   private:
    std::thread publisherThread;
  private:
		ros::CallbackQueue rosQueue;

    private:
		std::unique_ptr<ros::NodeHandle> rosNode;
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