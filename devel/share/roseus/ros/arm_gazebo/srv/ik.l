;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::ik)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'ik (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::IK")
  (make-package "ARM_GAZEBO::IK"))
(unless (find-package "ARM_GAZEBO::IKREQUEST")
  (make-package "ARM_GAZEBO::IKREQUEST"))
(unless (find-package "ARM_GAZEBO::IKRESPONSE")
  (make-package "ARM_GAZEBO::IKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::ikRequest
  :super ros::object
  :slots (_actuatorPose ))

(defmethod arm_gazebo::ikRequest
  (:init
   (&key
    ((:actuatorPose __actuatorPose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuatorPose __actuatorPose)
   self)
  (:actuatorPose
   (&optional __actuatorPose)
   (if __actuatorPose (setq _actuatorPose __actuatorPose)) _actuatorPose)
  (:serialization-length
   ()
   (+
    ;; float64[] _actuatorPose
    (* 8    (length _actuatorPose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _actuatorPose
     (write-long (length _actuatorPose) s)
     (dotimes (i (length _actuatorPose))
       (sys::poke (elt _actuatorPose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _actuatorPose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuatorPose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuatorPose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ikResponse
  :super ros::object
  :slots (_jointAngles ))

(defmethod arm_gazebo::ikResponse
  (:init
   (&key
    ((:jointAngles __jointAngles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _jointAngles __jointAngles)
   self)
  (:jointAngles
   (&optional __jointAngles)
   (if __jointAngles (setq _jointAngles __jointAngles)) _jointAngles)
  (:serialization-length
   ()
   (+
    ;; float64[] _jointAngles
    (* 8    (length _jointAngles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _jointAngles
     (write-long (length _jointAngles) s)
     (dotimes (i (length _jointAngles))
       (sys::poke (elt _jointAngles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _jointAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointAngles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointAngles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ik
  :super ros::object
  :slots ())

(setf (get arm_gazebo::ik :md5sum-) "a27fccb1b9ad9c7a2721e57a6277d63b")
(setf (get arm_gazebo::ik :datatype-) "arm_gazebo/ik")
(setf (get arm_gazebo::ik :request) arm_gazebo::ikRequest)
(setf (get arm_gazebo::ik :response) arm_gazebo::ikResponse)

(defmethod arm_gazebo::ikRequest
  (:response () (instance arm_gazebo::ikResponse :init)))

(setf (get arm_gazebo::ikRequest :md5sum-) "a27fccb1b9ad9c7a2721e57a6277d63b")
(setf (get arm_gazebo::ikRequest :datatype-) "arm_gazebo/ikRequest")
(setf (get arm_gazebo::ikRequest :definition-)
      "float64[] actuatorPose
---
float64[] jointAngles
")

(setf (get arm_gazebo::ikResponse :md5sum-) "a27fccb1b9ad9c7a2721e57a6277d63b")
(setf (get arm_gazebo::ikResponse :datatype-) "arm_gazebo/ikResponse")
(setf (get arm_gazebo::ikResponse :definition-)
      "float64[] actuatorPose
---
float64[] jointAngles
")



(provide :arm_gazebo/ik "a27fccb1b9ad9c7a2721e57a6277d63b")


