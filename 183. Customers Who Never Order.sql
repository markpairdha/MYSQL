# Write your MySQL query statement below
/* 
SELECT c.Name AS Customers 
FROM Customers AS c
WHERE Id NOT IN (SELECT CustomerId FROM Orders)
*/

SELECT Name AS Customers 
FROM Customers AS c LEFT JOIN Orders AS o
ON o.CustomerId = c.Id 
WHERE o.Id IS NULL;




# Write your MySQL query statement below
SELECT c.Name AS Customers 
FROM Customers AS c
WHERE Id NOT IN (SELECT CustomerId FROM Orders)
