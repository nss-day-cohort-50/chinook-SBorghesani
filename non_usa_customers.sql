SELECT FirstName || " " || LastName as Full_Name, CustomerId, Country
FROM Customer
WHERE Country not like "usa";