# Write your MySQL query statement below
SELECT MAX(Employee.Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Employee.Salary) FROM Employee);
