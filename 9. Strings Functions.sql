-- strings functions

select length("kamal");

SELECT 
    first_name, LENGTH(first_name) as len
FROM
    employee_demographics
order by len;

SELECT UPPER('kamal');
select lower("KAmal");


select trim("  kamal") as trim;

-- for left trim LTRIM and for right RTRIM


SELECT 
    first_name, left(first_name,4)
FROM
    employee_demographics;
    
    
    
SELECT 
    first_name, RIGHT(first_name, 4)
FROM
    employee_demographics;
    
    
SELECT 
    first_name,
    last_name,
    birth_date,
    SUBSTRING(birth_date, 6, 2) AS birth_month
FROM
    employee_demographics;
    
    
SELECT 
    first_name, REPLACE(first_name, 'a', 'o')
FROM
    employee_demographics;
    
    
select locate("x","alexander");

SELECT 
    first_name,
    last_name,
    CONCAT(first_name," ", last_name) AS full_name
FROM
    employee_demographics;





