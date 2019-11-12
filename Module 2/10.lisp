(defun f (x s)
	(if (= x (car s))
		1
		(+ 1 (f x (cdr s)))
	)
)

(print (f 2 '(1 3 2)))