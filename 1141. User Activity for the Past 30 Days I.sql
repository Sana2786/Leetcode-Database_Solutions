#Runtime: 363 ms, faster than 99.07% of MySQL online submissions for User Activity for the Past 30 Days I
select activity_date as day, count(distinct user_id) as active_users 
from Activity
where activity_date between date_add('2019-07-27', interval -29 day) and '2019-07-27'
group by  activity_date
