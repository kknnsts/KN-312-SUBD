CREATE FUNCTION ���������4 (@id AS int)
RETURNS nvarchar(500) AS 
BEGIN
DECLARE @returnValue nvarchar(500)
SELECT @returnValue = ���������_1.������� + ' ' + CAST(���������_1.������� as nvarchar(30)) 
+ ' ' + ���������_1.������ + ' ' + CAST(���������_1.������� as nvarchar(10))
FROM ���������_1 WHERE ���������_����� = @id
RETURN @returnValue
END
