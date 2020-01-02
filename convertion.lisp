;;;; convertion.lisp

(in-package #:convertion)

(annot:enable-annot-syntax)

@export
@annot.doc:doc
"@b(Описание:) int-string проеобразует целое число в строку.
@b(Переменые:)
@begin(list)
 @item(int - целое число для преобразования.)
@end(list)
"
(defun int-string (int) (format nil "~A" int))


 
