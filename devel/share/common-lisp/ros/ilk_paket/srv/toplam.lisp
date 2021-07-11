; Auto-generated. Do not edit!


(cl:in-package ilk_paket-srv)


;//! \htmlinclude toplam-request.msg.html

(cl:defclass <toplam-request> (roslisp-msg-protocol:ros-message)
  ((sayi1
    :reader sayi1
    :initarg :sayi1
    :type cl:integer
    :initform 0)
   (sayi2
    :reader sayi2
    :initarg :sayi2
    :type cl:integer
    :initform 0))
)

(cl:defclass toplam-request (<toplam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toplam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toplam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<toplam-request> is deprecated: use ilk_paket-srv:toplam-request instead.")))

(cl:ensure-generic-function 'sayi1-val :lambda-list '(m))
(cl:defmethod sayi1-val ((m <toplam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:sayi1-val is deprecated.  Use ilk_paket-srv:sayi1 instead.")
  (sayi1 m))

(cl:ensure-generic-function 'sayi2-val :lambda-list '(m))
(cl:defmethod sayi2-val ((m <toplam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:sayi2-val is deprecated.  Use ilk_paket-srv:sayi2 instead.")
  (sayi2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toplam-request>) ostream)
  "Serializes a message object of type '<toplam-request>"
  (cl:let* ((signed (cl:slot-value msg 'sayi1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sayi2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toplam-request>) istream)
  "Deserializes a message object of type '<toplam-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sayi1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sayi2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toplam-request>)))
  "Returns string type for a service object of type '<toplam-request>"
  "ilk_paket/toplamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toplam-request)))
  "Returns string type for a service object of type 'toplam-request"
  "ilk_paket/toplamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toplam-request>)))
  "Returns md5sum for a message object of type '<toplam-request>"
  "fe8aac20b87d53f504c5864a0ca7afb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toplam-request)))
  "Returns md5sum for a message object of type 'toplam-request"
  "fe8aac20b87d53f504c5864a0ca7afb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toplam-request>)))
  "Returns full string definition for message of type '<toplam-request>"
  (cl:format cl:nil "int32 sayi1~%int32 sayi2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toplam-request)))
  "Returns full string definition for message of type 'toplam-request"
  (cl:format cl:nil "int32 sayi1~%int32 sayi2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toplam-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toplam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'toplam-request
    (cl:cons ':sayi1 (sayi1 msg))
    (cl:cons ':sayi2 (sayi2 msg))
))
;//! \htmlinclude toplam-response.msg.html

(cl:defclass <toplam-response> (roslisp-msg-protocol:ros-message)
  ((sonuc
    :reader sonuc
    :initarg :sonuc
    :type cl:integer
    :initform 0))
)

(cl:defclass toplam-response (<toplam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toplam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toplam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<toplam-response> is deprecated: use ilk_paket-srv:toplam-response instead.")))

(cl:ensure-generic-function 'sonuc-val :lambda-list '(m))
(cl:defmethod sonuc-val ((m <toplam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:sonuc-val is deprecated.  Use ilk_paket-srv:sonuc instead.")
  (sonuc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toplam-response>) ostream)
  "Serializes a message object of type '<toplam-response>"
  (cl:let* ((signed (cl:slot-value msg 'sonuc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toplam-response>) istream)
  "Deserializes a message object of type '<toplam-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sonuc) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toplam-response>)))
  "Returns string type for a service object of type '<toplam-response>"
  "ilk_paket/toplamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toplam-response)))
  "Returns string type for a service object of type 'toplam-response"
  "ilk_paket/toplamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toplam-response>)))
  "Returns md5sum for a message object of type '<toplam-response>"
  "fe8aac20b87d53f504c5864a0ca7afb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toplam-response)))
  "Returns md5sum for a message object of type 'toplam-response"
  "fe8aac20b87d53f504c5864a0ca7afb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toplam-response>)))
  "Returns full string definition for message of type '<toplam-response>"
  (cl:format cl:nil "int32 sonuc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toplam-response)))
  "Returns full string definition for message of type 'toplam-response"
  (cl:format cl:nil "int32 sonuc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toplam-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toplam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'toplam-response
    (cl:cons ':sonuc (sonuc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'toplam)))
  'toplam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'toplam)))
  'toplam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toplam)))
  "Returns string type for a service object of type '<toplam>"
  "ilk_paket/toplam")