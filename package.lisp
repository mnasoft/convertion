;;;; package.lisp

(defpackage :convertion
  (:use #:cl)
  (:export 
           
	   print-seconds->hh-mm-ss
           int-string
           )
  (:export mm->inch
           inch->mm
           )
  (:export degrees->degrees-minutes-seconds
           degrees-minutes-seconds->degrees
           )
  (:export degrees->radians
           radians->degrees
           
           degrees->degrees-minutes
           degrees-minutes-seconds->radians

           radians->degrees-minutes-seconds
           )
  (:export hours-minutes-seconds->seconds
           seconds->hours-minutes-seconds ;;;; !
           )
  )

(in-package :convertion)
