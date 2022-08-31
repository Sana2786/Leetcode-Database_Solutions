#Runtime: 492 ms, faster than 9.72% of MySQL online submissions for Not Boring Movies.
select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC
