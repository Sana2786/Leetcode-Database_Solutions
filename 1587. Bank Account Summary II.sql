#Runtime: 990 ms, faster than 41.17% of MySQL online submissions for Bank Account Summary II.
SELECT u.name AS NAME,SUM(t.amount) AS BALANCE
FROM Transactions t LEFT JOIN Users u
ON u.account = t.account
GROUP BY u.account 
HAVING SUM(t.amount)>10000;
