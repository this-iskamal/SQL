-- temporary tables

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie_name varchar(100));

insert into temp_table 
values("kamal","gautam","Hami Teen Bhai");


select * from temp_table;


create temporary table salary_over_50k
select * from employee_salary
where salary > 50000;

select * from salary_over_50k;
