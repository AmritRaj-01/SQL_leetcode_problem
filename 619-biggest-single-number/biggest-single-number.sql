# Write your MySQL query statement below
select max(num) as num from 
(select num from MyNumbers group by num having count(num)=1) as new_table;   -- this is a sub query and we always alias the subquery;
