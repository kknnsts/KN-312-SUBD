CREATE UNIQUE INDEX книгаINDX ON Книга ([Код_книги], [Назва]); 
EXEC sp_helpindex 'Книга'
GO
