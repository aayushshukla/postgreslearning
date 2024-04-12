create table customers
 (
    customer_id serial primary key,
	customer_name varchar(255) not null
  );
  
  create table contact_info
    (
	   contact_id serial primary key,
	    contact_name varchar(255) not null,
		phone varchar(15),
		customer_id int,
		constraint fk_customer foreign key(customer_id) references customers(customer_id)
		--default is no action
	
	);
	
select * from contact_info;

insert into customers(customer_name) values ('Dylan'),('Devendra'),('Mohit');

select * from customers;

insert into contact_info(contact_name,phone,customer_id) values ('developer','123456789',1),
('testing','234567789',2);

select * from contact_info;

--insert into contact_info(contact_name,phone,customer_id) values ('developer2','123446789',4);
--insert or update on table "contact_info" violates foreign key constraint "fk_customer"

--delete from customers where customer_id=1;
--update or delete on table "customers" violates foreign key constraint "fk_customer" on table "contact_info"

--alter table tablename drop constraint foreign_keyconstraint_name
alter table contact_info drop constraint fk_customer;
	