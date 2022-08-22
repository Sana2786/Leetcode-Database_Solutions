#Runtime: 785 ms, faster than 13.85% of MySQL online submissions for Actors and Directors Who Cooperated At Least Three Times.
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3
