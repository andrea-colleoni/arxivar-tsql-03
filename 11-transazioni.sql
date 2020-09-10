
declare @iniziale varchar(1),
		@num int

begin transaction tx1

select @num = COUNT(*)
from persone 
where nome = 'test2'

update prodotti
set prezzo = @num
where nome like 'C%'

save transaction MetaLavoro

select top 1 
	@iniziale = left(nome, 1)
from prodotti

update persone
set nome = concat(@iniziale, nome)
where nome = 'test2'

rollback transaction tx1
commit transaction tx1

select *
from prodotti

select *
from persone