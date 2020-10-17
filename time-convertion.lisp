;;;; time-convertion.lisp

(in-package #:convertion)

(export 'seconds->hours-minutes-seconds )

(defun seconds->hours-minutes-seconds (s)
"Пример использования:
;;;; (seconds->hours-minutes-seconds 8500)
=> 2, 21, 40
"
  (multiple-value-bind (hh hh-ss) (floor s 3600)
    (multiple-value-bind (mm ss) (floor hh-ss 60)
      (values hh mm ss))))

(export 'print-seconds->hh-mm-ss )

(defun print-seconds->hh-mm-ss (sec &optional (os nil))
"Выполняет вывод времени выраженного в секундах в поток в формате hh:mm:ss.
Пример использования:
;;;; (seconds->hh-mm-ss 8052301)
=> \"2236:45:01\"
"
  (multiple-value-bind (hh mm ss) (seconds->hours-minutes-seconds sec)
    (format os  "~2,'0D:~2,'0D:~2,'0D" hh mm ss)))

(export 'hours-minutes-seconds->seconds )

(defun hours-minutes-seconds->seconds (hh mm ss)
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
  (+ (* hh 3600) (* mm 60 ) ss))

