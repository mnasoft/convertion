;;;; convertion.asd

(defsystem #:convertion
  :description "Describe convertion here"
  :author "Nick Matvyeyev <mnasoft@gmail.com>"
  :license "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 or later"  
  :serial t
;;;;  :depends-on (#:cl-annot)
  :components ((:file "package")
               (:file "convertion")
	       (:file "length-convertion")
	       (:file "angle-convertion")
	       (:file "time-convertion")
	       ))

