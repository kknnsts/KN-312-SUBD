CREATE TRIGGER 
���_����2 ON [���������] AFTER INSERT
AS
BEGIN
UPDATE [���������] SET [���������].������_��������� =CONVERT(date, inserted.[������_���������])
FROM inserted
WHERE [���������].[���_��������] = inserted.[���_��������]
END
INSERT INTO [���������] 
VALUES
(1, '"���"', '���������� ���', '�����', '�������� ', '50', '996785674', 'svit@gmail.com', '2000', '2020-10-05')
