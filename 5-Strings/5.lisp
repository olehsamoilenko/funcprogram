;; Варіант 16. Частотний словарь. Написати програму, яка за заданим текстом будує список
;; пар: (<слово> <частота народження в тексті>).

(setq text
    (list
        (list "Лабораторна" "робота" "5")
        (list "Обробка" "текстів")
        (list "Deadline" "жовтень")
        (list "Завдання")
        (list "Написати" "програму" "обробки" "тексту" "природної" "мови" "з" "використанням" "функціоналів" "що" "відображають" "відповідно" "до" "завдання" "з" "таблиці")
        (list "Тексти" "рекомендується" "представляти" "списком" "списків" "кожне" "речення" "список" "слів" "весь" "текст" "список" "речень")
        (list "Варіант" "1")
        (list "Задати" "текст")
        (list "Зробити" "великою" "першу" "літеру" "першого" "слова" "кожного" "речення")
        (list "Передбачається" "що" "перше" "слово" "пропозиції" "може" "як" "починатися" "так" "і" "не" "починатися" "з" "великої" "літери")
        (list "Варіант" "2")
        (list "Задати" "текст")
        (list "Зробити" "великою" "усі" "літери" "кожного" "слова" "що" "починається" "з" "великої" "літери")
        (list "Варіант" "3")
        (list "Задати" "текст")
        (list "У" "кожному" "слові" "тексту" "замінити" "задану" "користувачем" "літеру" "заданою" "комбінацією" "літер")
        (list "Приклад")
        (list "Замінна" "літера" "б" "що" "заміняє" "поєднання" "літер" "ку" "слово" "абракадабра" "результат" "акуракадакура")
        (list "Варіант" "4")
        (list "У" "кожному" "слові" "видалити" "літеру" "що" "стоїть" "між" "двома" "заданими")
        (list "Варіант" "5")
        (list "Сформувати" "список" "що" "інформує" "про" "входження" "заданої" "літери" "в" "текст" "у" "вигляді")
        (list "Цифри" "вказують" "кількість" "входжень" "літери" "в" "кожне" "слово" "речення")
        (list "Варіант" "6")
        (list "Задати" "текст")
        (list "Замінити" "в" "кожному" "реченні" "все" "входження" "заданого" "слова" "на" "заданий" "нове" "слово")
        (list "Варіант" "7")
        (list "Задати" "текст")
        (list "Видалити" "з" "кожного" "слова" "в" "кожному" "реченні" "всі" "літери" "що" "повторюються")
    )
)

;; return: index or NIL
(defun find-word-in-dictionary (dictionary word)
    (setq index NIL)
    (setq i 0)
    (loop do
        (setq elem (nth i dictionary))
        (setq cur-word (car elem))
        (if (equalp cur-word word)
            (setq index i)
        )
        (setq i (+ i 1))
        while (not (eq cur-word NIL))
    )

    index
)

;; usage:
;; (setq dict (append-node-to-dictionary (create-node "hello" 2) dict))
(defun append-node-to-dictionary (node dictionary)
    (cons node dictionary)
)

;; usage:
;; (create-node "hello" 2) => ("hello" . 2)
(defun create-node (word frequency)
    (cons word frequency)
)

(defun remove-nth (n list)
  (nconc (subseq list 0 n) (nthcdr (1+ n) list)))

(defun increment-counter (index dictionary)
    (setq pair (nth index dictionary))
    (setq counter (cdr pair))
    (setq word (car pair))
    (setq dictionary (remove-nth index dictionary))
    (setq dictionary (append-node-to-dictionary (create-node word (+ counter 1)) dictionary))

    dictionary
)

(defun process-word (word dictionary)
    (setq index (find-word-in-dictionary dictionary word))
    (if (equalp index NIL)
        ;; append ("word" 1)
        (setq dictionary (append-node-to-dictionary (create-node word 1) dictionary))
        ;; ("word" n) => ("word" n+1)
        (setq dictionary (increment-counter index dictionary))
    )

    dictionary
)

(defun process-sentence (sentence dictionary)
    (setq dictionary (process-word (car sentence) dictionary))
    (if (not (equalp (cdr sentence) NIL))
        (setq dictionary (process-sentence (cdr sentence) dictionary))
    )

    dictionary
)

(defun process-text (text dictionary)
    (setq dictionary (process-sentence (car text) dictionary))
    (if (not (equalp (cdr text) NIL))
        (setq dictionary (process-text (cdr text) dictionary))
    )

    dictionary
)

(print (process-text text '()))
