;;;; length-convertion.lisp

(in-package #:convertion)

(defun inch->mm (l-inch) (* 254/10 l-inch))

(defun mm->inch (l-mm) (/ l-mm 254/10))
