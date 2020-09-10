select
	ProductID,
	Name,
	ProductNumber,
	dbo.fnSiNo(MakeFlag, 'jp') Flag,
	isnull(Color, 'Default') Color
from
	Production.Product