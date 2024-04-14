-- Create new month columns
SELECT *, MONTH(CreationDate) AS MonthNumber,
MONTHNAME(CreationDate) AS Month
FROM Orders;