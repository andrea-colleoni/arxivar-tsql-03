/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [persone] 
	-- with (readuncommitted)
	with (tablock)
  where nome = 'Andrea'