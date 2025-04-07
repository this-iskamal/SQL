-- where clause

SELECT 
    *
FROM
    employee_demographics
WHERE
    birth_date >= "1962-08-28";
    
    
-- logical operator ( AND OR NOT)

SELECT 
    *
FROM
    employee_demographics
WHERE
    birth_date >= '1988-08-28'
        OR NOT gender = 'Male';
        
SELECT 
    *
FROM
    employee_demographics
WHERE
    (first_name = 'Leslie' AND age = 44)
        OR age > 55;
        
        
-- like statement ( % and _)
 SELECT 
    *
FROM
    employee_demographics
WHERE
    first_name LIKE 'a___%';
    
select * from employee_demographics where birth_date like "1988%";
 
 
        
