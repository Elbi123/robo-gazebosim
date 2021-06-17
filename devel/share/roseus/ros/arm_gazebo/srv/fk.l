;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::fk)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'fk (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::FK")
  (make-package "ARM_GAZEBO::FK"))
(unless (find-package "ARM_GAZEBO::FKREQUEST")
  (make-package "ARM_GAZEBO::FKREQUEST"))
(unless (find-package "ARM_GAZEBO::FKRESPONSE")
  (make-package "ARM_GAZEBO::FKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::fkRequest
  :super ros::object
  :slots (_jointAngles _linkAengths ))

(defmethod arm_gazebo::fkRequest
  (:init
   (&key
    ((:jointAngles __jointAngles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:linkAengths __linkAengths) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _jointAngles __jointAngles)
   (setq _linkAengths __linkAengths)
   self)
  (:jointAngles
   (&optional __jointAngles)
   (if __jointAngles (setq _jointAngles __jointAngles)) _jointAngles)
  (:linkAengths
   (&optional __linkAengths)
   (if __linkAengths (setq _linkAengths __linkAengths)) _linkAengths)
  (:serialization-length
   ()
   (+
    ;; float64[] _jointAngles
    (* 8    (length _jointAngles)) 4
    ;; float64[] _linkAengths
    (* 8    (length _linkAengths)) 4
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
     ;; float64[] _linkAengths
     (write-long (length _linkAengths) s)
     (dotimes (i (length _linkAengths))
       (sys::poke (elt _linkAengths i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _linkAengths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linkAengths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _linkAengths i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::fkResponse
  :super ros::object
  :slots (_actuatorPose ))

(defmethod arm_gazebo::fkResponse
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

(defclass arm_gazebo::fk
  :super ros::object
  :slots ())

(setf (get arm_gazebo::fk :md5sum-) "983ceff1c2f2603605ab3cc1ed99a3a4")
(setf (get arm_gazebo::fk :datatype-) "arm_gazebo/fk")
(setf (get arm_gazebo::fk :request) arm_gazebo::fkRequest)
(setf (get arm_gazebo::fk :response) arm_gazebo::fkResponse)

(defmethod arm_gazebo::fkRequest
  (:response () (instance arm_gazebo::fkResponse :init)))

(setf (get arm_gazebo::fkRequest :md5sum-) "983ceff1c2f2603605ab3cc1ed99a3a4")
(setf (get arm_gazebo::fkRequest :datatype-) "arm_gazebo/fkRequest")
(setf (get arm_gazebo::fkRequest :definition-)
      "
float64[] jointAngles
float64[] linkAengths
---
float64[] actuatorPose
")

(setf (get arm_gazebo::fkResponse :md5sum-) "983ceff1c2f2603605ab3cc1ed99a3a4")
(setf (get arm_gazebo::fkResponse :datatype-) "arm_gazebo/fkResponse")
(setf (get arm_gazebo::fkResponse :definition-)
      "
float64[] jointAngles
float64[] linkAengths
---
float64[] actuatorPose
")



(provide :arm_gazebo/fk "983ceff1c2f2603605ab3cc1ed99a3a4")


