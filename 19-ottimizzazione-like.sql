SELECT
	Person.BusinessEntityID,
	Person.FirstName,
	Person.LastName,
	Person.MiddleName
FROM Person.Person
WHERE LEFT(Person.LastName, 3) = 'For';

SELECT
	Person.BusinessEntityID,
	Person.FirstName,
	Person.LastName,
	Person.MiddleName
FROM Person.Person
WHERE Person.LastName LIKE 'For%';

