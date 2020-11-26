SELECT Книга.Назва FROM Книга
WHERE NOT EXISTS 
(SELECT * FROM Жанр WHERE Книга.Код_жанру = Жанр.Код_жанру)
