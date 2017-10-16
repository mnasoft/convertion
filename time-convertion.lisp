;;;; time-convertion.lisp

(in-package #:convertion)

(defun seconds->hours-minutes-seconds (s)
  "Пример использования:
;;;; (seconds->hours-minutes-seconds 8500)
=> 2, 21, 40
" 
  (multiple-value-bind (hh hh-ss) (floor s 3600)
    (multiple-value-bind (mm ss) (floor hh-ss 60)
      (values hh mm ss))))

(defun print-seconds->hh-mm-ss (sec &optional (os nil))
  "Выполняет вывод времени выраженного в секундах в поток в формате hh:mm:ss.
Пример использования:
;;;; (seconds->hh-mm-ss 8052301)
=> \"2236:45:01\"
"
  (multiple-value-bind (hh mm ss) (seconds->hours-minutes-seconds sec)
    (format os  "~2,'0D:~2,'0D:~2,'0D" hh mm ss)))

(defun hours-minutes-seconds->seconds (hh mm ss)
    "Пример использования"
     (+ (* hh 3600) (* mm 60 ) ss))

;;;;(hours-minutes-seconds->seconds 3 45 25.6)
