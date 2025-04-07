-- Group By

SELECT 
    *
FROM
    employee_demographics;
    
    
SELECT 
    gender, AVG(age) AS average_age, max(age),min(age),count(age)
FROM
    employee_demographics
GROUP BY gender;


-- order by

SELECT 
    *
FROM
    employee_demographics
ORDER BY gender, age DESC;





