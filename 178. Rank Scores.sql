#Runtime: 345 ms, faster than 57.59% of MySQL online submissions for Rank Scores.
select score, dense_rank() over(order by score desc) as 'rank'
from Scores
order by score desc
