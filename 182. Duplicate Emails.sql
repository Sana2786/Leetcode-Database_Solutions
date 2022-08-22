#Runtime: 380 ms, faster than 65.99% of MySQL online submissions for Duplicate Emails.
select email 
from person
group by email having count(email)>1;
