; Auto-generated. Do not edit!


(cl:in-package Exercise-msg)


;//! \htmlinclude Keypoints.msg.html

(cl:defclass <Keypoints> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 25 :element-type 'cl:float :initial-element 0.0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:float)
   :initform (cl:make-array 25 :element-type 'cl:float :initial-element 0.0))
   (prob
    :reader prob
    :initarg :prob
    :type (cl:vector cl:float)
   :initform (cl:make-array 25 :element-type 'cl:float :initial-element 0.0))
   (KeyTrue
    :reader KeyTrue
    :initarg :KeyTrue
    :type (cl:vector cl:float)
   :initform (cl:make-array 25 :element-type 'cl:float :initial-element 0.0))
   (type_ex
    :reader type_ex
    :initarg :type_ex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Keypoints (<Keypoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keypoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keypoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Exercise-msg:<Keypoints> is deprecated: use Exercise-msg:Keypoints instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Keypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Exercise-msg:x-val is deprecated.  Use Exercise-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Keypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Exercise-msg:y-val is deprecated.  Use Exercise-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <Keypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Exercise-msg:prob-val is deprecated.  Use Exercise-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'KeyTrue-val :lambda-list '(m))
(cl:defmethod KeyTrue-val ((m <Keypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Exercise-msg:KeyTrue-val is deprecated.  Use Exercise-msg:KeyTrue instead.")
  (KeyTrue m))

(cl:ensure-generic-function 'type_ex-val :lambda-list '(m))
(cl:defmethod type_ex-val ((m <Keypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Exercise-msg:type_ex-val is deprecated.  Use Exercise-msg:type_ex instead.")
  (type_ex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keypoints>) ostream)
  "Serializes a message object of type '<Keypoints>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'y))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'prob))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'KeyTrue))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_ex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keypoints>) istream)
  "Deserializes a message object of type '<Keypoints>"
  (cl:setf (cl:slot-value msg 'x) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i 25)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i 25)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'prob) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'prob)))
    (cl:dotimes (i 25)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'KeyTrue) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'KeyTrue)))
    (cl:dotimes (i 25)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_ex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keypoints>)))
  "Returns string type for a message object of type '<Keypoints>"
  "Exercise/Keypoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keypoints)))
  "Returns string type for a message object of type 'Keypoints"
  "Exercise/Keypoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keypoints>)))
  "Returns md5sum for a message object of type '<Keypoints>"
  "a2259b33e519f11f311bd1ff20ba6ac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keypoints)))
  "Returns md5sum for a message object of type 'Keypoints"
  "a2259b33e519f11f311bd1ff20ba6ac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keypoints>)))
  "Returns full string definition for message of type '<Keypoints>"
  (cl:format cl:nil "float64[25] x~%float64[25] y~%float64[25] prob~%~%float64[25] KeyTrue~%uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keypoints)))
  "Returns full string definition for message of type 'Keypoints"
  (cl:format cl:nil "float64[25] x~%float64[25] y~%float64[25] prob~%~%float64[25] KeyTrue~%uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keypoints>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'KeyTrue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keypoints>))
  "Converts a ROS message object to a list"
  (cl:list 'Keypoints
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':KeyTrue (KeyTrue msg))
    (cl:cons ':type_ex (type_ex msg))
))
