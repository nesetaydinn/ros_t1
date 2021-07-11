
(cl:in-package :asdf)

(defsystem "ilk_paket-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "kelimeSayaci" :depends-on ("_package_kelimeSayaci"))
    (:file "_package_kelimeSayaci" :depends-on ("_package"))
    (:file "toplam" :depends-on ("_package_toplam"))
    (:file "_package_toplam" :depends-on ("_package"))
  ))