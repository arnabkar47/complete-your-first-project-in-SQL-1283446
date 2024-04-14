-- Find top product size sold
SELECT Product.Size,
SUM(OrderItem.Quantity) AS TotalQuantity
FROM OrderItem
LEFT OUTER JOIN Product
ON OrderItem.ProductID = Product.ProductID
GROUP BY Size
ORDER BY TotalQuantity DESC;