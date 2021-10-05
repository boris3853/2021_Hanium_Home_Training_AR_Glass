;; Auto-generated. Do not edit!


(when (boundp 'msg_creator::Keypoints)
  (if (not (find-package "MSG_CREATOR"))
    (make-package "MSG_CREATOR"))
  (shadow 'Keypoints (find-package "MSG_CREATOR")))
(unless (find-package "MSG_CREATOR::KEYPOINTS")
  (make-package "MSG_CREATOR::KEYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude Keypoints.msg.html


(defclass msg_creator::Keypoints
  :super ros::object
  :slots (_x _y _z _IsTrue ))

(defmethod msg_creator::Keypoints
  (:init
   (&key
    ((:x __x) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:IsTrue __IsTrue) (make-array 25 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _IsTrue __IsTrue)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:IsTrue
   (&optional __IsTrue)
   (if __IsTrue (setq _IsTrue __IsTrue)) _IsTrue)
  (:serialization-length
   ()
   (+
    ;; float64[25] _x
    (* 8    25)
    ;; float64[25] _y
    (* 8    25)
    ;; float64[25] _z
    (* 8    25)
    ;; float64[25] _IsTrue
    (* 8    25)
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
     ;; float64[25] _z
     (dotimes (i 25)
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[25] _IsTrue
     (dotimes (i 25)
       (sys::poke (elt _IsTrue i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
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
   ;; float64[25] _z
   (dotimes (i (length _z))
     (setf (elt _z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[25] _IsTrue
   (dotimes (i (length _IsTrue))
     (setf (elt _IsTrue i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get msg_creator::Keypoints :md5sum-) "ca61976b7747333c168cedac9b79b953")
(setf (get msg_creator::Keypoints :datatype-) "msg_creator/Keypoints")
(setf (get msg_creator::Keypoints :definition-)
      "float64[25] x
float64[25] y
float64[25] z
float64[25] IsTrue

")



(provide :msg_creator/Keypoints "ca61976b7747333c168cedac9b79b953")


