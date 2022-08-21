#Runtime: 1348 ms, faster than 7.53% of MySQL online submissions for Capital Gain/Loss.
select stock_name, sum(if(operation='sell', price,-price)) as capital_gain_loss
from stocks
group by stock_name
