(load "../6-Polynomials/utils.lisp")
(load "../6-Polynomials/add.lisp")
(load "../6-Polynomials/sub.lisp")

;; construct result of 2 monomials deviding
(defun devide-monoms (m1 m2)
	(setq res (make-term (- (order m1) (order m2)) (/ (coeff m1) (coeff m2))))
	res
)

;; construct result of 2 monomials mulipying
(defun mult-monoms (m1 m2)
	(setq res (make-term (+ (order m1) (order m2)) (* (coeff m1) (coeff m2))))
	res
)

;; construct result of mulipying polynomial by monomial
(defun mult-poly-monom (p m) ;; TODO: get polies insead of terms
	(if (eq p NIL)
		NIL ;; recursion exit
		;; else
		(adjoin-term
			(mult-monoms (car p) m)
			(mult-poly-monom (cdr p) m)
		)
	)
)

(defun devide-poly (p1 p2)
	(format t "~%")
	(setq result (the-empty-termlist))
	(loop do
		(setq cur1 (first-term (get-term-list p1)))
		(setq cur2 (first-term (get-term-list p2)))
		(setq devide-res (devide-monoms cur1 cur2))
		;; (format t "Devide monoms: ~D / ~D = ~D~%" cur1 cur2 devide-res)
		(setq result (adjoin-term devide-res result))
		;; (format t "Current result: ~D~%" result)
		(setq mult-res (mult-poly-monom (get-term-list p2) devide-res))
		;; (format t "Multiply: ~D * ~D = ~D~%" (get-term-list p2) devide-res mult-res)
		(setq remainder (sub-poly p1 (make-poly 'x mult-res)))
		;; (format t "Remainder: ~D - ~D = ~D~%" p1 (make-poly 'x mult-res) remainder)
		(setq p1 remainder)

	while (and
			(not (eq (get-term-list remainder) NIL)) ;; remainder is not empty
			(<= (order (first-term (get-term-list p2))) (order (first-term (get-term-list remainder))))
			;; order of remainder is greater than polynom's order
		  )
	)

    (cons (make-poly 'x result) remainder)
)

(defun get-remainder (p)
    (cdr p)
)

(defun get-result (p)
    (car p)
)