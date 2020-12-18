CREATE FUNCTION Працівник4 (@id AS int)
RETURNS nvarchar(500) AS 
BEGIN
DECLARE @returnValue nvarchar(500)
SELECT @returnValue = Працівник_1.Прізвище + ' ' + CAST(Працівник_1.Будинок as nvarchar(30)) 
+ ' ' + Працівник_1.Посада + ' ' + CAST(Працівник_1.Телефон as nvarchar(10))
FROM Працівник_1 WHERE Табельний_номер = @id
RETURN @returnValue
END
