#language: ru

@tree

Функционал: проверка заполнения поля количество при выборе услуги документа Заказ

Как тестировщик я хочу
проверить возможность заполнения поля количество при выборе услуги
чтобы убедиться, что документ заполняется верно

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: проверка заполнения поля количество при выборе услуги документа Заказ

* Создание Заказа покупателя
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
	И элемент "ТоварыКоличество" не доступен для редактирования Тогда
* Закрытие окон
	И я закрываю все окна клиентского приложения
