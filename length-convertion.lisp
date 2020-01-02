;;;; length-convertion.lisp

(in-package #:convertion)

(annot:enable-annot-syntax)

@export
@annot.doc:doc
"@b(Описание:) inch->mm переводит дюймы в милиметры.
@b(Переменые:)
@begin(list)
 @item(l-inch - количество дюймов.)
@end(list)
"
(defun inch->mm (l-inch) (* 254/10 l-inch))


@export
@annot.doc:doc
"@b(Описание:) inch->mm переводит милиметры в дюймы.
@b(Переменые:)
@begin(list)
 @item(l-inch - количество милиметров.)
@end(list)
"
(defun mm->inch (l-mm) (/ l-mm 254/10))
