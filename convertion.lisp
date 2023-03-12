;;;; convertion.lisp

(in-package :convertion)

(defun int-string (int)
  "@b(Описание:) int-string проеобразует целое число в строку.
@b(Переменые:)
@begin(list)
 @item(int - целое число для преобразования.)
@end(list)
"
  (format nil "~A" int))
