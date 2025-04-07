-- subqueries


SELECT 
    *
FROM
    employee_demographics
WHERE
    employee_id IN (SELECT 
            employee_id
        FROM
            employee_salary
        WHERE
            dept_id = 1);
            
            
SELECT 
    first_name, salary,
    (select avg(salary) from employee_salary)
FROM
    employee_salary;
    
    
    
SELECT 
    gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM
    employee_demographics
GROUP BY gender;



SELECT 
    AVG(max_age)
FROM
    (SELECT 
        gender, AVG(age), MAX(age) as max_age, MIN(age), COUNT(age)
    FROM
        employee_demographics
    GROUP BY gender) AS AGG_table
;

