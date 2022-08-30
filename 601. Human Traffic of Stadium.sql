#Runtime: 437 ms, faster than 45.83% of MySQL online submissions for Human Traffic of Stadium.
WITH busy_visits
AS (
    SELECT *,
        row_number() OVER (
            ORDER BY s.id
            ) AS row_num
    FROM Stadium s
    WHERE s.people >= 100
    ),
islands
AS (
    SELECT *,
        bv.id - bv.row_num AS island_number
    FROM busy_visits bv
    ),
big_enough_islands
AS (
    SELECT ii.island_number,
        count(*) AS island_size
    FROM islands ii
    GROUP BY ii.island_number
    HAVING island_size >= 3
    )
SELECT i.id,
    i.visit_date,
    i.people
FROM islands i
INNER JOIN big_enough_islands bei ON i.island_number = bei.island_number
ORDER BY i.visit_date;
