create or alter procedure Production.ProdottiPerStockLevel(
	@sl int = 500
) as

declare @pid int,
		@name varchar(50),
		@price money

declare prod_Crsr cursor for 
SELECT [ProductID], Name, [ListPrice]
FROM [AdventureWorks].[Production].[Product]
where SafetyStockLevel > @sl

create table #stock (
	pid int,
	nome varchar(50),
	prezzo money)

open prod_Crsr

fetch next from prod_Crsr
into @pid, @name, @price

while @@fetch_status = 0
begin
	insert into #stock
	(pid, nome, prezzo) values (@pid, @name, @price * 1.2)

	fetch next from prod_Crsr
	into @pid, @name, @price
end

close prod_Crsr
deallocate prod_Crsr

declare stk_crsr cursor for
select prezzo from #stock

select *
from #stock
