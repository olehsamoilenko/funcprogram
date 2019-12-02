;; Варіант 16. Многочлени з однією змінною можна ділити один на одного, отримуючи частку 
;; і залишок. Для ділення  розділимо старший член діленого на старший член дільника. В результаті 
;; вийде перший терм частки. Потім помножимо результат на дільник, віднімемо многочлен, що 
;; вийшов з діленого і, рекурсивно ділячи різницю на дільник, отримаємо решту частки. Зупиняємося, 
;; коли порядок дільника перевищить порядок ділимо, і оголошуємо залишком те, що тоді буде 
;; називатися діленим. Крім того, якщо коли-небудь ділене виявиться нулем, повертаємо нуль як і 
;; частку, і залишок. Розробити процедуру ділення многочленів

(load "utils.lisp")
(load "add.lisp")
(load "sub.lisp")
(load "devide.lisp")
(load "testing.lisp")

(defun test-1 ()
	(print "Test 1")

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 -10) terms))	;; -10
	(setq terms (adjoin-term (make-term 1 -3) terms))	;; -3*x
	(setq terms (adjoin-term (make-term 2 1) terms))	;; x^2
	(setq poly1 (make-poly 'x terms))
	(print poly1)

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 2) terms))	;; 2
	(setq terms (adjoin-term (make-term 1 1) terms))	;; x
	(setq poly2 (make-poly 'x terms))
	(print poly2)

	(devide-poly poly1 poly2)
)

(defun test-2 ()
	(print "Test 2")

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 -1) terms))	;; -1
	(setq terms (adjoin-term (make-term 1 -5) terms))	;; -5*x
	(setq terms (adjoin-term (make-term 2 2) terms))	;; 2*x^2
	(setq poly1 (make-poly 'x terms))
	(print poly1)

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 -3) terms))	;; -3
	(setq terms (adjoin-term (make-term 1 1) terms))	;; x
	(setq poly2 (make-poly 'x terms))
	(print poly2)

	(devide-poly poly1 poly2)
)

(defun test-3 ()
	(print "Test 3")

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 -9) terms))	;; -9
	(setq terms (adjoin-term (make-term 1 6) terms))	;; 6*x
	(setq terms (adjoin-term (make-term 4 2) terms))	;; 2*x^4
	(setq terms (adjoin-term (make-term 6 1) terms))	;; x^6
	(setq poly1 (make-poly 'x terms))
	(print poly1)

	(setq terms (the-empty-termlist))
	(setq terms (adjoin-term (make-term 0 3) terms))	;; 3
	(setq terms (adjoin-term (make-term 3 1) terms))	;; x^3
	(setq poly2 (make-poly 'x terms))
	(print poly2)

	(devide-poly poly1 poly2)
)

;; main
(test-1)
(test-2)
(test-3)