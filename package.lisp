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

;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
