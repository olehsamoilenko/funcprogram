;Варіант 16. Якщо f є чисельна функція, а n – додатне ціле число, то n-кратне застосування f
;визначається як функція, значення якої в точці x дорівнює f (f (... (f (x))...)). Наприклад, якщо f є
;операція зведення в квадрат, то n-кратне застосування f є функція, яка зводить свій аргумент в 2^n
;степінь. Напишіть процедуру, яка приймає в якості введення процедуру, яка обчислює f, і додатне
;ціле n, і повертає процедуру, яка обчислює n-кратне застосування f.

(defun iterate (func i val)           ; applies func on val i times
  (let ((val (funcall func val) ))
    (if (= i 1)
      val
      (iterate func (- i 1) val)
    )
  )
)

(defun iterate-lambda (func i)         ; returns lambda function iterate
  (lambda (val)                        ; with selected iter func and iter times
    (iterate func i val)
  )
)

(defun square (n)
  (* n n)
)

(defun plus-one (n)
  (+ n 1)
)

(let ( (plus-one-iter (iterate-lambda (function plus-one) 10))
       (square-iter   (iterate-lambda (function square)    3)) )
     
     (print (funcall plus-one-iter 0)) ; 0 plus one 10 times
     (print (funcall square-iter   2)) ; 2 to square 3 times
)
