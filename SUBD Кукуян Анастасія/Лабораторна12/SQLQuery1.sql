USE [����]
GO

CREATE
TRIGGER Delete_��������� ON [���������] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [���_��������] FROM deleted
UPDATE [����_����] SET ���_��������=2 WHERE ���_��������=@Old
END
