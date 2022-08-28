#Runtime: 337 ms, faster than 78.88% of MySQL online submissions for Nth Highest Salary.
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary FROM Employee ORDER by Salary DESC LIMIT M, 1
  );
END
