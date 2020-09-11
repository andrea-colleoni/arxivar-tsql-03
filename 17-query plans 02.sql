
CREATE NONCLUSTERED INDEX ix_queryplan
ON [Sales].[SalesOrderDetail] ([LineTotal])
INCLUDE ([OrderQty],[ProductID],[UnitPrice])
GO
