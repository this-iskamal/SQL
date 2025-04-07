 -- CTEs - common table expressions
 
 with cte_example (Gender, AVG_SAL,MAX_SAL,MIN_SAL,COUNT_SAL) as
 (SELECT 
    gender, AVG(salary) , MAX(salary) , MIN(salary) , COUNT(salary) 
FROM
    employee_demographics dem
        JOIN
    employee_salary sal ON dem.employee_id = sal.employee_id
GROUP BY gender
)

select * from cte_example;



with CTE_Example as (
	select employee_id,gender,birth_date
    from employee_demographics
    where birth_date>"1985-01-01"
),
CTE_Example2 as(
	select employee_id,salary
    from employee_salary
    where salary > 50000
)
select * 
from CTE_Example cte1
join CTE_Example2 cte2
	on cte1.employee_id=cte2.employee_id;

