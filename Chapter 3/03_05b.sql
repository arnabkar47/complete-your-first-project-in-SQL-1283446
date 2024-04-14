-- Calculate repeat customer rate
WITH Repeat_Customer AS
(
  SELECT
  CustomerID as Repeat_Cus
  From Orders
  GROUP BY CustomerID
  HAVING COUNT(OrderID) > 1
)
SELECT
(COUNT(DISTINCT Repeat_Cus)/COUNT(DISTINCT CustomerID))*100 as CustomerRepeatRate
FROM Orders
LEFT OUTER JOIN Repeat_Customer
ON Orders.CustomerID = Repeat_Customer.Repeat_Cus