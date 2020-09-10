exec spProdInStock @sl=800

/* non consentito 
select *
from spProdInStock @sl=800
where color = 'Black'
*/

select *
from fnProdInStock(800)
where color = 'Black'

select *
from fnProdInStock2(800)
where color = 'Black'