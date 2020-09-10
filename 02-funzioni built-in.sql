-- funzioni

declare @oggi datetime, 
		@nascita datetime
set @oggi = getDate()
set @nascita = '1973-08-03'


print dateadd(hour, -5000, @oggi)
print datediff(minute, @nascita, @oggi)

declare @txt varchar(max)
set @txt = 'abcdefghijklmnop'

print left(@txt, 3)
print charindex('d', @txt)

select 
	*
from
	persone
where
	-- nome like '%a%'
	charindex('o', nome) > 0