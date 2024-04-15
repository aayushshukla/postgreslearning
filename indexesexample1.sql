/*

   1)Index is structure relation 
   2) Index help in improving the reterival of data in our database
   3) Index tuple point to the table page where tuples is stores (tuple= rows)
   4) Index is fundamental for having good performance 
   5) An index is data structure that allows faster access to the table so that specific rows can be found
      quickly.
	  
   6) adding indices may imporove the speed of data acess but they add cost to the database
   7) without affecting any of the data we can create and drop the table
   
   When to use  
     a column contains wide range of values
	 a column does not contain large no of null values
	 a column or more than column are frequently used together in a where clause or join
	 
  When not to use
     table small
	 a column are not ofter used as condition in query
	 a column or more is updated frequently
	 
	 if we use with insert and update it slows down that data input
	 
	 Type of indexes 
	   i) Hash inddex
	   ii) B-tree index
	   iii) GIN index - Generalized Inverted indexes
	   iv) GiST index - Generalized Search Tree
	   v) SP-GiST index- Space Partitioned Generalized search tree
	   vi) BRIN index- Block Range Index
	 

 -------Create Index ------------------------------------
   -Put on a table column or columns
   -Max we can index 32 column in PostgreSQL 
   -Index   - create index on values of column or columns
    
	UniqueIndex- create index only on unique values of column or columns
	
	naming convention
	
	Index =  idx_tablename_columnname
	Uniqueindex = idx_u_tablename_columnname
	
	
	create index indexName on tablename (col1,col2,...coln)
	
	create index indexName on tablename [using method]
	(
	   column1,column2..[ASC|DESC][NULLS{first|last]
	 )
	
	unique index
	create unique index indexName on tablename (col1,col2,...coln)


*/

-- create index on ordertable on basis order_Date
create index idx_orders_order_date on orders (order_date)

create index idx_orders_custormer_id_order_id on orders(customer_id,order_id);

--create unique index 
create unique index idx_u_products_product_id on products(product_id);

--Drop index
drop index [CONCURRENTLY | IF EXISTS ] indexname  [Cascade| RESTRICT ]

/*
   Cascade - if the index has dependent object we can use cascade option to automatically drop these
   objects and all objects that depends on those object
   
   Restrict - it tell to refuse to drop the index if any object is depend on it .By DEFAULT it 
   is restrict
  
   CONCURRENTLY it tell postresql to acquire lock on the table and block other access until the
   index removal is complete.

*/

drop index idx_products_product_id;
select * from products;
insert into products(product_id,product_name,discontinued) values (1,'coffee',1);


/*
  list of all indices
   
*/
select * from pg_indexes where schemaname='public' order by tablename, indexname

/*
  list of all the indices of a table
*/
select * from pg_indexes  where tablename='products' 
--size of table index
select pg_size_pretty(pg_indexes_size('products'))

select count(*) from products;

create index idx_suppliers_region on suppliers(region);
create  unique index idx_u_suppliers_supplier_id on suppliers(supplier_id);
select pg_size_pretty(pg_indexes_size('suppliers'))

explain select * from products where product_id >5 or supplier_id <2; 