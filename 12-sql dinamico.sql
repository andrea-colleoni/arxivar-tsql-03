declare @tableName varchar(50),
		@columnName varchar(50),
		@sql nvarchar(max),
		@idLimite int,
		@nome nvarchar(max)

set @tableName = 'Product'
set @columnName = 'ProductId, Name, Color'
-- set @idLimite = '400 OR 1=1'
set @idLimite = 0
set @nome = 'Adjustable Race'

set @sql = 'select ' +
	@columnName +
' from Production.' + @tableName + 
' where ProductID > @ProdLimite' + 
' and Name = @NomeProdotto'

print @sql
exec sp_executesql @sql, 
	-- N'@NomeProdotto varchar(50)', @NomeProdotto = @nome
	N'@ProdLimite int, @NomeProdotto varchar(50)', @ProdLimite = @idLimite, @NomeProdotto = @nome