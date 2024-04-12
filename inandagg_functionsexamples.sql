-- In operators allow us to check whether a  value matches with any values in a list
--  IN (v1,v2,..vn)

select * from employee_info;

select emp_name as employeename ,emp_city as city from employee_info where emp_city in ('delhi','pune');

--OR 
-- select * from table where condition1 or condition2 or condition3.. or conditionN
select emp_name as employeename , emp_city as city from employee_info where emp_city ='delhi' or
emp_city='pune' order by emp_city;

select * from employee_info where emp_name in ('yash','dylan','aayush');

-- not in 

select * from employee_info where emp_name not in ('yash','dylan','aayush');

--Like operator is used in where clause to search for a specific pattern in a column
-- % represent 0 or more character
-- _ represent single character
-- {} represent any escaped character
-- show all the names that starts with character d
select emp_name as employeename from employee_info where emp_name like 'd%';
-- show all the names that ends with a 
select emp_name as employeename from employee_info where emp_name like '%a';
-- select all the name that contains n in the name 
select emp_name as employeename from employee_info where emp_name like '%n%';
-- show all the name of city having second character as u and city is p _une
select emp_city as city from employee_info where emp_city like 'p_ne';
-- show all the name of city having second character as u
select emp_city as city from employee_info where emp_city like '_u%';
-- show name of all the employees that start with "d" and are atleast 6 character in length
select emp_name as employeename from employee_info where emp_name like 'd_____%' 

select emp_name as employeename from employee_info where emp_name like '%v' or emp_name like '%n';

--avg() , max(),min(),sum(),count()
alter table employee_info add column employee_salary int;

update employee_info set employee_salary=60000 where emp_id in (5,6);

-- select columnname, agg_function(columname) from tablename group by columnname

--show average salary of employees
select avg(employee_salary) avg_emp_salary from employee_info;

select round(avg(employee_salary),2 )avg_emp_salary from employee_info;
-- show max salary of employees
select max(employee_salary) max_emp_salary from employee_info;
--show min salary of employees
select min(employee_salary) min_emp_salary from employee_info;
--show total no of employees
select count(employee_salary) no_of_employees from employee_info;
-- show total expense on salary of employees
select sum(employee_salary) sum_salary from employee_info;

select sum(employee_salary)/ count(employee_salary) avg_emp_salary from employee_info;