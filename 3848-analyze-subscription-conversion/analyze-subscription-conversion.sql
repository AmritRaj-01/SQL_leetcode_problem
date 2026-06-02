# Write your MySQL query statement below
select u1.user_id,round(avg(u1.activity_duration),2) as trial_avg_duration ,
round(avg(u2.activity_duration),2) as paid_avg_duration 
from UserActivity u1 
inner join UserActivity u2 on u1.user_id=u2.user_id and 
u1.activity_type = 'free_trial' and u2.activity_type = 'paid'
group by u1.user_id having count(u2.activity_type) > 0
order by u1.user_id asc
