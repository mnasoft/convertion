;;;; package.lisp

(defpackage #:convertion
  (:use #:cl)
  (:export degrees->radians
	   radians->degrees
	   degrees-minutes-seconds->degrees
	   degrees-minutes-seconds->radians
	   degrees->degrees-minutes
	   degrees->degrees-minutes-seconds
	   radians->degrees-minutes-seconds
	   ;;
	   seconds->hours-minutes-seconds
	   hours-minutes-seconds->seconds
	   ;;
	   print-seconds->hh-mm-ss
	   ;;
	   int-string
	   ;;
	   inch->mm
	   mm->inch
	   ))





;;;; (declaim (optimize (compilation-speed 0) (debug 3) (safety 0) (space 0) (speed 0)))
