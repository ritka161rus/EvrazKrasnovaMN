#language: ru

@tree

Функционал: создание заказа клиента

Как Менеджер отдела продаж я хочу
выполнить создание Заказа КЛиента
чтобы зарезервировать товар под клиента

Контекст:
Дано Я открыл сеанс TestClient от имени "Тест_МенеджерОтделаПродаж" с паролем "" или подключаю уже существующий

Сценарий: создание документа заказ клиента
* открытие формы создания документа
	И я закрыл все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы клиентов'
	Когда открылось окно 'Заказы клиентов'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСтандартныеНастройкиДинамическогоСписка'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Заказ клиента (создание)'
* заполнение вкладки "основное"
	И я нажимаю кнопку выбора у поля с именем "ПартнерБезКЛ"
	Тогда открылось окно 'Партнеры (Клиенты)'
	И в таблице "Список" я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст 'Познин Фёдор Михайлович'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Партнеры (Клиенты)'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Если  открылось окно '1С:Предприятие' тогда
		И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Заказ клиента (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Соглашение"
	Тогда открылось окно 'Соглашения об условиях продаж'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                 |  
		| 'Типовое соглашение Таганрог' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование'    |
		| 'Таганрог Склады' |
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'           | 'Подразделение' |
		| 'Таганрог, Химическая 9' | 'Таганрог'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ клиента *'
* заполнение товарной части документа
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "ВидыНоменклатуры" я разворачиваю строку:
		| 'Наименование' |
		| 'ЕССН'         |
	И в таблице "ВидыНоменклатуры" я перехожу к строке:
		| 'Наименование' |
		| 'LS_РУЛОН_Г/К' |
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование'                                                                                                                                                                          |
	 	| 'Рулон г/к 3 Ст3сп ГОСТ 16523-97' |
	И я нажимаю на кнопку с именем 'СписокРасширенныйПоискНоменклатураВыбратьЗначениеНоменклатуры'
	Тогда открылось окно 'Заказ клиента *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '1250 / НЛМК'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "ДеревоОтборов" я активизирую поле с именем "ДеревоОтборовПредставление"
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '0,500'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьОбеспечение'
	Тогда открылось окно 'Заполнение обеспечения и отгрузки'
	И я перехожу к закладке с именем "СтраницаПодсказкаПоОстаткам"
	И я устанавливаю  флаг с именем 'Резервировать'
	И я перехожу к закладке с именем "СтраницаПодсказкаБезОстатков"
	И я нажимаю на кнопку с именем 'Заполнить'
	Когда открылось окно 'Заказ клиента *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Номенклатура'                    | 'Сумма с НДС' | 'Характеристика' | 'Действия'                | 'Количество' | 'Вид цены'                | 'Цена'      |
		| 'Рулон г/к 3 Ст3сп ГОСТ 16523-97' | '40 290'      | '1250 / НЛМК'    | 'Резервировать на складе' | '0,500'      | 'Таганрог Розница 2'      | '80 580,00' |
* редактирование количества и цены
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1,100'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* проверка заполнения табличной части после редактирования и суммы по документу
	Тогда таблица "Товары" содержит строки:
		| 'Номенклатура'                    | 'Сумма с НДС' | 'Характеристика' | 'Действия'                | 'Количество' | 'Вид цены'                 | 'Цена'      |
		| 'Рулон г/к 3 Ст3сп ГОСТ 16523-97' | '87 340'      | '1250 / НЛМК'    | 'Резервировать на складе' | '1,100'      | 'Таганрог Розница 1'       | '79 400,00' |
	Тогда элемент формы с именем "СуммаВсегоСНДС" стал равен '87 340,00'
* номер
	И я запоминаю значение поля с именем 'Номер' как "НомерЗК" 
* проведение документа
	Тогда открылось окно 'Заказ клиента *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ клиента * от *' в течение 20 секунд
* проверка создания документа
	Когда открылось окно 'Заказы клиентов'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокУстановитьИнтервал'
	Тогда открылось окно 'Выберите период'
	И я нажимаю кнопку выбора у поля с именем "DateBegin"
	И в поле с именем 'DateBegin' я ввожу текущую дату
	И я нажимаю на кнопку с именем 'Select'
	И таблица "Список" содержит строки :
		| 'номер'            |     
		| '$НомерЗК$'  | 
