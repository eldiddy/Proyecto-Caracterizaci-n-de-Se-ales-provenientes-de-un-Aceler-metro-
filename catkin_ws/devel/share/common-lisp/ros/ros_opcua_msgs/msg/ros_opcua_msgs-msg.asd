
(cl:in-package :asdf)

(defsystem "ros_opcua_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Address" :depends-on ("_package_Address"))
    (:file "_package_Address" :depends-on ("_package"))
    (:file "TypeValue" :depends-on ("_package_TypeValue"))
    (:file "_package_TypeValue" :depends-on ("_package"))
  ))