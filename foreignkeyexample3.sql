drop table if exists contact_info;
drop table if exists customers;

create table customers
 (
    customer_id serial primary key,
	customer_name varchar(255) not null
  );
  -- action set null automatically set null to the foreign key columns in the referencing rows of child table
  -- when refrenced rows in the parent is deleted or updated
  create table contact_info
    (
	   contact_id serial primary key,
	    contact_name varchar(255) not null,
		phone varchar(15),
		customer_id int,
		constraint fk_customer foreign key(customer_id) references customers(customer_id) on delete cascade 
		--default is no action
	    
	);
	
insert into customers(customer_name) values ('Dylan'),('Devendra'),('Mohit');

select * from customers;

insert into contact_info(contact_name,phone,customer_id) values ('developer','123456789',1),
('testing','234567789',2);

select * from contact_info;

delete from customers where customer_id =1;

Consider two tables, employees and departments, with the following columns:

/*employees table: employee_id (primary key), first_name, last_name, department_id
(foreign key referencing departments table).
departments table: department_id (primary key), department_name.
Write a SQL query to create these tables with foreign key constraints, 
ensuring referential integrity between the department_id column in the employees 
table and the department_id column in the departments table.

/*Extend the previous scenario with a new table named projects that has 
columns project_id (primary key), project_name, and department_id (foreign key referencing departments table). 
Write a SQL query to create this new table with a foreign key constraint on department_id.*/
*/
create table department
(
    dept_id serial primary key,
    dept_name varchar(225)
);
create table employees
(
    emp_id serial primary key,
    f_name varchar(225),
    l_name varchar(225),
    dept_id int,
    constraint dept_fk foreign key (dept_id) references department(dept_id) 
    on delete cascade on update cascade
);
create table projects
(
    project_id serial primary key,
    project_name varchar(225),
    dept_id int,
    constraint dept_fk1 foreign key (dept_id) references department(dept_id) 
    on delete cascade on update cascade
)
