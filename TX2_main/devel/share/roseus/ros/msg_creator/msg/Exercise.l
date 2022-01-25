;; Auto-generated. Do not edit!


(when (boundp 'msg_creator::Exercise)
  (if (not (find-package "MSG_CREATOR"))
    (make-package "MSG_CREATOR"))
  (shadow 'Exercise (find-package "MSG_CREATOR")))
(unless (find-package "MSG_CREATOR::EXERCISE")
  (make-package "MSG_CREATOR::EXERCISE"))

(in-package "ROS")
;;//! \htmlinclude Exercise.msg.html


(defclass msg_creator::Exercise
  :super ros::object
  :slots (_type_ex ))

(defmethod msg_creator::Exercise
  (:init
   (&key
    ((:type_ex __type_ex) 0)
    )
   (send-super :init)
   (setq _type_ex (round __type_ex))
   self)
  (:type_ex
   (&optional __type_ex)
   (if __type_ex (setq _type_ex __type_ex)) _type_ex)
  (:serialization-length
   ()
   (+
    ;; uint8 _type_ex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type_ex
       (write-byte _type_ex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type_ex
     (setq _type_ex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msg_creator::Exercise :md5sum-) "6ca487a1ddc49ed0ec158a356e02a3ff")
(setf (get msg_creator::Exercise :datatype-) "msg_creator/Exercise")
(setf (get msg_creator::Exercise :definition-)
      "uint8 type_ex

")



(provide :msg_creator/Exercise "6ca487a1ddc49ed0ec158a356e02a3ff")


