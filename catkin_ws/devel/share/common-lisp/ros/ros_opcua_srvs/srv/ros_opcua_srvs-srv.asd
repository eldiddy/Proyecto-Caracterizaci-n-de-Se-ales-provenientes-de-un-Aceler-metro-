
(cl:in-package :asdf)

(defsystem "ros_opcua_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_opcua_msgs-msg
)
  :components ((:file "_package")
    (:file "CallMethod" :depends-on ("_package_CallMethod"))
    (:file "_package_CallMethod" :depends-on ("_package"))
    (:file "Connect" :depends-on ("_package_Connect"))
    (:file "_package_Connect" :depends-on ("_package"))
    (:file "Disconnect" :depends-on ("_package_Disconnect"))
    (:file "_package_Disconnect" :depends-on ("_package"))
    (:file "ListNode" :depends-on ("_package_ListNode"))
    (:file "_package_ListNode" :depends-on ("_package"))
    (:file "Read" :depends-on ("_package_Read"))
    (:file "_package_Read" :depends-on ("_package"))
    (:file "Subscribe" :depends-on ("_package_Subscribe"))
    (:file "_package_Subscribe" :depends-on ("_package"))
    (:file "Unsubscribe" :depends-on ("_package_Unsubscribe"))
    (:file "_package_Unsubscribe" :depends-on ("_package"))
    (:file "Write" :depends-on ("_package_Write"))
    (:file "_package_Write" :depends-on ("_package"))
  ))