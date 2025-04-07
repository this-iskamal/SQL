 -- unions 
 
 SELECT 
    first_name, last_name
FROM
    employee_demographics 
UNION ALL SELECT 
    first_name, last_name
FROM
    employee_salary;
    
    
SELECT 
    first_name, last_name, 'Old' AS label
FROM
    employee_demographics
WHERE
    age > 50 
UNION SELECT 
    first_name, last_name, 'Highly Paid' AS label
FROM
    employee_salary
WHERE
    salary > 70000
    ;
