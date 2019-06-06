#Write a SQL query to get the second highest salary from the Employee table.
/*
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
*/

SELECT max(sub.salary) AS  SecondHighestSalary
FROM (select *,  RANK() OVER(ORDER BY salary desc) AS rank
     FROM Employee) sub
WHERE sub.rank = 2    
