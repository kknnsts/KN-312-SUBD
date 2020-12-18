USE [СУБД]
GO

CREATE PROCEDURE ПрЖанр @Код_жанру AS int, @Назва AS nvarchar(50), @Опис AS nvarchar(50)
AS
INSERT INTO Жанр (Код_жанру, Назва, Опис) 
VALUES (@Код_жанру, @Назва, @Опис);
