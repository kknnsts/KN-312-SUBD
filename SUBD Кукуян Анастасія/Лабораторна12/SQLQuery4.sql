CREATE TRIGGER 
ост_фікс2 ON [Бібліотека] AFTER INSERT
AS
BEGIN
UPDATE [Бібліотека] SET [Бібліотека].Останнє_оновлення =CONVERT(date, inserted.[Останнє_оновлення])
FROM inserted
WHERE [Бібліотека].[Код_бібліотеки] = inserted.[Код_бібліотеки]
END
INSERT INTO [Бібліотека] 
VALUES
(1, '"Світ"', 'Центральна дор', 'Стрий', 'Шевченка ', '50', '996785674', 'svit@gmail.com', '2000', '2020-10-05')
