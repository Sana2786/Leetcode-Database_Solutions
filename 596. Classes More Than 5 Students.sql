#Runtime: 561 ms, faster than 15.00% of MySQL online submissions for Classes More Than 5 Students.
select class 
from courses
group by class having count(distinct student) > 4;
