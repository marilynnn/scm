(define Pi 3.1415)

(define (torad x)
  (* x (/ Pi 180))) 

(define ( trig )
  (let count ((i 0))
    (if (<= i 180)
	    (begin
	      (format #t "angle = ~a:  " i) 
	      ;(format #t "degree = ~a rad = ~a~%" i (torad i))
	      (if (= i 90)
		  (format #t "sin = 1  cos = 0  tan = nonex~%")
	          (format #t "sin = ~,2f  cos = ~,2f tan = ~,2f~%" (sin (torad i)) (cos (torad i)) (tan (torad i)))
		)
	      (count (+ i 5))
	      ))))

(trig)

