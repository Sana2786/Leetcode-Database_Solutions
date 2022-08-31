#Runtime: 525 ms, faster than 25.01% of MySQL online submissions for Exchange Seats.
SELECT ( CASE
            WHEN id%2 != 0 AND id != counts THEN id+1
            WHEN id%2 != 0 AND id = counts THEN id
            ELSE id-1
        END) AS id, student
FROM seat, (select count(*) as counts from seat) 
AS seat_counts
ORDER BY id ASC
