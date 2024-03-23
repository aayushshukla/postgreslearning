create table employees
(
 empid int NOT NULL,
 emp_name varchar(255) NOT NULL,
 emp_email varchar(255) not null,
 emp_address text

);
-- select columname1,colname2 from tablename where condition
-- select * from tablename 
select * from employees;

--alter add column , remove column, rename a table
-- change datatype of a column , add or remove constrain in a column
-- set a default value 

-- add column to a table
-- alter table tablename add column columnname datatype  constrainname
alter table employees add column emp_city varchar(150) ;

alter table employees add column emp_state varchar(150);

-- remove column from a table
-- alter table tablename drop column column_name 
alter table employees drop column emp_state;

--rename a column
--alter table tablename rename column oldname to newname
alter table employees rename column empid to emp_id;

--add / remove default 
-- alter table tablename alter column columnname set default value / drop default

alter table employees alter column emp_city set default 'delhi';

-- insert statement 
-- insert into tablename values(v1,v2..vn) if we are going to add value for each column
insert into  employees values(1,'vaibhav','vaibhav@edgeverve.com','123 xyz','bangalore');
-- insert into table(column1,column2,..columnN) values (v1,v2...,vn)

insert into employees(emp_id,emp_name,emp_email,emp_city) values (3,'yash','yash@infosys.com','pune');

--multiple rows at time
--insert into tablename values(v1,v2,v3..vn),(v11,v12,v13..v1n),(v21,v22..vnn)
insert into employees values
(4,'dylan','dylan@gmail.com','234 xyz','pune'),
(5,'devendra','devenfra@yahoo.com','456','kolkata');

alter table employees alter column emp_city drop default;
insert into employees values
(6,'hariprasad','dylan@gmail.com','234 xyz');

--alter table tablename alter column columnname set not null / drop not null
alter table employees alter column emp_email drop not null;
insert into employees(emp_id,emp_name,emp_city) values (9,'ashwini','pune');

-- rename table
-- alter table tablename  rename to  new tablename
alter table employees rename to employee_info;

select * from employee_info;
--show tables in a database 

select * from pg_catalog.pg_tables;

select * from pg_catalog.pg_tables where schemaname !='pg_catalog' and 
schemaname !='information_schema';

--copy table data
-- create table copytablename as table originaltablename
create table copy_employee as table employee_info;

select * from copy_employee;

--create temporary table
-- create temporary table tablename (col1,col2...coln)
create temporary table temp_table(vid int);

select * from temp_table;








