;;;; convertion.asd

(asdf:defsystem #:convertion
  :description "Describe convertion here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :serial t
  :components ((:file "package")
               (:file "convertion")
	       (:file "length-convertion")
	       (:file "angle-convertion")
	       (:file "time-convertion")
	       ))

