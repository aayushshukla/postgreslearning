select * from employee_info;

--update tablename set columnname=value,col2=value  where condition

update employee_info set emp_address='fisheman island grand lane' where emp_id=3;

update employee_info set emp_email='ashwini@infosys.com',emp_address='skypiea' where emp_name='ashwini';

--delete from tablename where condition 
delete from employee_info where emp_id=7;

delete from employee_info where emp_id=1;

-- alter table tablename add primarykey(col1,col2..coln)
alter table employee_info add primary key(emp_id);

insert into employee_info values(2,'vaibhav','abc@gmail.com','wano','pune');

-- create table tablename (col datatype primary key ,col2 datatype ,....)
-- create table tablename (col datatype , col2 datatype, primary key(col1,col2))

create table order_product (order_id int , itemid serial ,item_name varchar not null , quantity int ,
					price  dec(6,2),primary key(order_id,itemid));
					
insert into order_product(order_id,item_name,quantity,price) values (101,'call of duty',1,500.50);

select * from order_product;

insert into order_product(order_id,item_name,quantity,price) values 
(101,'call of duty',1,500.50),
(102,'call of duty modern warfare',1,900.50)
returning *;

select * from employee_info;
-- alter table tablename drop contraint primary_key_constraint
