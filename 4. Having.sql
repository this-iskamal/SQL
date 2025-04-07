-- HAVING v/s WHERE 

select * from employee_demographics;

SELECT 
    gender, AVG(age)
FROM
    employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;


SELECT 
    occupation, AVG(salary)
FROM
    employee_salary
WHERE
    occupation LIKE '%manager%'
GROUP BY occupation
having avg(salary) > 75000;