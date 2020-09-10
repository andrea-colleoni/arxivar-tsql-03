with colori_prodotti(id, nome, colore)
as
(
select ProductID, Name, [Color]
from [Production].[Product]
)
-- 
select *
from colori_prodotti
where colore = 'red'

