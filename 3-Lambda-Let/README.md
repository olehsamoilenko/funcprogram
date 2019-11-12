<html>
	<p align="center">
		Київський національний університет імені Тараса Шевченка<br>
		Факультет інформаційних технологій<br>
		Кафедра програмних систем та технологій<br>
		Лабораторна робота <b>№3</b><br>
		з дисципліни "Функціональне програмування"<br>
		<br>
		<b>Форми lambda та let</b><br>
		<br>
		студента групи IПЗ-41<br>
		Самойленка Олега<br>
		2019
	</p>
	<h3>Завдання</h3>
	<b>Варіант 16.</b> Якщо f є чисельна функція, а n – додатне ціле число, то n-кратне застосування f
	визначається як функція, значення якої в точці x дорівнює f (f (... (f (x))...)). Наприклад, якщо f є
	операція зведення в квадрат, то n-кратне застосування f є функція, яка зводить свій аргумент в 2^n степінь.
	Напишіть процедуру, яка приймає в якості введення процедуру, яка обчислює f, і додатне
	ціле n, і повертає процедуру, яка обчислює n-кратне застосування f.
	<h3>Алгоритм</h3>
	<ul>
		<li>написати функцію <b>iterate</b>, приймає функцію для ітерування, кількість повторень, початкове значення</li>
		<li>написати функції <b>iterate-lambda</b>; використовує <b>iterate</b>; повертає <b>lambda</b>-функцію, яка приймає тільки початкове значення, інші дані залишаються інкапсульованими в <b>iterate</b></li>
		<li>написати механізм запуску ітеративної функції за допомогою <b>let</b> та <b>funcall</b></li>
	</ul>
	<h3>Тестування</h3>
	<table align=center>
		<tr align=center>
			<th>Функція ітератора</th>
			<th>Кількість ітерацій</th>
			<th>Початкове значення</th>
			<th>Результат</th>
		</tr>
		<tr align=center>
			<td>Додавання одиниці</td>
			<td>10</td>
			<td>0</td>
			<td>10</td>
		</tr>
		<tr align=center>
			<td>Піднесення до квадрату</td>
			<td>3</td>
			<td>2</td>
			<td>256</td>
		</tr>
	</table>
	<h3>Висновки</h3>
	Набуті навички:
	<ul>
		<li>передавання функції як аргументу за допомогою ключового слова <b>function</b></li>
		<li>використання <b>let</b> для визначення локальної змінної</li>
		<li><b>lambda</b>-функція як значення, що повертається</li>
		<li>виклик функції за допомогою ключового слова <b>funcall</b></li>
	</ul>
</html>