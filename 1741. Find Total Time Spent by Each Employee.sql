#Runtime: 1217 ms, faster than 11.33% of MySQL online submissions for Find Total Time Spent by Each Employee.
SELECT event_day AS day, emp_id, SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY event_day, emp_id;
