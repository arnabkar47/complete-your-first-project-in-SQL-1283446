-- Determine top customer state
SELECT
State,
SUM(TotalDue) AS TotalAmount
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY State
ORDER BY TotalAmount DESC
LIMIT 1