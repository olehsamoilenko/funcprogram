(defun factor (n)
	(if (< n 2)
		'(1)
		(append (factor (- n 1)) (list '* n))	
	)
)

(print (length (factor 3)))