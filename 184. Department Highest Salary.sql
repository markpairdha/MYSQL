# Write your MySQL query statement below

SELECT d.Name AS Department,e.Name AS Employee,e.Salary
FROM Employee AS e,Department AS d 
WHERE e.DepartmentId = d.Id AND 
e.Salary = (SELECT MAX(t.Salary) FROM Employee AS t
            WHERE t.DepartmentId = d.Id);



# Write your MySQL query statement below
SELECT Department.Name AS Department,Employee.Name AS Employee,Employee.Salary
FROM Employee JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE (Employee.DepartmentId,Salary) IN
(SELECT DepartmentId,MAX(Salary) FROM Employee GROUP BY DepartmentId)
