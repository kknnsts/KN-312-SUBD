USE [СУБД]
GO

CREATE
TRIGGER Delete_Бібліотека ON [Бібліотека] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [Код_бібліотеки] FROM deleted
UPDATE [Облік_книг] SET Код_бібліотеки=2 WHERE Код_бібліотеки=@Old
END
