ALTER TABLE Облік_книг
	DROP COLUMN Код_автора;
ALTER TABLE Облік_книг
	ALTER COLUMN Поверненість VARCHAR (5) NOT NULL;

