
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если Параметры.Отбор.Свойство("Пользователь") Тогда
		ЭтотОбъект.АвтоЗаголовок = Ложь;
		ЭтотОбъект.Заголовок = "Мои уведомления";	
	КонецЕсли;	
КонецПроцедуры
