--full join or full outer join is used to return all records when there is a match in a lefttable or
--right table records.
--it will be combine outcome of right join and left join

select client.clientid,client.clientname,orders.orderid,orders.clientid, orders.orderdate
from client full  outer join orders using(clientid);

select client.clientid,client.clientname,orders.orderid,orders.clientid, orders.orderdate,clientinfo.addr
from client full  join orders on client.clientid = orders.clientid
 full join clientinfo on client.clientid=clientinfo.contactid;