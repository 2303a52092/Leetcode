# Write your MySQL query statement below
-- select distinct email from Person;

-- SELECT DISTINCT email 
-- FROM Person;
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

