/*
   stages of sql statement execution
   
   select * from tablename
   
   parser  handles the texual form of the statement (the SQL Text)
		   varifies whether it is correct or not 
		   disassembles info into table, columns , clauses etc 


   rewriter  applying any syntactic rules to rewrite the original sql statement
   
   optimizer finding the fastest path to the data that statement needs
   
			   i) what to use to access data
			   ii) get data as quickly as possible 

			i) The cost is everything 
				for every operation in postgreSQL there is cost
				2 operation = 2* cost = total cost 

				Choses one with lowest cost 

		   ii) threads >=9.6

		   iii) Nodes 

			 1) select * from table order by columnname
			  i) get all data              node1
			   ii) sort data(order by)      node2

			 2) nodes are stackable 
				  Parent Node
					Child Node 1
					  Child Node 2

			3) Nodes are available for  every operation and every access method 

		   iv) Node Types 
				  Sequencial Node
				  Index Node
				  Join Node

				- Sequencial Scan
				- Index Scan -Indexes Only Scan  and Bitmap Index Scan
				- Nested Loop , Hash Join  and Merge Join 
				- The gather and merge parallel node
		   
   
   executor  responsible for effectively storing and accessing the data g
             get physical access to the data 


*/

select * from pg_am;

