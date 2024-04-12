select * from orders;
select * from client;

select client.clientid, client.clientname,client.clientdesignation,orders.clientid,
orders.orderid,orders.orderdate, orders.price from client right join orders 
on client.clientid=orders.clientid;

select client.clientid, client.clientname,client.clientdesignation,orders.clientid,
orders.orderid,orders.orderdate, orders.price from client right join orders 
using(clientid);

select client.clientid, client.clientname,client.clientdesignation,orders.clientid,
orders.orderid,orders.orderdate, orders.price from client right outer join orders 
using(clientid);

