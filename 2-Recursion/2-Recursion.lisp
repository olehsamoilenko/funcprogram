;Варіант 16. По заданим b, p, m обчислити значення виразу b^p mod m. Обчислення
;виконати, використовуючи алгоритм, що базується на двійковому розкладанні показника степені p:
;b^p = 
;    1, p = 0
;    (b^(p/2))^2, p - парне
;    b*(b^(p/2))^2, p - непарне

; power function
; returns a^x
(defun power (a x)
    (if (= x 0)
        1
        (* a (power a (- x 1)))
    )
)

(defun odd (B P)
    (power (power b (/ P 2)) 2)
)

(defun even (B P)
    (* B (odd B P))
)

; equivalent of switch-case
(defun switch (B P)
    (if (= (power B P) 0)
        1
        
        (if (= (mod (power B P) 2) 0)
            (odd B P)
            (even B P)
        )
    )
)

; calculates b^p
(defun calculate (B P M)
    (mod (switch B P) M)
)

; b^p mod m
(print (calculate 5 2 3))
(print (calculate 5 0 1))
