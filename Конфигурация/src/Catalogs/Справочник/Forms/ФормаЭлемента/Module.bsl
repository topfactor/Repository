&НаСервере
Процедура ТекстЗапроса() Экспорт
	Запрос = новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ
	|	Документ.Ссылка КАК Документ,
	|	Справочник.Ссылка КАК Справочник
	|ИЗ
	|	Документ.Документ КАК Документ
	|		ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Справочник КАК Справочник
	|		ПО Документ.Реквизит = Справочник.Ссылка";
	Результат = Запрос.Выполнить();
	
	ЧтотоВернула = ЕщеОднаФуекция(Результат);
КонецПроцедуры

&НаКлиенте
Процедура Команда1(Команда)
	ТекстЗапроса();
КонецПроцедуры

&НаСервере 	
Функция ЕщеОднаФуекция(Результат)
	Возврат Результат;
КонецФункции;
