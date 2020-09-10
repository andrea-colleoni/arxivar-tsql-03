create or alter view vwProdotti
with schemabinding
as
SELECT 
	ProductID, Name, MakeFlag, ProductNumber
FROM
	Production.Product