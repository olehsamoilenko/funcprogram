;Варіант 16. Частотний словарь. Написати програму, яка за заданим текстом будує список
;пар: (<слово> <частота народження в тексті>).

(let
	(
		(text
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
		(keys (list))
		(values (list))
	)
	(
		(lambda ()
			(defun write-to-dict (values elem)
				(let ((pos (position elem values :test (function string-equal))))
					(if (equal pos nil)
						(let ((values (append values (list elem))))
							(values)
						)
						(values)
					)
				)
			)

			(defun iterate-every-word (lst values index)
				(let ((values (write-to-dict values (nth index lst))))
					(if (equal (nth (+ index 1) lst) nil)
						values
						(iterate-every-word lst values (+ index 1))
					)
				)
			)

			;; (let ((values (iterate-every-word (list "hello" "a" "hello" "b") () 0)))
			;; 	(print values)
			;; )

			(print (write-to-dict ("hello") "hello"))
		)
	)
)

;; (print (position "hell" (list "abc" "hello" "def" "hello") :test (function string-equal)))