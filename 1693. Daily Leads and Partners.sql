#Runtime: 473 ms, faster than 87.31% of MySQL online submissions for Daily Leads and Partners.
SELECT date_id,
       make_name,
       COUNT(DISTINCT lead_id) AS unique_leads,
       COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY 1, 2
ORDER BY NULL;
