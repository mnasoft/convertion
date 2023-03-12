;;;; time-convertion.lisp

(in-package :convertion)

(defun seconds->hours-minutes-seconds (s)
  "@b(Описание:) функция @b(seconds->hours-minutes-seconds)
   преобразует время, заданое в секундах в часы, мминуты и секунды.
   Возвращает три значения: количество часов, минут и секунд.

 @b(Пример использования:)
@begin[lang=lisp](code)
 (seconds->hours-minutes-seconds 8500)
=> 2, 21, 40
@end(code)
"
  (multiple-value-bind (hh hh-ss) (floor s 3600)
    (multiple-value-bind (mm ss) (floor hh-ss 60)
      (values hh mm ss))))

(defun hours-minutes-seconds->seconds (hh mm ss)
  "@b(Описание:) функция @b(hours-minutes-seconds->seconds) переводит
   время, заданное в часах, минутах и секундах в секунды. 

@b(Переменые:)
@begin(list)
 @item(hh - количество часов;)
 @item(mm - количество минут;)
 @item(ss - количество секунд.)
@end(list)

@b(Пример использования:)
@begin[lang=lisp](code)
 (hours-minutes-seconds->seconds 3 45 25.6) => 13525.6
@end(code)
"
  (+ (* hh 3600) (* mm 60 ) ss))

(defun print-seconds->hh-mm-ss (sec &optional (os nil))
  "@b(Описание:) функция @b(print-seconds->hh-mm-ss) выполняет вывод
  времени выраженного в секундах в поток в формате hh:mm:ss.

 @b(Пример использования:)
@begin[lang=lisp](code)
 (seconds->hh-mm-ss 8052301) => \"2236:45:01\"
@end(code)
"
  (multiple-value-bind (hh mm ss) (seconds->hours-minutes-seconds sec)
    (format os  "~2,'0D:~2,'0D:~2,'0D" hh mm ss)))

