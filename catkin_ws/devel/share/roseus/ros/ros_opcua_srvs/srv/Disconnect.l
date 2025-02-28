;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Disconnect)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Disconnect (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::DISCONNECT")
  (make-package "ROS_OPCUA_SRVS::DISCONNECT"))
(unless (find-package "ROS_OPCUA_SRVS::DISCONNECTREQUEST")
  (make-package "ROS_OPCUA_SRVS::DISCONNECTREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::DISCONNECTRESPONSE")
  (make-package "ROS_OPCUA_SRVS::DISCONNECTRESPONSE"))

(in-package "ROS")





(defclass ros_opcua_srvs::DisconnectRequest
  :super ros::object
  :slots ())

(defmethod ros_opcua_srvs::DisconnectRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_opcua_srvs::DisconnectResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod ros_opcua_srvs::DisconnectResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_opcua_srvs::Disconnect
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Disconnect :md5sum-) "6fe914479ce03184a758c3f6990c928f")
(setf (get ros_opcua_srvs::Disconnect :datatype-) "ros_opcua_srvs/Disconnect")
(setf (get ros_opcua_srvs::Disconnect :request) ros_opcua_srvs::DisconnectRequest)
(setf (get ros_opcua_srvs::Disconnect :response) ros_opcua_srvs::DisconnectResponse)

(defmethod ros_opcua_srvs::DisconnectRequest
  (:response () (instance ros_opcua_srvs::DisconnectResponse :init)))

(setf (get ros_opcua_srvs::DisconnectRequest :md5sum-) "6fe914479ce03184a758c3f6990c928f")
(setf (get ros_opcua_srvs::DisconnectRequest :datatype-) "ros_opcua_srvs/DisconnectRequest")
(setf (get ros_opcua_srvs::DisconnectRequest :definition-)
      "---
bool success
string error_message
")

(setf (get ros_opcua_srvs::DisconnectResponse :md5sum-) "6fe914479ce03184a758c3f6990c928f")
(setf (get ros_opcua_srvs::DisconnectResponse :datatype-) "ros_opcua_srvs/DisconnectResponse")
(setf (get ros_opcua_srvs::DisconnectResponse :definition-)
      "---
bool success
string error_message
")



(provide :ros_opcua_srvs/Disconnect "6fe914479ce03184a758c3f6990c928f")


