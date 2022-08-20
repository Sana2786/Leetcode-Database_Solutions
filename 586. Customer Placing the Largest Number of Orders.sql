#Runtime: 602 ms, faster than 46.40% of MySQL online submissions for Customer Placing the Largest Number of Orders.
select customer_number from orders 
group by 1
order by count(distinct order_number) desc limit 1;
