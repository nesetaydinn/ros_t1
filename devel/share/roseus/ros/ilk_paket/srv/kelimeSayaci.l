;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::kelimeSayaci)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'kelimeSayaci (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::KELIMESAYACI")
  (make-package "ILK_PAKET::KELIMESAYACI"))
(unless (find-package "ILK_PAKET::KELIMESAYACIREQUEST")
  (make-package "ILK_PAKET::KELIMESAYACIREQUEST"))
(unless (find-package "ILK_PAKET::KELIMESAYACIRESPONSE")
  (make-package "ILK_PAKET::KELIMESAYACIRESPONSE"))

(in-package "ROS")





(defclass ilk_paket::kelimeSayaciRequest
  :super ros::object
  :slots (_kelimeler ))

(defmethod ilk_paket::kelimeSayaciRequest
  (:init
   (&key
    ((:kelimeler __kelimeler) "")
    )
   (send-super :init)
   (setq _kelimeler (string __kelimeler))
   self)
  (:kelimeler
   (&optional __kelimeler)
   (if __kelimeler (setq _kelimeler __kelimeler)) _kelimeler)
  (:serialization-length
   ()
   (+
    ;; string _kelimeler
    4 (length _kelimeler)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _kelimeler
       (write-long (length _kelimeler) s) (princ _kelimeler s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _kelimeler
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kelimeler (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ilk_paket::kelimeSayaciResponse
  :super ros::object
  :slots (_sayac ))

(defmethod ilk_paket::kelimeSayaciResponse
  (:init
   (&key
    ((:sayac __sayac) 0)
    )
   (send-super :init)
   (setq _sayac (round __sayac))
   self)
  (:sayac
   (&optional __sayac)
   (if __sayac (setq _sayac __sayac)) _sayac)
  (:serialization-length
   ()
   (+
    ;; uint32 _sayac
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sayac
       (write-long _sayac s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sayac
     (setq _sayac (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ilk_paket::kelimeSayaci
  :super ros::object
  :slots ())

(setf (get ilk_paket::kelimeSayaci :md5sum-) "65c69d5d821fe1758c24c7c87273f551")
(setf (get ilk_paket::kelimeSayaci :datatype-) "ilk_paket/kelimeSayaci")
(setf (get ilk_paket::kelimeSayaci :request) ilk_paket::kelimeSayaciRequest)
(setf (get ilk_paket::kelimeSayaci :response) ilk_paket::kelimeSayaciResponse)

(defmethod ilk_paket::kelimeSayaciRequest
  (:response () (instance ilk_paket::kelimeSayaciResponse :init)))

(setf (get ilk_paket::kelimeSayaciRequest :md5sum-) "65c69d5d821fe1758c24c7c87273f551")
(setf (get ilk_paket::kelimeSayaciRequest :datatype-) "ilk_paket/kelimeSayaciRequest")
(setf (get ilk_paket::kelimeSayaciRequest :definition-)
      "string kelimeler
---
uint32 sayac
")

(setf (get ilk_paket::kelimeSayaciResponse :md5sum-) "65c69d5d821fe1758c24c7c87273f551")
(setf (get ilk_paket::kelimeSayaciResponse :datatype-) "ilk_paket/kelimeSayaciResponse")
(setf (get ilk_paket::kelimeSayaciResponse :definition-)
      "string kelimeler
---
uint32 sayac
")



(provide :ilk_paket/kelimeSayaci "65c69d5d821fe1758c24c7c87273f551")


