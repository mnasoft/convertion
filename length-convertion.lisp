;;;; length-convertion.lisp

(in-package :convertion)

(defun inch->mm (l-inch)
  "@b(Описание:) inch->mm переводит дюймы в милиметры.
@b(Переменые:)
@begin(list)
 @item(l-inch - количество дюймов.)
@end(list)
"
  (* 254/10 l-inch))

(defun mm->inch (l-mm)
  "@b(Описание:) inch->mm переводит милиметры в дюймы.
@b(Переменые:)
@begin(list)
 @item(l-inch - количество милиметров.)
@end(list)
"
  (/ l-mm 254/10))
