/*
    b tree indexes 
	   1) default index
	   2)supports unique condition 
	   3) uses when columns involves following operators
	       <
		   >
		   =
		   >=
           <=
           IN , BETWEEN , IS NULL , IS NOT NULL
	 use when pattern matching select * from tablename where columname Like 's%'
      4) used to build primary key indexes 
	  5) Self balancing tree 
	      select,insert , delete and sequencial access 
		  
	  Drawback copy the column's  all values into tree structure 
    #########################################################################################  
	Hash indexes
	   1)for equality operator (simple comparison =)
	   2)not for range and disequality operators
	   3) larger than btree
	   
	  syntax  
	 create index indexname on table using hash(columnname)  
	 
	 
	 #####################################################################################
	 
	 BRIN -Block range indexes 
	 
	 1) data block -> min to max range
	 2) useful for smaller indexes
	 3) less costly to maintain than btree 
	 4) can be used for larger table 
	 5) use linear sort order
	 
	 ######################################################################################
	 GIN 
	 1)Generalized inverted index
	 2)point to mutilple tuples
	 3)used with jsonb, array type data
	 4)used in full text search
	 5)useful when multiple values stored in a single column
	 
	 #################################################################################
	 GIST Generalized search tree
	 it allows building general tree structure
	 it use full for indexing  geometric data and full text search
	  
    
	

*/

explain select * from products where product_id>5;
explain select * from orders;
create index idx_orders_order_date on orders using hash(order_date);

explain select * from orders where order_date = '1996-07-04';

/*
  explain statement 
     -- execution nodes 
	     - scan type | execution nodes table
	-- every node
	     
		 # cost 
		  
		    start up cost - How much work PostgreSQL has to do before it begins the execution of node
			final cost  - How much work PostgeSQL has to do to provide the last bit of 
			
	    # rows  how many tuples(rows ) the node is expected to provide the final dataset
		#width  how many bits every rows will occupy , as an average



*/
explain select company_name from suppliers
where supplier_id=1
order by company_name;

-- output format explain - json , text ,yaml and xml

-- explain (format) statement
explain (format JSON ) select company_name from suppliers
where supplier_id=1

explain select company_name from suppliers
where supplier_id=1

/*
   [
  {
    "Plan": {
      "Node Type": "Seq Scan",
      "Parallel Aware": false,
      "Async Capable": false,
      "Relation Name": "suppliers",
      "Alias": "suppliers",
      "Startup Cost": 0,
      "Total Cost": 1.36,
      "Plan Rows": 1,
      "Plan Width": 98,
      "Filter": "(supplier_id = 1)"
    }
  }
]

*/

explain (format YAML ) select company_name from suppliers
where supplier_id=1

/*

 Plan: 
    Node Type: "Seq Scan"
    Parallel Aware: false
    Async Capable: false
    Relation Name: "suppliers"
    Alias: "suppliers"
    Startup Cost: 0.00
    Total Cost: 1.36
    Plan Rows: 1
    Plan Width: 98
    Filter: "(supplier_id = 1)

*/

/*
  REINDEX [Verbose | Tablenamespace | concurrently] {index | table | schema | database} name


*/
Reindex (verbose,concurrently) table orders;
reindex (verbose) index idx_orders_custormer_id_order_id;
