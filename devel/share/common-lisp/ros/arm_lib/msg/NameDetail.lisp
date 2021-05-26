; Auto-generated. Do not edit!


(cl:in-package arm_lib-msg)


;//! \htmlinclude NameDetail.msg.html

(cl:defclass <NameDetail> (roslisp-msg-protocol:ros-message)
  ((firstName
    :reader firstName
    :initarg :firstName
    :type cl:string
    :initform "")
   (lastName
    :reader lastName
    :initarg :lastName
    :type cl:string
    :initform "")
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:float
    :initform 0.0)
   (beta
    :reader beta
    :initarg :beta
    :type cl:float
    :initform 0.0)
   (gamma
    :reader gamma
    :initarg :gamma
    :type cl:float
    :initform 0.0)
   (newXX
    :reader newXX
    :initarg :newXX
    :type cl:float
    :initform 0.0)
   (newXY
    :reader newXY
    :initarg :newXY
    :type cl:float
    :initform 0.0)
   (newXZ
    :reader newXZ
    :initarg :newXZ
    :type cl:float
    :initform 0.0)
   (newYX
    :reader newYX
    :initarg :newYX
    :type cl:float
    :initform 0.0)
   (newYY
    :reader newYY
    :initarg :newYY
    :type cl:float
    :initform 0.0)
   (newYZ
    :reader newYZ
    :initarg :newYZ
    :type cl:float
    :initform 0.0)
   (newZX
    :reader newZX
    :initarg :newZX
    :type cl:float
    :initform 0.0)
   (newZY
    :reader newZY
    :initarg :newZY
    :type cl:float
    :initform 0.0)
   (newZZ
    :reader newZZ
    :initarg :newZZ
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (finalVectorX1
    :reader finalVectorX1
    :initarg :finalVectorX1
    :type cl:float
    :initform 0.0)
   (finalVectorX2
    :reader finalVectorX2
    :initarg :finalVectorX2
    :type cl:float
    :initform 0.0)
   (finalVectorX3
    :reader finalVectorX3
    :initarg :finalVectorX3
    :type cl:float
    :initform 0.0)
   (finalVectorY1
    :reader finalVectorY1
    :initarg :finalVectorY1
    :type cl:float
    :initform 0.0)
   (finalVectorY2
    :reader finalVectorY2
    :initarg :finalVectorY2
    :type cl:float
    :initform 0.0)
   (finalVectorY3
    :reader finalVectorY3
    :initarg :finalVectorY3
    :type cl:float
    :initform 0.0)
   (finalVectorZ1
    :reader finalVectorZ1
    :initarg :finalVectorZ1
    :type cl:float
    :initform 0.0)
   (finalVectorZ2
    :reader finalVectorZ2
    :initarg :finalVectorZ2
    :type cl:float
    :initform 0.0)
   (finalVectorZ3
    :reader finalVectorZ3
    :initarg :finalVectorZ3
    :type cl:float
    :initform 0.0))
)

