/*
SELECT DISTINCT
	PRODUCT.ProductID,
	PRODUCT.Name
FROM 
	Production.Product PRODUCT
	INNER JOIN Sales.SalesOrderDetail DETAIL
	ON PRODUCT.ProductID = DETAIL.ProductID
	OR PRODUCT.rowguid = DETAIL.rowguid;
*/
SELECT DISTINCT
	PRODUCT.ProductID,
	PRODUCT.Name
FROM 
	Production.Product PRODUCT
	INNER JOIN Sales.SalesOrderDetail DETAIL
	ON PRODUCT.ProductID = DETAIL.ProductID
UNION
SELECT DISTINCT
	PRODUCT.ProductID,
	PRODUCT.Name
FROM 
	Production.Product PRODUCT
	INNER JOIN Sales.SalesOrderDetail DETAIL
	ON PRODUCT.rowguid = DETAIL.rowguid;