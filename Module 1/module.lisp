;; common lisp
;; Oleh Samoilenko, IPZ-41

;; a
(defun list-a (a b c d e f g)
  (list (list a b c) (list d e f g))
)

;; б
(defun list-b (a b c)
  (list a b c)
)

;; в
(defun list-c (complex-1 atom complex-2)
  (list (cons complex-1 complex-1) atom (cons complex-2 complex-2))
)

;; г
(defun list-d (a b c)
  (list (list a b c))
)

;; д
(defun list-e ()
  (list)
)

;; е
(defun list-f (a b)
  (list (list a a) (list b b))
)

;; testing
(print (list-a 1 2 3 4 5 6 7))
(print (list-b 1 2 3))
(print (list-c 1 2 3))
(print (list-d 1 2 3))
(print (list-e))
(print (list-f 1 2))
