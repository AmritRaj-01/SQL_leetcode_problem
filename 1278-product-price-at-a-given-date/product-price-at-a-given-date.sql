# Write your MySQL query statement below


-- WITH is called a CTE (Common Table Expression). It creates a temporary table that we can use later in the query.
with table1 as (
select *,rank() over(partition by product_id order by change_date desc) as r
from Products
where change_date <=' 2019-08-16 ')

select product_id,new_price as price
from table1 
where r=1
union 

select product_id,10 as price from Products where product_id not in (select product_id from table1)