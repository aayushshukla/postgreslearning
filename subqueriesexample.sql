/*
   A subquery  or inner query or nested query is query within another query 
   
   subqueries allow us to create complex queries 
   subqueries can nested inside a SELECT ,INSERT , UPDATE or DELETE
   can be also used after FROM and WHERE
   
   it is used for a calculation that provides a value or set of data to be passed into the
   the main query
   
  i) subqueries must be enclosed within parentheses.
   
   SYNTAX
     select columnnames from tablename 
	   where (
	          select columnames from tablename
	         )

   ii)An ORDER BY can not be used within a subquery although the main query can use an ORDER BY
   iii) The GROUP BY can be used to perform same function as the ORDER BY in a subquery
   iv) Subqueries that return more than one rows can only be used with  multivalue operators
       such as IN,EXISTS ,NOT IN , ANY , ALL operator


*/