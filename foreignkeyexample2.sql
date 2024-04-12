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
		constraint fk_customer foreign key(customer_id) references customers(customer_id) on delete set null
		--default is no action
	    
	);
	
insert into customers(customer_name) values ('Dylan'),('Devendra'),('Mohit');

select * from customers;

insert into contact_info(contact_name,phone,customer_id) values ('developer','123456789',1),
('testing','234567789',2);

select * from contact_info;

delete from customers where customer_id =1;

