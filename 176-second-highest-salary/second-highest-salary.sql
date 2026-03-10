# Write your MySQL query statement below
select max(salary) as SecondHighestSalary from employee
where salary not in (select max(salary) from employee);

-- here     not in (select max(salary) from employee);  max ko chorkar 2nd maximum ko select karega 