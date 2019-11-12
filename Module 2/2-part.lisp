;; common lisp, 6 variant

(defun words-count (n k)
	(setq res 1)
  	(dotimes (i k)
		(setq res (* res n))
		(setq n (- n 1))
	)
	res
)

(print (words-count 4 2))
