#Runtime: 611 ms, faster than 73.72% of MySQL online submissions for Department Highest Salary.
select d.Name as Department, e.Name as Employee, Salary from Department d 
join Employee e
on e.DepartmentId = d.Id
where (e.Salary, e.DepartmentId) in (select max(e.Salary), e.DepartmentId 
from Employee e group by e.DepartmentId)
