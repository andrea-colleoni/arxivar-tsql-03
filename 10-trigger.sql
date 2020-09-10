CREATE or alter TRIGGER trgPersone 
   ON  persone 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	declare @count int

	select @count = COUNT(*)
	from inserted

	print concat('hai fatto una insert di ', @count, ' record')

	select @count = COUNT(*)
	from deleted

	print concat('hai fatto una delete di ', @count, ' record')
END
GO
