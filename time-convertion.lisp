;;;; time-convertion.lisp

(in-package #:convertion)

(annot:enable-annot-syntax)
 
@export
@annot.doc:doc
"Пример использования:
;;;; (seconds->hours-minutes-seconds 8500)
=> 2, 21, 40
"
(defun seconds->hours-minutes-seconds (s)
  (multiple-value-bind (hh hh-ss) (floor s 3600)
    (multiple-value-bind (mm ss) (floor hh-ss 60)
      (values hh mm ss))))

@export
@annot.doc:doc
"Выполняет вывод времени выраженного в секундах в поток в формате hh:mm:ss.
Пример использования:
;;;; (seconds->hh-mm-ss 8052301)
=> \"2236:45:01\"
"
(defun print-seconds->hh-mm-ss (sec &optional (os nil))
  (multiple-value-bind (hh mm ss) (seconds->hours-minutes-seconds sec)
    (format os  "~2,'0D:~2,'0D:~2,'0D" hh mm ss)))

@export
@annot.doc:doc
"@b(Описание:) hours-minutes-seconds->seconds переводит время,
заданное в часах, минутах и секундах в секунды.

@b(Переменые:)
@begin(list)
 @item(hh - количество часов;)
 @item(mm - количество минут;)
 @item(ss - количество секунд.)
@end(list)

@b(Пример использования:)
@begin[lang=lisp](code)
 (hours-minutes-seconds->seconds 3 45 25.6)
@end(code)
"
(defun hours-minutes-seconds->seconds (hh mm ss)
     (+ (* hh 3600) (* mm 60 ) ss))


