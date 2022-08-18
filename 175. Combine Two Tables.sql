#Runtime: 360 ms, faster than 82.30% of MySQL online submissions for Combine Two Tables
SELECT FirstName, LastName, City, State
FROM Person LEFT JOIN Address
ON Person.PersonId = Address.PersonId
