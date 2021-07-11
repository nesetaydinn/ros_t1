;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::toplam)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'toplam (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::TOPLAM")
  (make-package "ILK_PAKET::TOPLAM"))
(unless (find-package "ILK_PAKET::TOPLAMREQUEST")
  (make-package "ILK_PAKET::TOPLAMREQUEST"))
(unless (find-package "ILK_PAKET::TOPLAMRESPONSE")
  (make-package "ILK_PAKET::TOPLAMRESPONSE"))

(in-package "ROS")





(defclass ilk_paket::toplamRequest
  :super ros::object
  :slots (_sayi1 _sayi2 ))

(defmethod ilk_paket::toplamRequest
  (:init
   (&key
    ((:sayi1 __sayi1) 0)
    ((:sayi2 __sayi2) 0)
    )
   (send-super :init)
   (setq _sayi1 (round __sayi1))
   (setq _sayi2 (round __sayi2))
   self)
  (:sayi1
   (&optional __sayi1)
   (if __sayi1 (setq _sayi1 __sayi1)) _sayi1)
  (:sayi2
   (&optional __sayi2)
   (if __sayi2 (setq _sayi2 __sayi2)) _sayi2)
  (:serialization-length
   ()
   (+
    ;; int32 _sayi1
    4
    ;; int32 _sayi2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sayi1
       (write-long _sayi1 s)
     ;; int32 _sayi2
       (write-long _sayi2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sayi1
     (setq _sayi1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sayi2
     (setq _sayi2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ilk_paket::toplamResponse
  :super ros::object
  :slots (_sonuc ))

(defmethod ilk_paket::toplamResponse
  (:init
   (&key
    ((:sonuc __sonuc) 0)
    )
   (send-super :init)
   (setq _sonuc (round __sonuc))
   self)
  (:sonuc
   (&optional __sonuc)
   (if __sonuc (setq _sonuc __sonuc)) _sonuc)
  (:serialization-length
   ()
   (+
    ;; int32 _sonuc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sonuc
       (write-long _sonuc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sonuc
     (setq _sonuc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ilk_paket::toplam
  :super ros::object
  :slots ())

(setf (get ilk_paket::toplam :md5sum-) "fe8aac20b87d53f504c5864a0ca7afb7")
(setf (get ilk_paket::toplam :datatype-) "ilk_paket/toplam")
(setf (get ilk_paket::toplam :request) ilk_paket::toplamRequest)
(setf (get ilk_paket::toplam :response) ilk_paket::toplamResponse)

(defmethod ilk_paket::toplamRequest
  (:response () (instance ilk_paket::toplamResponse :init)))

(setf (get ilk_paket::toplamRequest :md5sum-) "fe8aac20b87d53f504c5864a0ca7afb7")
(setf (get ilk_paket::toplamRequest :datatype-) "ilk_paket/toplamRequest")
(setf (get ilk_paket::toplamRequest :definition-)
      "int32 sayi1
int32 sayi2
---
int32 sonuc
")

(setf (get ilk_paket::toplamResponse :md5sum-) "fe8aac20b87d53f504c5864a0ca7afb7")
(setf (get ilk_paket::toplamResponse :datatype-) "ilk_paket/toplamResponse")
(setf (get ilk_paket::toplamResponse :definition-)
      "int32 sayi1
int32 sayi2
---
int32 sonuc
")



(provide :ilk_paket/toplam "fe8aac20b87d53f504c5864a0ca7afb7")


