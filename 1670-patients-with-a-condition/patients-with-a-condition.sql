# Write your MySQL query statement below
select * from patients where conditions like 'DIAB1%' or conditions like '% DIAB1%';
-- % means uske baad kuch bhi ho sakta hai 
-- aur pahle % dene ka matlb aage kuch bhi ho but ek word ke baad me ho ;