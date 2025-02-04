--tasks for sql functions and group by 
create table orders_a (ord_no int, purch_amt decimal(10,2),   ord_date date,   customer_id int,  salesman_id int)
 insert into orders_a values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005),
 (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),
 (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001),
 (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003),
 (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007),
 (70013, 3045.6, '2012-04-25',  3002,  5001)

 select*from orders_a
  select ord_no, sum(purch_amt) as total_purchase_amount from orders_a
  group by ord_no

   select sum(purch_amt) as total_purchase_amount from orders_a

   --task_2

   select avg(purch_amt) as Avg_amount from orders_a
   --task-3
   select count(distinct salesman_id) as salespeople from orders_a
    select distinct salesman_id, count(salesman_id) as salespeople from orders_a 
	group by salesman_id 
	
	--task_4

	select count(customer_id) as number_of_customer from orders_a 
	 --task-5 
	  ----From the following table, write a SQL query to determine the number of customers who 
	  --received at least one grade for their activity.
	  create table  customer_a ( customer_id int, cust_name varchar(30), city varchar(45),  grade int,  salesman_id int)
	  insert into customer_a values(3002, ' Nick Rimando',  'New York', 100, 5001),
	  (3007, 'Brad Davis', 'New York',  200, 5001),
	  (3005, 'Graham Zusi',  'California',   200, 5002),
	  (3008, 'Julian Green', 'London',  300, 5002),
	  (3004, 'Fabian Johnson', 'Paris', 300, 5006),
	  (3009, 'Geoff Cameron',  'Berlin', 100, 5003),
	  (3003, 'Jozy Altidor',  'Moscow', 200, 5007),
	  (3001, 'Brad Guzan', 'London', null, 5005)
	  select *from customer_a
	        select  count(  distinct customer_id) as number_of_customer  from customer_a where grade is not null 

			--task 6 From the following table, write a SQL query to find the maximum purchase amount 

			create table orders_a (ord_no int, purch_amt decimal(10,2),   ord_date date,   customer_id int,  salesman_id int)
 insert into orders_a values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005),
 (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),
 (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001),
 (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003),
 (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007),
 (70013, 3045.6, '2012-04-25',  3002,  5001)

 select*from orders_a

 --From the following table, write a SQL query to find the maximum purchase amount
 select max (purch_amt) as max_amount from orders_a 
  --task -7 From the following table, write a SQL query to find the minimum purchase amount.
  select min (purch_amt) as min_amount from orders_a

  ----task -8From the following table, write a SQL query to find the highest grade of the customers in each city.
  --Return city, maximum grade.   
   create table  customer_m ( customer_id int, cust_name varchar(30), city varchar(45),  grade int,  salesman_id int)
	  insert into customer_m values(3002, ' Nick Rimando',  'New York', 100, 5001),
	  (3007, 'Brad Davis', 'New York',  200, 5001),
	  (3005, 'Graham Zusi',  'California',   200, 5002),
	  (3008, 'Julian Green', 'London',  300, 5002),
	  (3004, 'Fabian Johnson', 'Paris', 300, 5006),
	  (3009, 'Geoff Cameron',  'Berlin', 100, 5003),
	  (3003, 'Jozy Altidor',  'Moscow', 200, 5007),
	  (3001, 'Brad Guzan', 'London', null, 5005)
	  select *from customer_m
		 select city,  max(grade) as maxium_grade from customer_m 
		 group by city
			order by maxium_grade desc
			
			----task --9  From the following table, write a SQL query to find the highest purchase amount ordered by each customer.
			--Return customer ID, maximum purchase amount. 
			create table orders_m (ord_no int, purch_amt decimal(10,2),   ord_date date,   customer_id int,  salesman_id int)
 insert into orders_m values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)

 select*from orders_m 
 select customer_id, max(purch_amt) as maxium_amount  from orders_m 
 group by customer_id
 order by customer_id asc 

 ------task 10  . From the following table, write a SQL query 
 --to find the highest purchase amount ordered by each customer on a particular date. 
 ----Return, order date and highest purchase amount.
  select customer_id, ord_date , max(purch_amt) as highest_purchase_amount from orders_m 
  group by customer_id, ord_date 
  order by customer_id asc

  --------task 11 From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'.
  --Return salesperson ID, purchase amount 
  create table orders_d (ord_no int, purch_amt decimal(10,2),   ord_date date,   customer_id int,  salesman_id int)
 insert into orders_d values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
 select *from orders_d
 select salesman_id, max(purch_amt) as purchase_amount from orders_d 
 where ord_date ='2012-08-17'
  group by salesman_id  

  --task 12---12. From the following table, 
  --write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. 
  --Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.
  create table orders_c (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_c values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from  orders_c 



  select customer_id, ord_date, max(purch_amt) as maxium_purchase_amount from orders_c
   group by customer_id, ord_date
       having max (purch_amt)>2000

	   --task 13  From the following table,
	   --write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) 
	   --by combination of each customer and order date. 
	   --Return customer id, order date and maximum purchase amount.
	    create table orders_e (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_e values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from  orders_e 

   select customer_id, ord_date, max(purch_amt) as maxium_purchase_amount from orders_e
		 group by customer_id, ord_date
		 having max (purch_amt) between 2000 and 6000

--		 ---task 14
--From the following table, write a  SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. 
--Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. Return customer id, order date and maximum purchase amount.
 create table orders_f (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_f values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from  orders_f
select customer_id, ord_date,  max (purch_amt) as maxium_purchase_amount from orders_f
group by customer_id, ord_date
having max(purch_amt) in(2000,3000,5760, 6000)
   
   --task 15
 --   From the following table, write a SQL query to determine the maximum order amount for each customer.
	--The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount.
 create table orders_g (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_g values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from  orders_g
  select customer_id, max(purch_amt) as [maxium purchase amount] from orders_g
  group by customer_id
  having customer_id between 3002 and 3007
  --task16
   --From the following table, write a SQL query to find the maximum order (purchase) amount for each customer.
   --The customer ID should be in the range 3002 and 3007(Begin and end values are included.). 
   --Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.
   create table orders_h (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_h values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from  orders_h
  select customer_id, max(purch_amt) as [maxium purchase amount] from orders_h
  where customer_id between 3002 and 3007
  group by customer_id
  having max(purch_amt)>1000

  --task 17
   --From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. 
   --Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). 
   --Return salesperson id and maximum purchase amount.
    create table orders_j (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_j values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from orders_j
   select salesman_id, max(purch_amt) as [maxium purchase amount] from  orders_j 
   group by salesman_id
   having salesman_id between 5003 and 5008
     
	 --task18

	 select count(ord_no) as [the number of orders] from orders
	 where ord_date='2012-08-17'

--	 --task 19
--From the following table,
--write a SQL query to count the number of salespeople in a city. Return number of salespeople.

create table salesman_a (salesman_id int, name varchar(30),  city varchar(25), commission decimal(10,2))
insert into salesman_a values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London',  0.11),(5006, 'Mc Lyon',  'Paris', 0.14),
(5007, 'Paul Adam',  'Rome',  0.13),(5003, 'Lauson Hen',  'San Jose',  0.12)
select*from salesman_a
 select count(salesman_id) as [the number of salespeople] from salesman_a
   select name from salesman_a where name like '%g'

 --  task 20
 --   From the following table,
	--write a SQL query to count the number of orders based on the combination of each order date and salesperson.
	--Return order date,  salesperson id
	  create table orders_k (ord_no int, purch_amt decimal(10,2),   ord_date date,    customer_id int,  salesman_id int)
 insert into orders_k values(70001, 150.5,   '2012-10-05', 3005,  5002),
 (70009, 270.65,  '2012-09-10',  3001,  5005), (70002, 65.26, '2012-10-05',  3002, 5001),
 (70004, 110.5, '2012-08-17', 3009, 5003),  (70007, 948.5,  '2012-09-10',  3005,  5002),
 (70005, 2400.6, '2012-07-27',  3007 , 5001), (70008, 5760, '2012-09-10',  3002,  5001),
 (70010, 1983.43, '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10',  3009, 5003), (70012, 250.45, '2012-06-27',  3008, 5002),
 (70011, 75.29, '2012-08-17',   3003, 5007), (70013, 3045.6, '2012-04-25',  3002,  5001)
  select *from orders_k
  select salesman_id, ord_date, count(ord_no) as number from orders_k
  group by salesman_id, ord_date
    

	----task 21
	--21. From the following table, write a SQL query to calculate the average product price. Return average product price.
	create table item_mast (PRO_ID int,  PRO_NAME varchar(25),  PRO_PRICE int,    PRO_COM int) 
	insert into item_mast values(101, 'Mother Board',  3200.00, 15),(102, 'Key Board',  450.00, 16),
	(103, 'ZIP drive',  250.00, 14),(104, 'Speaker',  550.00, 16),(105, 'Monitor',  5000.00,  11),
	(106,  'DVD drive',  '900.00',  12),(107, 'CD drive',  800.00, 12),
	(108, 'Printer', '2600.00',  13),(109, 'Refill cartridge', 350.00 ,13),
	(110, 'Mouse',  '250.00', 12)
	select*from item_mast
	select avg(pro_price) as [average product price] from item_mast
	alter table  item_mast
	alter column pro_price decimal(10,2)

	--task__22
	 --From the following table,
	 --write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products.
	 select count(pro_id) as number from item_mast
	 where pro_price >=350
	  --task_23
	   --From the following table,
	   --write a SQL query to compute the average price for unique companies. Return average price and company id.
	   select pro_com as  company_id, avg(pro_price) as  [average price] from item_mast
	   group by PRO_COM 
	   --task 24
	   --24. From the following table,
	   --write a SQL query to compute the sum of the allotment amount of all departments. Return sum of the allotment amount.
	   create table emp_department(DPT_CODE int, DPT_NAME varchar(30),  DPT_ALLOTMENT int)
	   insert into emp_department values(57, 'IT', 65000),(63, 'Finance', 15000),(47, 'HR', 240000),(27, 'RD', 55000),(89, 'QC',  75000)
	   select*from emp_department
	   select sum(dpt_allotment) as [sum of the allotment amount] from emp_department

	   --task 25  From the following table, 
	   --write a SQL query to count the number of employees in each department. Return department code and number of employees.

	  create table emp_details( EMP_IDNO int,  EMP_FNAME varchar(30),  EMP_LNAME varchar(30),     EMP_DEPT int)
	  insert into emp_details values(127323, 'Michale', 'Robbin',  57),
	  (526689,  'Carlos',  'Snares',  63),(843795, 'Enric',  'Dosio', 57),
	  (328717, 'Jhon',  'Snares ',  63),(444527, 'Joseph',  'Dosni', 47),
	  (659831, 'Zanifer',  'Emily', 47),(847674, 'Kuleswar', 'Sitaraman',  57),
	  (748681, 'Henrey', 'Gabriel',  47),(555935,  'Alex', 'Manuel',57),
	  (539569, 'George', 'Mardy', 27),(733843, 'Mario', 'Saule', 63),
	  (631548, 'Alan', 'Snappy', 27),(839139, 'Maria', 'Foster', 57)
	  select*from emp_details

	  select count (emp_idno) as [number of employees], emp_dept as department_code from emp_details 
	  group by emp_dept

















	












































