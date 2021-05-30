;;;; angle-convertion.lisp

(in-package #:convertion)

(defun degrees->radians (degrees)
  "Преобразование угловой меры, выраженной в градусах, в радианы;
Пример использования:
(degrees->radians 45)
=>0.7853981633974483D0"
  (/ degrees (/ 180 pi)))

(defun radians->degrees (radians)
  "Преобразование угловой меры, выраженной в радианах, в градусы;
Пример использования:
(radians->degrees 0.7853981633974483D0)
=> 45.0d0
"
  (/ radians (/ pi 180)))

(defun degrees-minutes-seconds->degrees (degrees &optional (minutes 0) (seconds 0))
"Преобразование  угловой меры, выраженной в градусах минутах и секундах, в градусы;
Пример использования:
(degrees-minutes-seconds->degrees 25 25 25.25d0)
=> 25.423680555555556d0
"
  (+ degrees (/ minutes 60) (/ seconds 60 60)))

(defun degrees-minutes-seconds->radians (degrees &optional (minutes 0) (seconds 0))
"Преобразование  угловой меры, выраженной в градусах минутах и секундах, в радианы;
Пример использования:
(degrees-minutes-seconds->radians 25 25 25.25d0)
=> 0.4437269336697056d0
"
  (degrees->radians
   (degrees-minutes-seconds->degrees degrees minutes seconds)))

(defun degrees->degrees-minutes(degrees)
"Преобразование  угловой меры, выраженной в градусах, в градусы и минуты;
Пример использования:
(degrees->degrees-minutes 20.3524110647985217d0)
=> 20, 21.14466388791122d0
"
  (multiple-value-bind (d m)
      (truncate degrees)
    (values  d (* m 60))))

(defun degrees->degrees-minutes-seconds(degrees)
"Преобразование угловой меры, выраженной в градусах, в градусы и  минуты и секунды;
Пример использования:
(degrees->degrees-minutes-seconds 25.423680555555556d0)
=> 25, 25, 25.250000000002615d0
"
  (multiple-value-bind (d m-s) (degrees->degrees-minutes degrees)
    (multiple-value-bind (m s) (degrees->degrees-minutes m-s)
      (values d m s))))

(export 'radians->degrees-minutes-seconds )

(defun radians->degrees-minutes-seconds (radians)
"Преобразование  радианов в градусы минуты и секунды
Пример использования:
(radians->degrees-minutes-seconds 0.4437269336697056d0)
=> 25, 25, 25.250000000002615d0
"
  (degrees->degrees-minutes-seconds (radians->degrees radians)))
