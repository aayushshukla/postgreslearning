select * from order_details;

select * from customers;
select * from products;
select * from employees;
select * from categories;
-- Show productnames that have unit price more the average unit price  and not discontinued 
-- subquery with single value or single row return
select product_name,
   unit_price 
   from products
 where unit_price >(select 
					   avg(unit_price) 
					 from  products)
 and discontinued=0
ORDER BY product_name;
-- always start writing subquery first 

--Get first name and last name of all the employees who are younger than Michael 
select first_name,last_name,birth_date from employees
    where birth_date <
  (select birth_date from employees where first_name='Michael')
  
--IN Operator what if our subqueries return multiple records
-- Show customer names and coutry those who are not shipping to usa,germany ,france and brazil
select contact_name,country from customers
  where customer_id 
IN
	(select customer_id from orders
	 where ship_country!='Germany' and ship_country!='USA'  
	 and ship_country!='France'
	 and ship_country!='Brazil')
	 
select * from suppliers;
select * from region;
select * from employee_territories;

-- waq to show all employees last_name , firstname ,country where territory id is less than 45839

select first_name,last_name,country 
from employees where employee_id
in
(select employee_id from employee_territories 
 where territory_id::integer<45839);
 
 /*
    correlated subqueries are used for row by row processing 
	each subquery excecute once for every row of the outerquery
    correlated subquery is evaluted once for each row process by the outer query statement 
	
	----nested subqueries vs correlated -----
	nested subquery the inner SELECT query runa first and executed once returning values to used
	by main query
	
	A correlated subquery executes once for each candidate row considered by outer query.
	Inner query is driven by outer query
	
	PostgreSQL evaluates from inside to outside
 
 */
 
 select  pd1.product_name,
         pd1.units_on_order,
		 pd1.unit_price
		 from products pd1
where  pd1.units_on_order > (
         
	      select min(units_on_order) from products pd2
          where pd1.unit_price =pd2.unit_price

      )