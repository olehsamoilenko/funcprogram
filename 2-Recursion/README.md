<!-- check on my github: https://github.com/olehsamoilenko/funcprogram/tree/master/2-Recursion -->
<html>
	<p align="center">
		Київський національний університет імені Тараса Шевченка<br>
		Факультет інформаційних технологій<br>
		Кафедра програмних систем та технологій<br>
		Лабораторна робота <b>№2</b><br>
		з дисципліни "Функціональне програмування"<br>
		<br>
		<b>Використання рекурсії для організації повторювальних процесі</b><br>
		<br>
		студента групи IПЗ-41<br>
		Самойленка Олега<br>
		2019
	</p>
	<h3>Завдання</h3>
	<b>Варіант 16.</b> По заданим b, p, m обчислити значення виразу b^p mod m. Обчислення виконати, використовуючи алгоритм, що базується на двійковому розкладанні показника степені p:<br>
	b^p = <br>
    1, p = 0<br>
    (b^(p/2))^2, p - парне<br>
    b*(b^(p/2))^2, p - непарне<br>
	<h3>Алгоритм</h3>
	<ul>
		<li>виконати перевірку <b>p</b>:</li>
		<li>якщо <b>p</b> дорівнює 0, результат - 1</li>
		<li>якщо <b>p</b> парне, виконати обчислення процедурою <b>even</b></li>
		<li>якщо <b>p</b> непарне, виконати обчислення процедурою <b>odd</b></li>
	</ul>
	<h3>Тестування</h3>
	<table align=center>
		<tr align=center>
			<th>Вхідні дані</th>
			<th>Очікуваний результат</th>
			<th>Отриманий результат</th>
		</tr>
		<tr align=center>
			<td>5 2 3</td>
			<td>2</td>
			<td>2</td>
		</tr>
		<tr align=center>
			<td>5 0 1</td>
			<td>0</td>
			<td>0</td>
		</tr>
	</table>
	<h3>Висновки</h3>
	Набуті навички:
	<ul>
		<li>використання <b>if</b></li>
		<li>написання рекурсивних функцій</li>
	</ul>
</html>
