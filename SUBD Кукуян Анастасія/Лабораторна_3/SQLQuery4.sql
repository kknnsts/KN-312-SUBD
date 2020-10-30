ALTER TABLE Автор
ALTER COLUMN Код_автора int NOT NULL;

ALTER TABLE Автор
ADD Країна VARCHAR(20);

ALTER TABLE Автор
ADD CONSTRAINT UQ_Автор UNIQUE (Код_автора, Країна);

