
(cl:in-package :asdf)

(defsystem "msg_creator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Exercise" :depends-on ("_package_Exercise"))
    (:file "_package_Exercise" :depends-on ("_package"))
    (:file "Keypoints" :depends-on ("_package_Keypoints"))
    (:file "_package_Keypoints" :depends-on ("_package"))
  ))