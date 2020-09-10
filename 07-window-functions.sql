select 
	*
from (
select
	ProductID,
	Name,
	ProductNumber,
	case 
		when MakeFlag = 0 then 'No'
		when MakeFlag = 1 then 'Sì'
	end Flag,
	isnull(Color, 'Default') Color,
	size,
	weight,
	ROW_NUMBER() over (partition by MakeFlag order by Name) numero,
	RANK() over (partition by size order by weight) rank,
	DENSE_RANK() over (partition by size order by weight) d_rank
from
	Production.Product
) q
where q.size is not null --and q.rank  = 1
-- order by ProductID