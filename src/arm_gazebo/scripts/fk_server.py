from __future__ import print_function

from arm_gazebo.srv import fk, fkResponse
import rospy
import numpy as np


def FKRequestHandler(req):
    jointAngles = req.jointAngles
    linkLengths = req.linkLengths
    M1 = Rz(jointAngles[0]).dot(Tz(linkLengths[0]))
    M2 = M1.dot(Rx(jointAngles[1])).dot(Tz(linkLengths[1]))
    M3 = M2.dot(Rx(jointAngles[2])).dot(Tz(linkLengths[2]))
    M4 = M3.dot(Rx(jointAngles[3])).dot(Tz(linkLengths[3]))
    M5 = M4.dot(Ry(jointAngles[4])).dot(Tz(linkLengths[4]))
    M6 = M5.dot(Rz(jointAngles[5])).dot(Tz(linkLengths[5]))
    M7 = M6.dot(Tx(jointAngles[6] / 2))

    endEffector = np.array([M7[0][3], M7[1][3], M7[2][3]])

    print("END EFFECTOR POSE: ", endEffector)
    return fkResponse(endEffector)


def FKServerInit():
    rospy.init_node('fk_server_init')
    s = rospy.Service('POSE', fk, FKRequestHandler)
    print("Checking here...")
    rospy.spin()


def Rx(angle):
    return np.array([
        [1, 0, 0, 0],
        [0, np.cos(angle), -np.sin(angle), 0],
        [0, np.sin(angle), np.cos(angle), 0],
        [0, 0, 0, 1]]
    )


def Ry(angle):
    return np.array([
        [np.cos(angle), 0, np.sin(angle), 0],
        [0, 1, 0, 0],
        [-np.sin(angle), 0, np.cos(angle), 0],
        [0, 0, 0, 1]]
    )


def Rz(angle):
    return np.array([
        [np.cos(angle), -np.sin(angle), 0, 0],
        [np.sin(angle), np.cos(angle), 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]]
    )


def Tx(d):
    return np.array([
        [1, 0, 0, d],
        [0, 1, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def Ty(d):
    return np.array([
        [1, 0, 0, 0],
        [0, 1, 0, d],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def Tz(d):
    return np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 1, d],
        [0, 0, 0, 1]
    ])


if __name__ == "__main__":
    FKServerInit()


# import cv2 as cv
# import numpy as np

# img = cv.imread("index.jpeg", cv.IMREAD_GRAYSCALE)
# filter = np.array([
#     [1/9, 1/9, 1/9],
#     [1/9, 1/9, 1/9],
#     [1/9, 1/9, 1/9]
# ])
# filter = np.array([
#     [-1, 0, 1],
#     [-2, 0, 2],
#     [-1, 0, 1]
# ])

# k = 3
# new_image = np.zeros_like(img)

# for i in range(img.shape[0] - 2):
#     for j in range(img.shape[1] - 2):
#         patch = img[i: i + k, j: j + k]
#         Gx = (filter * patch).sum()
#         Gy = (filter.T * patch).sum()
#         G = np.sqrt(Gx**2 + Gy**2)
#         new_image[i, j] = G
# result = filter * patch
# result = [result[:, :, 0].mean(), result[:, :, 1].mean(), result[:, :, 2].mean()]
# new_image[i, j] = result
# img = img[:400, :400, :400]
# cv.imshow("Dispaly Window", new_image)
# cv.waitKey(0)
# print(img.shape)

# img = cv.imread("index.jpeg", cv.)
# filter = np.array([
#     [1, 1, 1],
#     [1, 1, 1],
#     [1, 1, 1]
# ])

# k = 3
# new_image = np.zeros_like(img)

# for i in range(img.shape[0] - 2):
#     for j in range(img.shape[1] - 2):
#         patch = img[i: i + k, j: j + k]
#         result = filter * patch * 1.1
#         result = [result[:, :, 0].mean(), result[:, :, 1].mean(),
#                   result[:, :, 2].mean()]
#         new_image[i, j] = result
# # img = img[:400, :400, :400]
# cv.imshow("Dispaly Window", new_image)
# cv.waitKey(0)
# print(img.shape)
