(defun negate-coefficients (lst) ;; TODO: sub = negate + add ?
	(setq new-lst (the-empty-termlist))
	(dotimes (i (length lst)) ;; TODO: recursive ?
		(setq cur (nth (- (- (length lst) i) 1) lst))
		(setq cur (make-term (order cur) (- 0 (coeff cur))))
		(setq new-lst (adjoin-term cur new-lst))
	)
	new-lst
)

(defun sub-terms (L1 L2)
	(let
		((t1 (first-term L1)) (t2 (first-term L2)))

		(if (eq t2 NIL)
			L1
			;; else (eq t2 NIL)
			(if (eq t1 NIL)
				(negate-coefficients L2)
				;; else (eq t1 NIL)
				(if (= (order t1) (order t2))
					;; sub coefficients
					(adjoin-term
						(make-term (order t1) (- (coeff t1) (coeff t2)))
						(sub-terms (rest-terms L1) (rest-terms L2))
					)
					;; else (= (order t1) (order t2))
					(if (> (order t1) (order t2))
						(adjoin-term
							t1
							(sub-terms (rest-terms L1) L2)
						)
						;; else (> (order t1) (order t2))
						(adjoin-term
							(make-term (order t2) (- 0 (coeff t2))) ;; convert to negative
							(sub-terms L1 (rest-terms L2))
						)
					)
				)
			)
		)
	)
)

;; subtract two polynomials
(defun sub-poly (p1 p2)
	(if (same-variable? (get-variable p1) (get-variable p2))
		(make-poly
			(get-variable p1)
			(sub-terms (get-term-list p1) (get-term-list p2))
		)
		;; else
		(error "Многочлени від різних змінних -- SUB-POLY")
	)
)