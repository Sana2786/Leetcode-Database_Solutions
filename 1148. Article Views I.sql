#Runtime: 615 ms, faster than 38.35% of MySQL online submissions for Article Views I.
select distinct author_id as id
from Views
where author_id = viewer_id
order by author_id asc
