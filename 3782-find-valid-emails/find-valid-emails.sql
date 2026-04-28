# Write your MySQL query statement below
-- select user_id,email from users 
-- -- where regexp_like(email,'[a-zA-Z0-9_]+@[a-zA-Z]+\.com$')
-- where regexp_like(email, '^[a-zA-Z0-9_]+@[a-zA-Z0-9.-]+\.com$')

-- order by user_id;


SELECT user_id, email
FROM Users
WHERE REGEXP_LIKE(
    email,
    '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
)
ORDER BY user_id;


