(defun test-add ()
	(setq terms1 (the-empty-termlist))
	(setq term1 (make-term 1 2))
	(setq term2 (make-term 1 0)) ;; ignore
	(setq term3 (make-term 3 1))
	(setq terms1 (adjoin-term term1 terms1))
	(setq terms1 (adjoin-term term2 terms1))
	(setq terms1 (adjoin-term term3 terms1))
	(setq poly1 (make-poly 'x terms1))
	(setq poly2 (make-poly 'x terms1))
	(setq sum (add-poly poly1 poly2))
	(print poly1)
	(print poly2)
	(print sum)

	(print "")
	(setq terms2 (the-empty-termlist))
	(setq term4 (make-term 2 2))
	(setq term5 (make-term 4 4))
	(setq terms2 (adjoin-term term4 terms2))
	(setq terms2 (adjoin-term term5 terms2))
	(setq poly3 (make-poly 'x terms2))
	(setq sum (add-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)

	(print "")
	(setq term6 (make-term 5 1))
	(setq terms2 (adjoin-term term6 terms2))
	(setq poly3 (make-poly 'x terms2))
	(setq sum (add-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)
	(setq sum (add-poly poly3 poly1))
	(print sum)

	(print "")
	(setq term7 (make-term 2 -5))
	(setq terms1 (adjoin-term term7 terms1))
	(setq poly1 (make-poly 'x terms1))
	(setq sum (add-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)
	(setq sum (add-poly poly3 poly1))
	(print sum)
)

(defun test-sub ()
	(setq terms1 (the-empty-termlist))
	(setq term1 (make-term 1 2))
	(setq term2 (make-term 1 0)) ;; ignore
	(setq term3 (make-term 3 1))
	(setq terms1 (adjoin-term term1 terms1))
	(setq terms1 (adjoin-term term2 terms1))
	(setq terms1 (adjoin-term term3 terms1))
	(setq poly1 (make-poly 'x terms1))
	(setq poly2 (make-poly 'x terms1))
	(setq sum (sub-poly poly1 poly2))
	(print poly1)
	(print poly2)
	(print sum)

	(print "")
	(setq terms2 (the-empty-termlist))
	(setq term4 (make-term 2 2))
	(setq term5 (make-term 4 4))
	(setq terms2 (adjoin-term term4 terms2))
	(setq terms2 (adjoin-term term5 terms2))
	(setq poly3 (make-poly 'x terms2))
	(setq sum (sub-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)

	(print "")
	(setq term6 (make-term 5 1))
	(setq terms2 (adjoin-term term6 terms2))
	(setq poly3 (make-poly 'x terms2))
	(setq sum (sub-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)
	(setq sum (sub-poly poly3 poly1))
	(print sum)

	(print "")
	(setq term7 (make-term 2 -5))
	(setq terms1 (adjoin-term term7 terms1))
	(setq poly1 (make-poly 'x terms1))
	(setq sum (sub-poly poly1 poly3))
	(print poly1)
	(print poly3)
	(print sum)
	(setq sum (sub-poly poly3 poly1))
	(print sum)
)
