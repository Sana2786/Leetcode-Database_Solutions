#Runtime: 632 ms, faster than 68.13% of MySQL online submissions for The Latest Login in 2020.
SELECT user_id,
       MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id
ORDER BY NULL;
