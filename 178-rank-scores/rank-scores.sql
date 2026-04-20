SELECT score,DENSE_RANK() OVER (ORDER BY score DESC) AS `rank`  
 -- in rank ` ` this  sign because rank is a keyword in sql
FROM Scores
ORDER BY score DESC;
