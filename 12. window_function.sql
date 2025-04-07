-- window function 


SELECT 
    gender, AVG(salary)
FROM
    employee_demographics AS dem
        JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id
GROUP BY gender;


SELECT 
    dem.first_name,dem.last_name,gender,salary, sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
FROM
    employee_demographics AS dem
        JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;
    
    
    
SELECT 
    dem.employee_id ,dem.first_name,dem.last_name,gender,salary, 
    row_number() over(partition by gender order by salary desc) as row_num,
    rank() over(partition by gender order by salary desc) as rank_num,
    dense_rank() over(partition by gender order by salary desc) as dense_rank_num
FROM
    employee_demographics AS dem
        JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id;