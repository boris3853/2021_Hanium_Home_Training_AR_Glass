
(cl:in-package :asdf)

(defsystem "msg_creator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KeypointArray" :depends-on ("_package_KeypointArray"))
    (:file "_package_KeypointArray" :depends-on ("_package"))
  ))