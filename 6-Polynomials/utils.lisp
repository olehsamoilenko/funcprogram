;; construct an empty list of terms
(defun the-empty-termlist () '())

;; construct a new term with the following structure:
;; coeff * X ^ order
(defun make-term (order coeff) (list order coeff))

;; select the order from term
(defun order (term) (car term))

;; select the coeff from term
(defun coeff (term) (cadr term))

;; expand the lisp of terms with a new term
;; TODO: sort via order
(defun adjoin-term (term term-list)
	(if (zerop (coeff term))
		term-list
		;; else
		(cons term term-list)
	)
)

;; construct a new poly
(defun make-poly (variable term-list) (cons variable term-list))

;; select the first term from the list of terms
(defun first-term (term-list) (car term-list))

;; select the tail from the list of terms
(defun rest-terms (term-list) (cdr term-list))

;; predicate: is it a variable?
(defun variable? (x) (symbolp x))

;; predicate: is it the same variable?
(defun same-variable? (v1 v2) (and (variable? v1) (variable? v2) (eq v1 v2)))

;; select the variable from poly
(defun get-variable (p) (car p))

;; select the list of terms from poly
(defun get-term-list (p) (cdr p))