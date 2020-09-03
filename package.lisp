;;;; package.lisp

(defpackage #:convertion
  (:use #:cl)
  (:export degrees->degrees-minutes-seconds
	   print-seconds->hh-mm-ss
	   degrees-minutes-seconds->degrees int-string
	   mm->inch radians->degrees-minutes-seconds
	   hours-minutes-seconds->seconds
	   seconds->hours-minutes-seconds degrees->radians
	   inch->mm radians->degrees
	   degrees-minutes-seconds->radians
	   degrees->degrees-minutes))

;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
