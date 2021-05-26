;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::JointAngles)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'JointAngles (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::JOINTANGLES")
  (make-package "ARM_GAZEBO::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html


(defclass arm_gazebo::JointAngles
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 ))

(defmethod arm_gazebo::JointAngles
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:serialization-length
   ()
   (+
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ;; float32 _joint3
    4
    ;; float32 _joint4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint3
     (setq _joint3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint4
     (setq _joint4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_gazebo::JointAngles :md5sum-) "99df565d35e16998dcc56f1295c43447")
(setf (get arm_gazebo::JointAngles :datatype-) "arm_gazebo/JointAngles")
(setf (get arm_gazebo::JointAngles :definition-)
      "float32 joint1
    float32 joint2
        float32 joint3
            float32 joint4

")



(provide :arm_gazebo/JointAngles "99df565d35e16998dcc56f1295c43447")


