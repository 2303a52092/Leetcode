-- # Write your MySQL query statement below


SELECT p.project_id,
       ROUND(AVG(u.experience_years), 2) AS average_years
FROM Project p
INNER JOIN Employee u
  ON p.employee_id = u.employee_id
GROUP BY p.project_id;