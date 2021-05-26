
(cl:in-package :asdf)

(defsystem "arm_lib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NameDetail" :depends-on ("_package_NameDetail"))
    (:file "_package_NameDetail" :depends-on ("_package"))
  ))