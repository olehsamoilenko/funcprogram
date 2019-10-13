;16. X=(A*CosA(1+B^3))/(C(1-D^2))

(defun power3 (var)
    (* var (* var var))
)

(defun numrator (A B)
    (* A (* (cos A) (+ 1 (power3 B))))
)

(defun dnumrator (C D)
    (* C (- 1 (* D D)))
)

(defun calculate (A B C D)
    (/ (numrator A B) (dnumrator C D))
)

(print (calculate 0 1 1 2))
(print (calculate pi 1 1 2))
