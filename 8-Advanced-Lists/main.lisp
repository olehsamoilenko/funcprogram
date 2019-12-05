;; Варіант 3: Побудувати два однозв’язних списків. Порівняти списки.
;; Якщо списки не однакові, виконати їх конкатенацію, інакше утворити новий список,
;; значення елементів яких є парними або непарними числами.

;; return:
;; list of elements' lengths
(defun form-list-of-lengths (numbers words)
	(if (equalp NIL (cdr words))
		(list (length (car words)))
		;; else
		(append
			(list (length (car words)))
			(form-list-of-lengths numbers (cdr words))
		)
	)
)

(defun process (lst1 lst2)
	(if (equalp lst1 lst2)
		(form-list-of-lengths '() lst1)
		;; else
		(append lst1 lst2)
	)
)

(print (process '("1" "22") '("333" "4444")))
(print (process '("hi" "i" "am" "oleh") '("hi" "i" "am" "oleh")))
