SELECT * FROM Працівник_2
WHERE Табельний_номер  NOT IN (SELECT Табельний_номер FROM Працівник_1)
