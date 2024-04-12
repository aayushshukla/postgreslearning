--start transaction 
-- Begin transaction; or begin; or begin work;
Begin Transaction;-- trasaction will be started and auto commit off 
select * from employee_info;
insert into employee_info(emp_id,emp_name,emp_email,emp_address,emp_city,employee_salary)
values (16,'Doe','doe@infosys.com','hsr bangalore','bangalore',75000);
select * from employee_info;
commit; -- commit transaction , commit work , commit