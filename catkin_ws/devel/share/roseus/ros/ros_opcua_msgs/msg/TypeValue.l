;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_msgs::TypeValue)
  (if (not (find-package "ROS_OPCUA_MSGS"))
    (make-package "ROS_OPCUA_MSGS"))
  (shadow 'TypeValue (find-package "ROS_OPCUA_MSGS")))
(unless (find-package "ROS_OPCUA_MSGS::TYPEVALUE")
  (make-package "ROS_OPCUA_MSGS::TYPEVALUE"))

(in-package "ROS")
;;//! \htmlinclude TypeValue.msg.html


(defclass ros_opcua_msgs::TypeValue
  :super ros::object
  :slots (_type _bool_d _int8_d _uint8_d _int16_d _uint16_d _int32_d _uint32_d _int64_d _uint64_d _float_d _double_d _string_d ))

(defmethod ros_opcua_msgs::TypeValue
  (:init
   (&key
    ((:type __type) "")
    ((:bool_d __bool_d) nil)
    ((:int8_d __int8_d) 0)
    ((:uint8_d __uint8_d) 0)
    ((:int16_d __int16_d) 0)
    ((:uint16_d __uint16_d) 0)
    ((:int32_d __int32_d) 0)
    ((:uint32_d __uint32_d) 0)
    ((:int64_d __int64_d) 0)
    ((:uint64_d __uint64_d) 0)
    ((:float_d __float_d) 0.0)
    ((:double_d __double_d) 0.0)
    ((:string_d __string_d) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _bool_d __bool_d)
   (setq _int8_d (round __int8_d))
   (setq _uint8_d (round __uint8_d))
   (setq _int16_d (round __int16_d))
   (setq _uint16_d (round __uint16_d))
   (setq _int32_d (round __int32_d))
   (setq _uint32_d (round __uint32_d))
   (setq _int64_d (round __int64_d))
   (setq _uint64_d (round __uint64_d))
   (setq _float_d (float __float_d))
   (setq _double_d (float __double_d))
   (setq _string_d (string __string_d))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:bool_d
   (&optional (__bool_d :null))
   (if (not (eq __bool_d :null)) (setq _bool_d __bool_d)) _bool_d)
  (:int8_d
   (&optional __int8_d)
   (if __int8_d (setq _int8_d __int8_d)) _int8_d)
  (:uint8_d
   (&optional __uint8_d)
   (if __uint8_d (setq _uint8_d __uint8_d)) _uint8_d)
  (:int16_d
   (&optional __int16_d)
   (if __int16_d (setq _int16_d __int16_d)) _int16_d)
  (:uint16_d
   (&optional __uint16_d)
   (if __uint16_d (setq _uint16_d __uint16_d)) _uint16_d)
  (:int32_d
   (&optional __int32_d)
   (if __int32_d (setq _int32_d __int32_d)) _int32_d)
  (:uint32_d
   (&optional __uint32_d)
   (if __uint32_d (setq _uint32_d __uint32_d)) _uint32_d)
  (:int64_d
   (&optional __int64_d)
   (if __int64_d (setq _int64_d __int64_d)) _int64_d)
  (:uint64_d
   (&optional __uint64_d)
   (if __uint64_d (setq _uint64_d __uint64_d)) _uint64_d)
  (:float_d
   (&optional __float_d)
   (if __float_d (setq _float_d __float_d)) _float_d)
  (:double_d
   (&optional __double_d)
   (if __double_d (setq _double_d __double_d)) _double_d)
  (:string_d
   (&optional __string_d)
   (if __string_d (setq _string_d __string_d)) _string_d)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; bool _bool_d
    1
    ;; int8 _int8_d
    1
    ;; uint8 _uint8_d
    1
    ;; int16 _int16_d
    2
    ;; uint16 _uint16_d
    2
    ;; int32 _int32_d
    4
    ;; uint32 _uint32_d
    4
    ;; int64 _int64_d
    8
    ;; uint64 _uint64_d
    8
    ;; float32 _float_d
    4
    ;; float64 _double_d
    8
    ;; string _string_d
    4 (length _string_d)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bool _bool_d
       (if _bool_d (write-byte -1 s) (write-byte 0 s))
     ;; int8 _int8_d
       (write-byte _int8_d s)
     ;; uint8 _uint8_d
       (write-byte _uint8_d s)
     ;; int16 _int16_d
       (write-word _int16_d s)
     ;; uint16 _uint16_d
       (write-word _uint16_d s)
     ;; int32 _int32_d
       (write-long _int32_d s)
     ;; uint32 _uint32_d
       (write-long _uint32_d s)
     ;; int64 _int64_d
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _int64_d (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _int64_d) (= (length (_int64_d . bv)) 2)) ;; bignum
              (write-long (ash (elt (_int64_d . bv) 0) 0) s)
              (write-long (ash (elt (_int64_d . bv) 1) -1) s))
             ((and (class _int64_d) (= (length (_int64_d . bv)) 1)) ;; big1
              (write-long (elt (_int64_d . bv) 0) s)
              (write-long (if (>= _int64_d 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _int64_d s)(write-long (if (>= _int64_d 0) 0 #xffffffff) s)))
     ;; uint64 _uint64_d
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uint64_d (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uint64_d) (= (length (_uint64_d . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uint64_d . bv) 0) 0) s)
              (write-long (ash (elt (_uint64_d . bv) 1) -1) s))
             ((and (class _uint64_d) (= (length (_uint64_d . bv)) 1)) ;; big1
              (write-long (elt (_uint64_d . bv) 0) s)
              (write-long (if (>= _uint64_d 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uint64_d s)(write-long (if (>= _uint64_d 0) 0 #xffffffff) s)))
     ;; float32 _float_d
       (sys::poke _float_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _double_d
       (sys::poke _double_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _string_d
       (write-long (length _string_d) s) (princ _string_d s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _bool_d
     (setq _bool_d (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _int8_d
     (setq _int8_d (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _int8_d 127) (setq _int8_d (- _int8_d 256)))
   ;; uint8 _uint8_d
     (setq _uint8_d (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _int16_d
     (setq _int16_d (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _uint16_d
     (setq _uint16_d (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _int32_d
     (setq _int32_d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _uint32_d
     (setq _uint32_d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _int64_d
#+(or :alpha :irix6 :x86_64)
      (setf _int64_d (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _int64_d (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _uint64_d
     
#+(or :alpha :irix6 :x86_64)
      (setf _uint64_d (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uint64_d (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _float_d
     (setq _float_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _double_d
     (setq _double_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _string_d
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string_d (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_opcua_msgs::TypeValue :md5sum-) "af7ad16307b5795f5d52adc813870ca9")
(setf (get ros_opcua_msgs::TypeValue :datatype-) "ros_opcua_msgs/TypeValue")
(setf (get ros_opcua_msgs::TypeValue :definition-)
      "# This represents OPC-UA type-value pair
string type
bool bool_d
int8 int8_d
uint8 uint8_d
int16 int16_d
uint16 uint16_d
int32 int32_d
uint32 uint32_d
int64 int64_d
uint64 uint64_d
float32 float_d
float64 double_d
string string_d

")



(provide :ros_opcua_msgs/TypeValue "af7ad16307b5795f5d52adc813870ca9")


