SELECT employee_id,(employee_id mod 2 AND (name not like "m%"))*salary  AS bonus FROM Employees  ORDER BY employee_id;
