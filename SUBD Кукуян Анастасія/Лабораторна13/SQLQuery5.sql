SET SHOWPLAN_ALL ON;  
GO  
select [Назва] from [Жанр]
where [Код_жанру]>'5';
GO
select [Код_книги], [Назва] from [Книга]
where [Вартість]<'150';
GO
SET SHOWPLAN_ALL OFF;  
GO  
