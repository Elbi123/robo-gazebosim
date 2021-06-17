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

import tinyik as ik
import numpy as np


def Rx(teta):
    return np.array([
        [1, 0, 0, 0],
        [0, np.cos(teta), -np.sin(teta), 0],
        [0, np.sin(teta), np.cos(teta), 0],
        [0, 0, 0, 1]
    ])


def Ry(teta):
    return np.array([
        [np.cos(teta), 0, np.sin(teta), 0],
        [0, 1, 0, 0],
        [-np.sin(teta), 0, np.cos(teta), 0],
        [0, 0, 0, 1]
    ])


def Rz(teta):
    return np.array([
        [np.cos(teta), -np.sin(teta), 0, 0],
        [np.sin(teta), np.cos(teta), 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def Tz(distance):
    return np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 1, distance],
        [0, 0, 0, 1],
    ])


arm = ik.Actuator([
    'z', [0., 0., .15],
    'x', [0., 0., 2.0],
    'x', [0., 0., 1.0],
    'x', [0., 0., 1.0]
])

arm.ee = [1.0, 1.0, 1.0]

print(arm.angles)


def main():
    m1 = Tz(0.1)
    m2 = Rz(np.radians(60)).dot(Tz(0.05))
    m3 = Rx(np.radians(30)).dot(Tz(2.0))
    m4 = Rx(np.radians(-90)).dot(Tz(1.0))
    m5 = Rx(np.radians(30)).dot(Tz(1.0))
    m = (((m1.dot(m2)).dot(m3)).dot(m4)).dot(m5)
    # print(m)


main()
