create table client
 (
   clientid int primary key,
   clientname varchar not null,
   clientdesignation varchar not null,
   clientsalary int
 
 );
 
 create table orders
   (
      orderid int primary key,
	  clientid int not null,
	  orderdate Date not null,
	  price int 
   
    );
	
insert into client values (1,'Ashwini','HR',100000),
(2,'Akshay','SE',200000),
(3,'Yash','ST',150000),
(4,'Dylan','DA',250000);

select * from client;
insert into orders values (101,1,'2024-04-10',30000),
(102,3,'2024-03-10',50000),
(103,5,'2023-05-11',60000);

select * from orders;

select client.clientid, client.clientname,client.clientdesignation,
orders.orderid,orders.orderdate, orders.price from client left join orders 
on client.clientid=orders.clientid;

select client.clientid, client.clientname,client.clientdesignation,
orders.orderid,orders.clientid,orders.orderdate, orders.price from client left outer join orders 
on client.clientid=orders.clientid;

--show unmatched data
select client.clientid, client.clientname,client.clientdesignation,
orders.orderid,orders.clientid,orders.orderdate, orders.price from client left outer join orders 
on client.clientid=orders.clientid where orderdate is null;

select client.clientid, client.clientname,client.clientdesignation,
orders.orderid,orders.clientid,orders.orderdate, orders.price from client left outer join orders 
on client.clientid=orders.clientid order by price DESC nullS last ;

--using clause shorthannd that allows you to take advantage of specific situation where both sides of
--join use  the same name
select * from client left join orders using(clientid);

select * from client left join orders using(clientid) where clientsalary<=150000;

-- create table clientinfo  having feilds contactid, mobilenumber address 
-- show the following detail client name , orderid , orderdate , mobileno 

create table clientinfo(
    contactid int primary key,
    mobile_no int not null,
    addr varchar
);
insert into clientinfo values(1,12345,'pune'),(2,23456,'delhi'),(3,4567,'tamil'),(5,3479,'mumbai');
select * from clientinfo;
--join multi tables 

select  client.clientname,clientinfo.mobile_no,
orders.orderid,orders.orderdate  from client left outer join orders 
on client.clientid=orders.clientid
left join clientinfo on  client.clientid=clientinfo.contactid;
