;; Варіант 16. Написати процедуру, що формує список із заданих користувачем значень.
;; Визначити функцію, яка обертає список і розбиває його на рівні, наприклад:
;; (a, b, c) = (((c) b) a).

(defun form-list (&rest values) ;; &rest - undefined number of args
	values
)

(defun process (items new-lst index)
	(let (( new-lst (list new-lst (nth index items)) )) ;; nth - elem via index
		(
			(lambda () (if (= index 0)
				new-lst
				(process items new-lst (- index 1))
			))
		)
	) 
)

(defun rotate-split (items)
	(if (<= (list-length items) 1) ;; get rid of crash
		items
		(process items (last items) (- (list-length items) 2))
	)
)

(print (rotate-split (form-list 1 2 3 4 5)))
(print (rotate-split (form-list 1)))
(print (rotate-split (form-list 1)))