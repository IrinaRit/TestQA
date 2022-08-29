﻿#language: ru

@tree

Функционал: проверка прикрепления картинки в справочнике Товары

Как тестировщик я хочу
проверить прикрепление картинки в справочнике Товары
чтобы убедиться, что функционал работает 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка прикрепления картинки в справочнике Товары
	Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af"
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку 'Создать'
	Тогда открылось окно 'Файл (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Туфли'
	И я выбираю файл "C:\Users\ritter.irina\Documents\GitHub\TestQA\Features_IRP\Files\туфли.jpg"
	И я нажимаю на кнопку 'Выбрать файл с диска и записать'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Туфли (Файл)' в течение 20 секунд
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Туфли'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'Туфли'
	И я нажимаю на кнопку 'Записать и закрыть'