CREATE TABLE Жанр (
	Код_жанру INT NOT NULL,
	Назва VARCHAR(15) NOT NULL,
	Опис VARCHAR(50) NOT NULL,
	PRIMARY KEY (Код_жанру)
);

CREATE TABLE Книга (
	Код_книги INT NOT NULL,
	Назва VARCHAR(15) NOT NULL,
	Номер_частини INT,
	Код_жанру INT NOT NULL,
	Рік_видання INT NOT NULL,
	Кількість_сторінок INT NOT NULL,
	Вартість MONEY NOT NULL,
	Зображення VARBINARY(Max) NULL,
	PRIMARY KEY (Код_книги),
	CONSTRAINT FK_Жанр FOREIGN KEY (Код_жанру) 
	REFERENCES Жанр (Код_жанру) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE Автор (
	Код_автора INT NOT NULL,
	Прізвище VARCHAR(20) NOT NULL,
	[Ім'я] VARCHAR(15) NOT NULL,
	[По-батькові] VARCHAR(20),
	Псевдонім VARCHAR(20),
	Рік_народження INT NOT NULL,
	Рік_смерті INT,
	Фото VARBINARY(Max) NULL,
	PRIMARY KEY (Код_автора)
);

CREATE TABLE Видавництво (
	Код_видавництва INT NOT NULL,
	Назва VARCHAR(30) NOT NULL,
	Місто VARCHAR(15),
	Область VARCHAR(15),
	Телефон INT NOT NULL,
	Ел_адреса VARCHAR(50) NOT NULL,
	Сайт VARCHAR(50),
	Рік_заснування INT,
	PRIMARY KEY (Код_видавництва)
);

CREATE TABLE Бібліотека (
	Код_бібліотеки INT NOT NULL,
	Назва VARCHAR(20) NOT NULL,
	Тип VARCHAR(15) NOT NULL,
	Місто VARCHAR(20) NOT NULL,
	Вулиця VARCHAR(20) NOT NULL,
	Будинок INT NOT NULL,
	Телефон INT NOT NULL,
	Ел_адреса VARCHAR(50),
	Рік_заснування INT,
	PRIMARY KEY (Код_бібліотеки)
);

CREATE TABLE Працівник (
	Табельний_номер INT NOT NULL,
	Прізвище VARCHAR(20) NOT NULL,
	[Ім'я] VARCHAR(15) NOT NULL,
	[По-батькові] VARCHAR(20),
	Місто VARCHAR(20) NOT NULL,
	Вулиця VARCHAR(20) NOT NULL,
	Будинок INT NOT NULL,
	Телефон INT NOT NULL,
	Дата_прийняття DATE NOT NULL,
	Посада VARCHAR(15) NOT NULL,
	PRIMARY KEY (Табельний_номер),
);

CREATE TABLE Облік_книг (
	Код_видачі INT NOT NULL,
	Код_бібліотеки INT NOT NULL,
	Код_книги INT NOT NULL,
	Код_автора INT NOT NULL,
	Дата_видачі DATE NOT NULL,
	Дата_повернення DATE NOT NULL,
	Табельний_номер INT NOT NULL,
	Поверненість BIT NOT NULL,
	PRIMARY KEY (Код_видачі),
	CONSTRAINT FK_Бібліотека FOREIGN KEY (Код_бібліотеки) 
	REFERENCES Бібліотека(Код_бібліотеки) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Книга FOREIGN KEY (Код_книги) 
	REFERENCES Книга(Код_книги) ON DELETE CASCADE ON UPDATE CASCADE, 
	CONSTRAINT FK_Автор FOREIGN KEY (Код_автора) 
	REFERENCES Автор(Код_автора) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Працівник FOREIGN KEY (Табельний_номер) 
	REFERENCES Працівник(Табельний_номер) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE Постачання (
	Номер_поставки INT NOT NULL,
	Код_бібліотеки INT NOT NULL,
	Код_книги INT NOT NULL,
	Кількість_книг INT NOT NULL,
	Код_видавництва INT NOT NULL,
	Дата_поставки DATE NOT NULL,
	Витрачена_сума MONEY NOT NULL,
	PRIMARY KEY (Номер_поставки),
	CONSTRAINT FK_Бібліотек FOREIGN KEY (Код_бібліотеки) 
	REFERENCES Бібліотека(Код_бібліотеки) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Книг FOREIGN KEY (Код_книги) 
	REFERENCES Книга(Код_книги) ON DELETE CASCADE ON UPDATE CASCADE, 
	CONSTRAINT FK_Видавництво FOREIGN KEY (Код_видавництва) 
	REFERENCES Видавництво(Код_видавництва) ON DELETE CASCADE ON UPDATE CASCADE );