(cl:defclass NameDetail (<NameDetail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NameDetail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NameDetail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-msg:<NameDetail> is deprecated: use arm_lib-msg:NameDetail instead.")))

(cl:ensure-generic-function 'firstName-val :lambda-list '(m))
(cl:defmethod firstName-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:firstName-val is deprecated.  Use arm_lib-msg:firstName instead.")
  (firstName m))

(cl:ensure-generic-function 'lastName-val :lambda-list '(m))
(cl:defmethod lastName-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:lastName-val is deprecated.  Use arm_lib-msg:lastName instead.")
  (lastName m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:count-val is deprecated.  Use arm_lib-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:x-val is deprecated.  Use arm_lib-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:y-val is deprecated.  Use arm_lib-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:z-val is deprecated.  Use arm_lib-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:alpha-val is deprecated.  Use arm_lib-msg:alpha instead.")
  (alpha m))

(cl:ensure-generic-function 'beta-val :lambda-list '(m))
(cl:defmethod beta-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:beta-val is deprecated.  Use arm_lib-msg:beta instead.")
  (beta m))

(cl:ensure-generic-function 'gamma-val :lambda-list '(m))
(cl:defmethod gamma-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:gamma-val is deprecated.  Use arm_lib-msg:gamma instead.")
  (gamma m))

(cl:ensure-generic-function 'newXX-val :lambda-list '(m))
(cl:defmethod newXX-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newXX-val is deprecated.  Use arm_lib-msg:newXX instead.")
  (newXX m))

(cl:ensure-generic-function 'newXY-val :lambda-list '(m))
(cl:defmethod newXY-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newXY-val is deprecated.  Use arm_lib-msg:newXY instead.")
  (newXY m))

(cl:ensure-generic-function 'newXZ-val :lambda-list '(m))
(cl:defmethod newXZ-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newXZ-val is deprecated.  Use arm_lib-msg:newXZ instead.")
  (newXZ m))

(cl:ensure-generic-function 'newYX-val :lambda-list '(m))
(cl:defmethod newYX-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newYX-val is deprecated.  Use arm_lib-msg:newYX instead.")
  (newYX m))

(cl:ensure-generic-function 'newYY-val :lambda-list '(m))
(cl:defmethod newYY-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newYY-val is deprecated.  Use arm_lib-msg:newYY instead.")
  (newYY m))

(cl:ensure-generic-function 'newYZ-val :lambda-list '(m))
(cl:defmethod newYZ-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newYZ-val is deprecated.  Use arm_lib-msg:newYZ instead.")
  (newYZ m))

(cl:ensure-generic-function 'newZX-val :lambda-list '(m))
(cl:defmethod newZX-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newZX-val is deprecated.  Use arm_lib-msg:newZX instead.")
  (newZX m))

(cl:ensure-generic-function 'newZY-val :lambda-list '(m))
(cl:defmethod newZY-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newZY-val is deprecated.  Use arm_lib-msg:newZY instead.")
  (newZY m))

(cl:ensure-generic-function 'newZZ-val :lambda-list '(m))
(cl:defmethod newZZ-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:newZZ-val is deprecated.  Use arm_lib-msg:newZZ instead.")
  (newZZ m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:distance-val is deprecated.  Use arm_lib-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'finalVectorX1-val :lambda-list '(m))
(cl:defmethod finalVectorX1-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorX1-val is deprecated.  Use arm_lib-msg:finalVectorX1 instead.")
  (finalVectorX1 m))

(cl:ensure-generic-function 'finalVectorX2-val :lambda-list '(m))
(cl:defmethod finalVectorX2-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorX2-val is deprecated.  Use arm_lib-msg:finalVectorX2 instead.")
  (finalVectorX2 m))

(cl:ensure-generic-function 'finalVectorX3-val :lambda-list '(m))
(cl:defmethod finalVectorX3-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorX3-val is deprecated.  Use arm_lib-msg:finalVectorX3 instead.")
  (finalVectorX3 m))

(cl:ensure-generic-function 'finalVectorY1-val :lambda-list '(m))
(cl:defmethod finalVectorY1-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorY1-val is deprecated.  Use arm_lib-msg:finalVectorY1 instead.")
  (finalVectorY1 m))

(cl:ensure-generic-function 'finalVectorY2-val :lambda-list '(m))
(cl:defmethod finalVectorY2-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorY2-val is deprecated.  Use arm_lib-msg:finalVectorY2 instead.")
  (finalVectorY2 m))

(cl:ensure-generic-function 'finalVectorY3-val :lambda-list '(m))
(cl:defmethod finalVectorY3-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorY3-val is deprecated.  Use arm_lib-msg:finalVectorY3 instead.")
  (finalVectorY3 m))

(cl:ensure-generic-function 'finalVectorZ1-val :lambda-list '(m))
(cl:defmethod finalVectorZ1-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorZ1-val is deprecated.  Use arm_lib-msg:finalVectorZ1 instead.")
  (finalVectorZ1 m))

(cl:ensure-generic-function 'finalVectorZ2-val :lambda-list '(m))
(cl:defmethod finalVectorZ2-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorZ2-val is deprecated.  Use arm_lib-msg:finalVectorZ2 instead.")
  (finalVectorZ2 m))

(cl:ensure-generic-function 'finalVectorZ3-val :lambda-list '(m))
(cl:defmethod finalVectorZ3-val ((m <NameDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:finalVectorZ3-val is deprecated.  Use arm_lib-msg:finalVectorZ3 instead.")
  (finalVectorZ3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NameDetail>) ostream)
  "Serializes a message object of type '<NameDetail>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firstName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firstName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lastName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lastName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newXX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newXY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newXZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newYX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newYY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newYZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newZX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newZY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'newZZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorX1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorX2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorX3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorY1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorY2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorY3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorZ1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorZ2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finalVectorZ3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NameDetail>) istream)
  "Deserializes a message object of type '<NameDetail>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firstName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firstName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lastName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lastName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gamma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newXX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newXY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newXZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newYX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newYY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newYZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newZX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newZY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newZZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorX1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorX2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorX3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorY1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorY2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorY3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorZ1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorZ2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finalVectorZ3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NameDetail>)))
  "Returns string type for a message object of type '<NameDetail>"
  "arm_lib/NameDetail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NameDetail)))
  "Returns string type for a message object of type 'NameDetail"
  "arm_lib/NameDetail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NameDetail>)))
  "Returns md5sum for a message object of type '<NameDetail>"
  "2d2e9b0661c09cf072222627b7f8a0f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NameDetail)))
  "Returns md5sum for a message object of type 'NameDetail"
  "2d2e9b0661c09cf072222627b7f8a0f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NameDetail>)))
  "Returns full string definition for message of type '<NameDetail>"
  (cl:format cl:nil "string firstName~%    string lastName~%        uint8 count~%~%            float32 x~%                float32 y~%                    float32 z~%                        float32 alpha~%                            float32 beta~%                                float32 gamma~%                                    float32 newXX~%                                        float32 newXY~%                                            float32 newXZ~%                                                float32 newYX~%                                                    float32 newYY~%                                                        float32 newYZ~%                                                            float32 newZX~%                                                                float32 newZY~%                                                                    float32 newZZ~%                                                                        float32 distance~%                                                                            float32 finalVectorX1~%                                                                                float32 finalVectorX2~%                                                                                    float32 finalVectorX3~%                                                                                        float32 finalVectorY1~%                                                                                            float32 finalVectorY2~%                                                                                                float32 finalVectorY3~%                                                                                                    float32 finalVectorZ1~%                                                                                                        float32 finalVectorZ2~%                                                                                                            float32 finalVectorZ3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NameDetail)))
  "Returns full string definition for message of type 'NameDetail"
  (cl:format cl:nil "string firstName~%    string lastName~%        uint8 count~%~%            float32 x~%                float32 y~%                    float32 z~%                        float32 alpha~%                            float32 beta~%                                float32 gamma~%                                    float32 newXX~%                                        float32 newXY~%                                            float32 newXZ~%                                                float32 newYX~%                                                    float32 newYY~%                                                        float32 newYZ~%                                                            float32 newZX~%                                                                float32 newZY~%                                                                    float32 newZZ~%                                                                        float32 distance~%                                                                            float32 finalVectorX1~%                                                                                float32 finalVectorX2~%                                                                                    float32 finalVectorX3~%                                                                                        float32 finalVectorY1~%                                                                                            float32 finalVectorY2~%                                                                                                float32 finalVectorY3~%                                                                                                    float32 finalVectorZ1~%                                                                                                        float32 finalVectorZ2~%                                                                                                            float32 finalVectorZ3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NameDetail>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'firstName))
     4 (cl:length (cl:slot-value msg 'lastName))
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NameDetail>))
  "Converts a ROS message object to a list"
  (cl:list 'NameDetail
    (cl:cons ':firstName (firstName msg))
    (cl:cons ':lastName (lastName msg))
    (cl:cons ':count (count msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':alpha (alpha msg))
    (cl:cons ':beta (beta msg))
    (cl:cons ':gamma (gamma msg))
    (cl:cons ':newXX (newXX msg))
    (cl:cons ':newXY (newXY msg))
    (cl:cons ':newXZ (newXZ msg))
    (cl:cons ':newYX (newYX msg))
    (cl:cons ':newYY (newYY msg))
    (cl:cons ':newYZ (newYZ msg))
    (cl:cons ':newZX (newZX msg))
    (cl:cons ':newZY (newZY msg))
    (cl:cons ':newZZ (newZZ msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':finalVectorX1 (finalVectorX1 msg))
    (cl:cons ':finalVectorX2 (finalVectorX2 msg))
    (cl:cons ':finalVectorX3 (finalVectorX3 msg))
    (cl:cons ':finalVectorY1 (finalVectorY1 msg))
    (cl:cons ':finalVectorY2 (finalVectorY2 msg))
    (cl:cons ':finalVectorY3 (finalVectorY3 msg))
    (cl:cons ':finalVectorZ1 (finalVectorZ1 msg))
    (cl:cons ':finalVectorZ2 (finalVectorZ2 msg))
    (cl:cons ':finalVectorZ3 (finalVectorZ3 msg))
))
