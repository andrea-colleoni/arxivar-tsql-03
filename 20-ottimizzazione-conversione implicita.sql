SELECT
	EMP.BusinessEntityID,
	EMP.LoginID,
	EMP.JobTitle
FROM HumanResources.Employee EMP
WHERE EMP.NationalIDNumber = '658797903';
