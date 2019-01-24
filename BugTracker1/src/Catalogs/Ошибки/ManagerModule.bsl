Функция ПолучитьHTMLПредставлениеКода(Знач _ИсходныйТекст) Экспорт

	ТекстКода = СокрЛП(_ИсходныйТекст);

	//при переносе данных в строке могут появится 13-тые символы Юникода
	ТекстКода = СтрЗаменить(ТекстКода, Символ(13), "");
 
	ТекстКода = СтрЗаменить(ТекстКода, Символы.ПС, "\n");
	ТекстКода = СтрЗаменить(ТекстКода, """", "\""");
	ТекстКода = СтрЗаменить(ТекстКода, "'", "\""");

	Макет = ПолучитьОбщийМакет("Скрипт");

	ТекстHTML = Макет.ПолучитьТекст();

	Стиль = "
		|.comment, .comment span, .comment span span, .comment span span span {color:green}
		|body {color:blue; font-family: \'Courier New\', Courier; font-size: 80%;}
		|p {padding: 0; margin: 2px 0px 2px 0px;}
		|.attribute {color:brown}
		|.number {color:black}
		|.string, .string span {color:black}
		|.datestring, .datestring span {color:magenta}
		|.sign {color:red}
		|.semicolon {color:red}
		|.macro {color:brown}
		|.operator {color:red}
		|.key {color:red}";

	ТекстHTML = СтрЗаменить(ТекстHTML, "#%&styles#%&", Стиль);
	ТекстHTML = СтрЗаменить(ТекстHTML, "#%&text#%&", "'" + ТекстКода + "'");

	Возврат ТекстHTML;
 
КонецФункции



