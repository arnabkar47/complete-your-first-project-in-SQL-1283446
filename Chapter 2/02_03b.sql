-- Determine which sales people made no sales
SELECT
Salesperson.SalespersonID,
Salesperson.FirstName,
Salesperson.LastName
FROM Salesperson
LEFT OUTER JOIN Orders
ON Salesperson.SalespersonID =
Orders.SalespersonID
WHERE Orders.SalespersonID IS NULL