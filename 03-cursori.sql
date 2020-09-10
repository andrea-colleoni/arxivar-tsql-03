-- cursori
declare @prodid int,
		@name varchar(50),
		@number nvarchar(25)
/*
select @prodid = ProductID, @name = Name, @number = ProductNumber
from Production.Product
-- order by 1 desc

print concat(@prodid, ', ', @name, ', ', @number)
*/

declare crsr_prod cursor for
select ProductID, Name, ProductNumber
from Production.Product

open crsr_prod

fetch next from crsr_prod
into @prodid, @name, @number

print concat(@prodid, ', ', @name, ', ', @number)
print @@fetch_status

while @@fetch_status = 0
begin
	print concat(@prodid, ', ', @name, ', ', @number)

	if @prodid = 400 break -- esce dal ciclo while

	fetch next from crsr_prod
	into @prodid, @name, @number
end

close crsr_prod
deallocate crsr_prod