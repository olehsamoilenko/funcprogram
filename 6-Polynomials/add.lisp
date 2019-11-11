(defun add-terms (L1 L2)
	(let
		((t1 (first-term L1)) (t2 (first-term L2)))

		(if (eq t2 NIL)
			L1
			;; else (eq t2 NIL)
			(if (eq t1 NIL)
				L2
				;; else (eq t1 NIL)
				(if (= (order t1) (order t2))
					;; sum coefficients
					(adjoin-term
						(make-term (order t1) (+ (coeff t1) (coeff t2)))
						(add-terms (rest-terms L1) (rest-terms L2))
					)
					;; else (= (order t1) (order t2))
					(if (> (order t1) (order t2))
						(adjoin-term
							t1
							(add-terms (rest-terms L1) L2)
						)
						;; else (> (order t1) (order t2))
						(adjoin-term
							t2
							(add-terms L1 (rest-terms L2))
						)
					)
				)
			)
		)
	)
)

;; sum two polynomials
(defun add-poly (p1 p2)
	(if (same-variable? (get-variable p1) (get-variable p2))
		(make-poly
			(get-variable p1)
			(add-terms (get-term-list p1) (get-term-list p2))
		)
		;; else
		(error "Многочлени від різних змінних -- ADD-POLY")
	)
)