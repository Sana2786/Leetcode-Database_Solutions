#Runtime: 504 ms, faster than 80.67% of MySQL online submissions for Game Play Analysis I.
select player_id, min(event_date) as first_login
from Activity 
group by player_id
