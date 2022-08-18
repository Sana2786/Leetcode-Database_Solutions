#Runtime: 752 ms, faster than 28.47% of MySQL online submissions for Rising Temperature.
select w1.id
from Weather w1, Weather w2
where w1.Temperature > w2.Temperature
and datediff(w1.recordDate, w2.recordDate) = 1
;
