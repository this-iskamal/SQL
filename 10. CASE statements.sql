-- case statements


SELECT 
    first_name,
    last_name,
    age,
    CASE
        WHEN age <= 30 THEN 'young'
        WHEN age BETWEEN 21 AND 50 THEN 'Old'
        WHEN age >= 50 THEN 'on Death Door'
    END AS age_bracket
FROM
    employee_demographics;
    
-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10% bonus
    
SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 50000 THEN salary + (salary * 0.05)
        WHEN salary > 50000 THEN salary + (salary * 0.07)
    END AS new_salary,
    case
		when dept_id=6 then salary*.10
    end as bonus
FROM
    employee_salary;
    
select * from employee_salary;
select * from parks_departments;