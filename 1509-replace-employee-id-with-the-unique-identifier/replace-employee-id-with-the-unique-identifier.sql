# Write your MySQL query statement below
SELECT Employees.name, EmployeeUNI.unique_id  -- or e.name, eu.unique_id   here e and eu is alias(temporoey name )
FROM Employees   -- Employees e
LEFT JOIN EmployeeUNI   -- EmployeeUNI eu
ON Employees.id = EmployeeUNI.id;     -- e.id = eu.id ;