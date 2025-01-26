create table customer_1 ( customer_id int, cust_name varchar(55), city varchar(25),grade int, salesman_id int)
insert into customer_1 values(3002, 'Nick rimando', 'NEw york', 100, 5001),
(3007, 'Brad davis', 'New york', 200,5001),
(3005, 'Graham Zusi', 'California', 200,5002),
(3008, 'Julian green', 'London', 300,5002),
(3004, 'Fabian Johnson', 'Paris', 300,5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow',200,5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select *from customer_1
  ---------task 10
 select customer_id, cust_name, city, grade, salesman_id
 from customer_1
 where cust_name like '%n'
 -----task 11
  select customer_id, cust_name, city, grade, salesman_id
  from customer_1
  where cust_name like 'N%__k%'
    
	select customer_id, cust_name, city, grade, salesman_id
	from customer_1
	where cust_name like 'n%' and  substring(cust_name, 4,1)='k' 
	--------
	select customer_id, cust_name, city, grade, salesman_id 
	 from customer_1
	 where cust_name like 'F%' and substring(cust_name, 6,1)='n'
	 --------
	  select customer_id, cust_name, city, grade, salesman_id
	  from customer_1
	  where cust_name like 'B%__d%'

	  
	 