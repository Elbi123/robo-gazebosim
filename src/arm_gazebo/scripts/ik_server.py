from __future__ import print_function

from arm_gazebo.srv import IK, IKResponse
import rospy
import tinyik as ik


def IKRequestHandler(req):
    actuatorPose = req.actuatorPose
    arm = ik.Actuator([
        'z', [0, 0, 0.15],
        'x', [0, 0, 2.0],
        'x', [0, 0, 1.0],
        'x', [0, 0, 0.5],
        'z', [0, 0, 0.1],
        'y', [0, 0, 0.1],
    ])

    arm.ee = [actuatorPose[0], actuatorPose[1], actuatorPose[2]]

    print(arm.angles)

    print("Returning: ", arm.angles)
    return IKResponse(arm.angles)


def IKServerInit():
    rospy.init_node('ik_server')
    s = rospy.Service('IK', IK, IKRequestHandler)
    print("Check here")
    rospy.spin()


if __name__ == "__main__":
    IKServerInit()
