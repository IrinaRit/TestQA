﻿#language: ru

@tree

Функционал: проверка условия по заполнению поля Организация

Как тестировщик я хочу
проверить возможность заполнения поля 
чтобы убедиться, что документ заполняется верно

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: проверка условия по заполнению поля Организация

* Создание Заказа покупателя
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
* Проверка заполнения поля Организация из Соглашения
	Когда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке
		| 'Код' | 'Наименование'                                                    |
		| '1'   | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Если поле с именем "Company" заполнено Тогда
		И я перехожу к следующему реквизиту
		ИначеЕсли поле с именем "Company" имеет заголовок "" тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я перехожу к строке
			| 'Код' | 'Наименование'           |
			| '1'   | 'Собственная компания 1' |			
		И я нажимаю на кнопку с именем 'FormChoose'
* Закрытие окон
	И я закрываю все окна клиентского приложения
		