;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Connect)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Connect (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::CONNECT")
  (make-package "ROS_OPCUA_SRVS::CONNECT"))
(unless (find-package "ROS_OPCUA_SRVS::CONNECTREQUEST")
  (make-package "ROS_OPCUA_SRVS::CONNECTREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::CONNECTRESPONSE")
  (make-package "ROS_OPCUA_SRVS::CONNECTRESPONSE"))

(in-package "ROS")





(defclass ros_opcua_srvs::ConnectRequest
  :super ros::object
  :slots (_endpoint ))

(defmethod ros_opcua_srvs::ConnectRequest
  (:init
   (&key
    ((:endpoint __endpoint) "")
    )
   (send-super :init)
   (setq _endpoint (string __endpoint))
   self)
  (:endpoint
   (&optional __endpoint)
   (if __endpoint (setq _endpoint __endpoint)) _endpoint)
  (:serialization-length
   ()
   (+
    ;; string _endpoint
    4 (length _endpoint)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _endpoint
       (write-long (length _endpoint) s) (princ _endpoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _endpoint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endpoint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_opcua_srvs::ConnectResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod ros_opcua_srvs::ConnectResponse
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

(defclass ros_opcua_srvs::Connect
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Connect :md5sum-) "7339b9b9dcb669a384869db171c460ad")
(setf (get ros_opcua_srvs::Connect :datatype-) "ros_opcua_srvs/Connect")
(setf (get ros_opcua_srvs::Connect :request) ros_opcua_srvs::ConnectRequest)
(setf (get ros_opcua_srvs::Connect :response) ros_opcua_srvs::ConnectResponse)

(defmethod ros_opcua_srvs::ConnectRequest
  (:response () (instance ros_opcua_srvs::ConnectResponse :init)))

(setf (get ros_opcua_srvs::ConnectRequest :md5sum-) "7339b9b9dcb669a384869db171c460ad")
(setf (get ros_opcua_srvs::ConnectRequest :datatype-) "ros_opcua_srvs/ConnectRequest")
(setf (get ros_opcua_srvs::ConnectRequest :definition-)
      "string endpoint
---
bool success
string error_message
")

(setf (get ros_opcua_srvs::ConnectResponse :md5sum-) "7339b9b9dcb669a384869db171c460ad")
(setf (get ros_opcua_srvs::ConnectResponse :datatype-) "ros_opcua_srvs/ConnectResponse")
(setf (get ros_opcua_srvs::ConnectResponse :definition-)
      "string endpoint
---
bool success
string error_message
")



(provide :ros_opcua_srvs/Connect "7339b9b9dcb669a384869db171c460ad")


