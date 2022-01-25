; Auto-generated. Do not edit!


(cl:in-package msg_creator-msg)


;//! \htmlinclude Exercise.msg.html

(cl:defclass <Exercise> (roslisp-msg-protocol:ros-message)
  ((type_ex
    :reader type_ex
    :initarg :type_ex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Exercise (<Exercise>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Exercise>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Exercise)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_creator-msg:<Exercise> is deprecated: use msg_creator-msg:Exercise instead.")))

(cl:ensure-generic-function 'type_ex-val :lambda-list '(m))
(cl:defmethod type_ex-val ((m <Exercise>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_creator-msg:type_ex-val is deprecated.  Use msg_creator-msg:type_ex instead.")
  (type_ex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Exercise>) ostream)
  "Serializes a message object of type '<Exercise>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_ex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Exercise>) istream)
  "Deserializes a message object of type '<Exercise>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_ex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Exercise>)))
  "Returns string type for a message object of type '<Exercise>"
  "msg_creator/Exercise")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Exercise)))
  "Returns string type for a message object of type 'Exercise"
  "msg_creator/Exercise")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Exercise>)))
  "Returns md5sum for a message object of type '<Exercise>"
  "6ca487a1ddc49ed0ec158a356e02a3ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Exercise)))
  "Returns md5sum for a message object of type 'Exercise"
  "6ca487a1ddc49ed0ec158a356e02a3ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Exercise>)))
  "Returns full string definition for message of type '<Exercise>"
  (cl:format cl:nil "uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Exercise)))
  "Returns full string definition for message of type 'Exercise"
  (cl:format cl:nil "uint8 type_ex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Exercise>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Exercise>))
  "Converts a ROS message object to a list"
  (cl:list 'Exercise
    (cl:cons ':type_ex (type_ex msg))
))
