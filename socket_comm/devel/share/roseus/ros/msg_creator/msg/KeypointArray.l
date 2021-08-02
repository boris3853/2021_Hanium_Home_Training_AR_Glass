;; Auto-generated. Do not edit!


(when (boundp 'msg_creator::KeypointArray)
  (if (not (find-package "MSG_CREATOR"))
    (make-package "MSG_CREATOR"))
  (shadow 'KeypointArray (find-package "MSG_CREATOR")))
(unless (find-package "MSG_CREATOR::KEYPOINTARRAY")
  (make-package "MSG_CREATOR::KEYPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeypointArray.msg.html


(defclass msg_creator::KeypointArray
  :super ros::object
  :slots (_x _y _prob _KeyTrue _type_ex ))

(defmethod msg_creator::KeypointArray
  (:init
   (&key
    ((:x __x) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:prob __prob) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:KeyTrue __KeyTrue) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:type_ex __type_ex) 0)
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _prob __prob)
   (setq _KeyTrue __KeyTrue)
   (setq _type_ex (round __type_ex))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:KeyTrue
   (&optional __KeyTrue)
   (if __KeyTrue (setq _KeyTrue __KeyTrue)) _KeyTrue)
  (:type_ex
   (&optional __type_ex)
   (if __type_ex (setq _type_ex __type_ex)) _type_ex)
  (:serialization-length
   ()
   (+
    ;; float64[25] _x
    (* 8    25)
    ;; float64[25] _y
    (* 8    25)
    ;; float64[25] _prob
    (* 8    25)
    ;; float64[25] _KeyTrue
    (* 8    25)
    ;; uint8 _type_ex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[25] _x
     (dotimes (i 25)
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[25] _y
     (dotimes (i 25)
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[25] _prob
     (dotimes (i 25)
       (sys::poke (elt _prob i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[25] _KeyTrue
     (dotimes (i 25)
       (sys::poke (elt _KeyTrue i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _type_ex
       (write-byte _type_ex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[25] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[25] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[25] _prob
   (dotimes (i (length _prob))
     (setf (elt _prob i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[25] _KeyTrue
   (dotimes (i (length _KeyTrue))
     (setf (elt _KeyTrue i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _type_ex
     (setq _type_ex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msg_creator::KeypointArray :md5sum-) "a2259b33e519f11f311bd1ff20ba6ac6")
(setf (get msg_creator::KeypointArray :datatype-) "msg_creator/KeypointArray")
(setf (get msg_creator::KeypointArray :definition-)
      "float64[25] x
float64[25] y
float64[25] prob

float64[25] KeyTrue
uint8 type_ex

")



(provide :msg_creator/KeypointArray "a2259b33e519f11f311bd1ff20ba6ac6")


