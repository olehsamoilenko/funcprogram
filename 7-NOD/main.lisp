;; Варіант 16. Многочлени з однією змінною можна ділити один на одного, отримуючи частку 
;; і залишок. Для ділення  розділимо старший член діленого на старший член дільника. В результаті 
;; вийде перший терм частки. Потім помножимо результат на дільник, віднімемо многочлен, що 
;; вийшов з діленого і, рекурсивно ділячи різницю на дільник, отримаємо решту частки. Зупиняємося, 
;; коли порядок дільника перевищить порядок ділимо, і оголошуємо залишком те, що тоді буде 
;; називатися діленим. Крім того, якщо коли-небудь ділене виявиться нулем, повертаємо нуль як і 
;; частку, і залишок. Розробити процедуру ділення многочленів


(load "devide.lisp")

;; mandatory: poly1 is bigger than poly2
(defun nod (poly1 poly2)

    (loop do

        (format t "DEVIDE ~D BY ~D" poly1 poly2)

        (setq res (devide-poly poly1 poly2))
        (setq poly1 poly2)
        (setq result poly2)
        (setq poly2 (get-remainder res))

        (format t "RESULT: ~D~%" poly2)
    
    while (not (equalp NIL (get-remainder poly2))))

    (format t "NOD: ~D~%~%" result)
)

(defun test-1 ()
	(print "Test 1")

	(setq terms (the-empty-termlist))
    (setq terms (adjoin-term (make-term 1 5) terms))	;; 5*x
	(setq terms (adjoin-term (make-term 3 4) terms))	;; -4*x^3
	(setq terms (adjoin-term (make-term 4 1) terms))	;; x^4
	(setq terms (adjoin-term (make-term 5 1) terms))	;; x^5
	(setq poly1 (make-poly 'x terms))

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 2) terms))	;; 2
	(setq terms (adjoin-term (make-term 1 -2) terms))	;; -2*x
    (setq terms (adjoin-term (make-term 2 -1) terms))	;; -x^2
	(setq terms (adjoin-term (make-term 3 2) terms))	;; 2*x^3
	(setq poly2 (make-poly 'x terms))

    (nod poly1 poly2)
)

(defun test-2 ()
	(print "Test 2")

	(setq terms (the-empty-termlist))
    (setq terms (adjoin-term (make-term 0 1) terms))	;; 1
	(setq terms (adjoin-term (make-term 1 -2) terms))	;; -2*x
	(setq terms (adjoin-term (make-term 2 1) terms))	;; x^2
	(setq poly1 (make-poly 'x terms))

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 1) terms))	;; 1
	(setq terms (adjoin-term (make-term 2 11) terms))	;; 11*x^2
	(setq poly2 (make-poly 'x terms))

    (nod poly1 poly2)
)

;; main
(test-1)
(test-2)
