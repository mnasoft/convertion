;;;; time-convertion.lisp

(in-package #:convertion)

(defun seconds->hours-minutes-seconds (s)
  "Пример использования
"
  
  (multiple-value-bind (hh hh-ss) (floor s 3600)
    (multiple-value-bind (mm ss) (floor hh-ss 60)
      (values hh mm ss))))


(defun hours-minutes-seconds->seconds (hh mm ss)
    "Пример использования"
     (+ (* hh 3600) (* mm 60 ) ss))

(hours-minutes-seconds->seconds 3 45 25.6)
