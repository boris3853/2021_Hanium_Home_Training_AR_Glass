
(cl:in-package :asdf)

(defsystem "msg_creator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Keypoints" :depends-on ("_package_Keypoints"))
    (:file "_package_Keypoints" :depends-on ("_package"))
  ))