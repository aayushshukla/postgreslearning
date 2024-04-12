begin;
select * from employee_info;
insert into employee_info(emp_id,emp_name,emp_email,emp_address,emp_city,employee_salary)
values (17,'Doe1','doe@infosys.com','hsr bangalore','bangalore',75000);
savepoint sp1;
insert into employee_info(emp_id,emp_name,emp_email,emp_address,emp_city,employee_salary)
values (18,'aayush','aayush@infosys.com','hsr bangalore','bangalore',75000);
savepoint sp2;
insert into employee_info(emp_id,emp_name,emp_email,emp_address,emp_city,employee_salary)
values (19,'sriyash','sriyash@infosys.com','delhi','delhi',85000);
-- savepoint savepointname
savepoint sp3;
select * from employee_info;
--rollback to savepoint savepointname
rollback to savepoint sp1;
commit;
-- release savepoint savepoint name
--release savepoint sp1; it should be inside transaction block 

