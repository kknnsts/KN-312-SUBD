SELECT * FROM Працівник_1
WHERE Табельний_номер  IN (SELECT Табельний_номер FROM Працівник_2)
