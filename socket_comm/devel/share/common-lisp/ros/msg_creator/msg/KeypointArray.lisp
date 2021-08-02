; Auto-generated. Do not edit!


(cl:in-package msg_creator-msg)


;//! \htmlinclude KeypointArray.msg.html

(cl:defclass <KeypointArray> (roslisp-msg-protocol:ros-message)
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

(cl:defclass KeypointArray (<KeypointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeypointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeypointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_creator-msg:<KeypointArray> is deprecated: use msg_creator-msg:KeypointArray instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <KeypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:x-val is deprecated.  Use msg_creator-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <KeypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:y-val is deprecated.  Use msg_creator-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <KeypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:prob-val is deprecated.  Use msg_creator-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'KeyTrue-val :lambda-list '(m))
(cl:defmethod KeyTrue-val ((m <KeypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:KeyTrue-val is deprecated.  Use msg_creator-msg:KeyTrue instead.")
  (KeyTrue m))

(cl:ensure-generic-function 'type_ex-val :lambda-list '(m))
(cl:defmethod type_ex-val ((m <KeypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:type_ex-val is deprecated.  Use msg_creator-msg:type_ex instead.")
  (type_ex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeypointArray>) ostream)
  "Serializes a message object of type '<KeypointArray>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeypointArray>) istream)
  "Deserializes a message object of type '<KeypointArray>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeypointArray>)))
  "Returns string type for a message object of type '<KeypointArray>"
  "msg_creator/KeypointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeypointArray)))
  "Returns string type for a message object of type 'KeypointArray"
  "msg_creator/KeypointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeypointArray>)))
  "Returns md5sum for a message object of type '<KeypointArray>"
  "a2259b33e519f11f311bd1ff20ba6ac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeypointArray)))
  "Returns md5sum for a message object of type 'KeypointArray"
  "a2259b33e519f11f311bd1ff20ba6ac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeypointArray>)))
  "Returns full string definition for message of type '<KeypointArray>"
  (cl:format cl:nil "float64[25] x~%float64[25] y~%float64[25] prob~%~%float64[25] KeyTrue~%uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeypointArray)))
  "Returns full string definition for message of type 'KeypointArray"
  (cl:format cl:nil "float64[25] x~%float64[25] y~%float64[25] prob~%~%float64[25] KeyTrue~%uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeypointArray>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'KeyTrue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeypointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'KeypointArray
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':KeyTrue (KeyTrue msg))
    (cl:cons ':type_ex (type_ex msg))
))
