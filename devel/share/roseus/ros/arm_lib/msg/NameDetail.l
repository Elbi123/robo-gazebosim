;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::NameDetail)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'NameDetail (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::NAMEDETAIL")
  (make-package "ARM_LIB::NAMEDETAIL"))

(in-package "ROS")
;;//! \htmlinclude NameDetail.msg.html


(defclass arm_lib::NameDetail
  :super ros::object
  :slots (_firstName _lastName _count _x _y _z _alpha _beta _gamma _newXX _newXY _newXZ _newYX _newYY _newYZ _newZX _newZY _newZZ _distance _finalVectorX1 _finalVectorX2 _finalVectorX3 _finalVectorY1 _finalVectorY2 _finalVectorY3 _finalVectorZ1 _finalVectorZ2 _finalVectorZ3 ))

(defmethod arm_lib::NameDetail
  (:init
   (&key
    ((:firstName __firstName) "")
    ((:lastName __lastName) "")
    ((:count __count) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    ((:newXX __newXX) 0.0)
    ((:newXY __newXY) 0.0)
    ((:newXZ __newXZ) 0.0)
    ((:newYX __newYX) 0.0)
    ((:newYY __newYY) 0.0)
    ((:newYZ __newYZ) 0.0)
    ((:newZX __newZX) 0.0)
    ((:newZY __newZY) 0.0)
    ((:newZZ __newZZ) 0.0)
    ((:distance __distance) 0.0)
    ((:finalVectorX1 __finalVectorX1) 0.0)
    ((:finalVectorX2 __finalVectorX2) 0.0)
    ((:finalVectorX3 __finalVectorX3) 0.0)
    ((:finalVectorY1 __finalVectorY1) 0.0)
    ((:finalVectorY2 __finalVectorY2) 0.0)
    ((:finalVectorY3 __finalVectorY3) 0.0)
    ((:finalVectorZ1 __finalVectorZ1) 0.0)
    ((:finalVectorZ2 __finalVectorZ2) 0.0)
    ((:finalVectorZ3 __finalVectorZ3) 0.0)
    )
   (send-super :init)
   (setq _firstName (string __firstName))
   (setq _lastName (string __lastName))
   (setq _count (round __count))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   (setq _newXX (float __newXX))
   (setq _newXY (float __newXY))
   (setq _newXZ (float __newXZ))
   (setq _newYX (float __newYX))
   (setq _newYY (float __newYY))
   (setq _newYZ (float __newYZ))
   (setq _newZX (float __newZX))
   (setq _newZY (float __newZY))
   (setq _newZZ (float __newZZ))
   (setq _distance (float __distance))
   (setq _finalVectorX1 (float __finalVectorX1))
   (setq _finalVectorX2 (float __finalVectorX2))
   (setq _finalVectorX3 (float __finalVectorX3))
   (setq _finalVectorY1 (float __finalVectorY1))
   (setq _finalVectorY2 (float __finalVectorY2))
   (setq _finalVectorY3 (float __finalVectorY3))
   (setq _finalVectorZ1 (float __finalVectorZ1))
   (setq _finalVectorZ2 (float __finalVectorZ2))
   (setq _finalVectorZ3 (float __finalVectorZ3))
   self)
  (:firstName
   (&optional __firstName)
   (if __firstName (setq _firstName __firstName)) _firstName)
  (:lastName
   (&optional __lastName)
   (if __lastName (setq _lastName __lastName)) _lastName)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:newXX
   (&optional __newXX)
   (if __newXX (setq _newXX __newXX)) _newXX)
  (:newXY
   (&optional __newXY)
   (if __newXY (setq _newXY __newXY)) _newXY)
  (:newXZ
   (&optional __newXZ)
   (if __newXZ (setq _newXZ __newXZ)) _newXZ)
  (:newYX
   (&optional __newYX)
   (if __newYX (setq _newYX __newYX)) _newYX)
  (:newYY
   (&optional __newYY)
   (if __newYY (setq _newYY __newYY)) _newYY)
  (:newYZ
   (&optional __newYZ)
   (if __newYZ (setq _newYZ __newYZ)) _newYZ)
  (:newZX
   (&optional __newZX)
   (if __newZX (setq _newZX __newZX)) _newZX)
  (:newZY
   (&optional __newZY)
   (if __newZY (setq _newZY __newZY)) _newZY)
  (:newZZ
   (&optional __newZZ)
   (if __newZZ (setq _newZZ __newZZ)) _newZZ)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:finalVectorX1
   (&optional __finalVectorX1)
   (if __finalVectorX1 (setq _finalVectorX1 __finalVectorX1)) _finalVectorX1)
  (:finalVectorX2
   (&optional __finalVectorX2)
   (if __finalVectorX2 (setq _finalVectorX2 __finalVectorX2)) _finalVectorX2)
  (:finalVectorX3
   (&optional __finalVectorX3)
   (if __finalVectorX3 (setq _finalVectorX3 __finalVectorX3)) _finalVectorX3)
  (:finalVectorY1
   (&optional __finalVectorY1)
   (if __finalVectorY1 (setq _finalVectorY1 __finalVectorY1)) _finalVectorY1)
  (:finalVectorY2
   (&optional __finalVectorY2)
   (if __finalVectorY2 (setq _finalVectorY2 __finalVectorY2)) _finalVectorY2)
  (:finalVectorY3
   (&optional __finalVectorY3)
   (if __finalVectorY3 (setq _finalVectorY3 __finalVectorY3)) _finalVectorY3)
  (:finalVectorZ1
   (&optional __finalVectorZ1)
   (if __finalVectorZ1 (setq _finalVectorZ1 __finalVectorZ1)) _finalVectorZ1)
  (:finalVectorZ2
   (&optional __finalVectorZ2)
   (if __finalVectorZ2 (setq _finalVectorZ2 __finalVectorZ2)) _finalVectorZ2)
  (:finalVectorZ3
   (&optional __finalVectorZ3)
   (if __finalVectorZ3 (setq _finalVectorZ3 __finalVectorZ3)) _finalVectorZ3)
  (:serialization-length
   ()
   (+
    ;; string _firstName
    4 (length _firstName)
    ;; string _lastName
    4 (length _lastName)
    ;; uint8 _count
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _alpha
    4
    ;; float32 _beta
    4
    ;; float32 _gamma
    4
    ;; float32 _newXX
    4
    ;; float32 _newXY
    4
    ;; float32 _newXZ
    4
    ;; float32 _newYX
    4
    ;; float32 _newYY
    4
    ;; float32 _newYZ
    4
    ;; float32 _newZX
    4
    ;; float32 _newZY
    4
    ;; float32 _newZZ
    4
    ;; float32 _distance
    4
    ;; float32 _finalVectorX1
    4
    ;; float32 _finalVectorX2
    4
    ;; float32 _finalVectorX3
    4
    ;; float32 _finalVectorY1
    4
    ;; float32 _finalVectorY2
    4
    ;; float32 _finalVectorY3
    4
    ;; float32 _finalVectorZ1
    4
    ;; float32 _finalVectorZ2
    4
    ;; float32 _finalVectorZ3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _firstName
       (write-long (length _firstName) s) (princ _firstName s)
     ;; string _lastName
       (write-long (length _lastName) s) (princ _lastName s)
     ;; uint8 _count
       (write-byte _count s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newXX
       (sys::poke _newXX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newXY
       (sys::poke _newXY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newXZ
       (sys::poke _newXZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newYX
       (sys::poke _newYX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newYY
       (sys::poke _newYY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newYZ
       (sys::poke _newYZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newZX
       (sys::poke _newZX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newZY
       (sys::poke _newZY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _newZZ
       (sys::poke _newZZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorX1
       (sys::poke _finalVectorX1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorX2
       (sys::poke _finalVectorX2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorX3
       (sys::poke _finalVectorX3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorY1
       (sys::poke _finalVectorY1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorY2
       (sys::poke _finalVectorY2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorY3
       (sys::poke _finalVectorY3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorZ1
       (sys::poke _finalVectorZ1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorZ2
       (sys::poke _finalVectorZ2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finalVectorZ3
       (sys::poke _finalVectorZ3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _firstName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firstName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lastName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lastName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beta
     (setq _beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gamma
     (setq _gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newXX
     (setq _newXX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newXY
     (setq _newXY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newXZ
     (setq _newXZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newYX
     (setq _newYX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newYY
     (setq _newYY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newYZ
     (setq _newYZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newZX
     (setq _newZX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newZY
     (setq _newZY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _newZZ
     (setq _newZZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorX1
     (setq _finalVectorX1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorX2
     (setq _finalVectorX2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorX3
     (setq _finalVectorX3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorY1
     (setq _finalVectorY1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorY2
     (setq _finalVectorY2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorY3
     (setq _finalVectorY3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorZ1
     (setq _finalVectorZ1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorZ2
     (setq _finalVectorZ2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finalVectorZ3
     (setq _finalVectorZ3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::NameDetail :md5sum-) "2d2e9b0661c09cf072222627b7f8a0f2")
(setf (get arm_lib::NameDetail :datatype-) "arm_lib/NameDetail")
(setf (get arm_lib::NameDetail :definition-)
      "string firstName
    string lastName
        uint8 count

            float32 x
                float32 y
                    float32 z
                        float32 alpha
                            float32 beta
                                float32 gamma
                                    float32 newXX
                                        float32 newXY
                                            float32 newXZ
                                                float32 newYX
                                                    float32 newYY
                                                        float32 newYZ
                                                            float32 newZX
                                                                float32 newZY
                                                                    float32 newZZ
                                                                        float32 distance
                                                                            float32 finalVectorX1
                                                                                float32 finalVectorX2
                                                                                    float32 finalVectorX3
                                                                                        float32 finalVectorY1
                                                                                            float32 finalVectorY2
                                                                                                float32 finalVectorY3
                                                                                                    float32 finalVectorZ1
                                                                                                        float32 finalVectorZ2
                                                                                                            float32 finalVectorZ3

")



(provide :arm_lib/NameDetail "2d2e9b0661c09cf072222627b7f8a0f2")


