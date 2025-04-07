-- LIMIT & ALIASING

SELECT 
    *
FROM
    employee_demographics
ORDER BY age DESC
LIMIT 3;


-- ALIASING

SELECT 
    gender, AVG(age) as average_age
FROM
    employee_demographics
GROUP BY gender
having average_age > 40;

