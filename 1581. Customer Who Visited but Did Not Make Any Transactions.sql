#Runtime: 955 ms, faster than 97.75% of MySQL online submissions for Customer Who Visited but Did Not Make Any Transactions.

select customer_id, count(visit_id) as count_no_trans 
from visits
where visit_id not in (
    select visit_id
    from transactions
)
group by customer_id
