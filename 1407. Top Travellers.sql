#Runtime: 1343 ms, faster than 31.23% of MySQL online submissions for Top Travellers.
SELECT name, IFNULL(SUM(distance),0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC, name ASC
;
