(defun create (x y)
	(eval (cons 'defun (cons x (cdr y))))
)

(create 'f'(lambda (x) (* x x)))

(print (f 2))