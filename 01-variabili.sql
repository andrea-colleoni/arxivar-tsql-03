USE [arxivar-tsql-03]
GO

SELECT [id]
      ,[nome]
      ,[cognome]
      ,[email]
  FROM [dbo].[persone]
GO

declare @variabile int
set @variabile = 1
print @variabile

declare @var2 varchar(30)
set @var2 = 'ciao'

print @var2

declare @var3 varchar(max)

select @variabile = id from persone where nome = 'Mario'
print @variabile


select * from persone where id = @variabile

declare @num int,
		@txt varchar(50)

set @num = 1
set @txt = '2'

print @num
print @txt

set @num = '1' -- cast implicito
set @txt = 2

print @num
print @txt

declare @data datetime
set @data = '2020-02-29'
print @data

set @txt = 'ciao
a
tutti'

print concat('la variabile @num vale ', @num)
print getdate()

go
/*  */
-- print @variabile