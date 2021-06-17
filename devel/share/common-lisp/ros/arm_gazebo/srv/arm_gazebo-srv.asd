
(cl:in-package :asdf)

(defsystem "arm_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fk" :depends-on ("_package_fk"))
    (:file "_package_fk" :depends-on ("_package"))
    (:file "ik" :depends-on ("_package_ik"))
    (:file "_package_ik" :depends-on ("_package"))
  ))