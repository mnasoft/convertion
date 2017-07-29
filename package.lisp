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
	   int-string))



