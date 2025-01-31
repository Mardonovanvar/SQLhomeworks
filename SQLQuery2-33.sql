 create table salesman_04(salesman_id int, salesman_name varchar(25), city varchar(20), commission decimal(10,2))
  insert into salesman_04 values (5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
  (5005, 'Pit Alex', 'London', 0.11),(5006, 'Mc Lyon',  'Paris',  0.14),(5007, 'Paul Adam', 'Rome', 0.13),
  (5003, 'Lauson Hen',  'San Jose', 0.12)
   select *from salesman_04
   -------task_6
     select salesman_name , commission from salesman_04
	 -----task 7
	
	create table orders_04 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
	insert into orders_04 values(70001, 150.5,  '2012-10-05', 3005, 5002),(70009, 270.65, '2012-09-10', 3001, 5005),
	(70002, 65.26,  '2012-10-05', 3002,  5001),(70004, 110.5,  '2012-08-17',  3009, 5003 ),
	(70007 , 948.5, '2012-09-10', 3005, 5002),(70005,  2400.6,  '2012-07-27', 3007, 5001),
	(70008, 5760,  '2012-09-10',  3002, 5001),(70010, 1983.43, '2012-10-10', 3004,5006),
	(70003, 2480.4,  '2012-10-10', 3009, 5003),(70012, 250.45, '2012-06-27',  3008, 5002),
	(70011, 75.29,  '2012-08-17', 3003, 5007),(70013, 3045.6, '2012-04-25', 3002, 5001)
	 select *from orders_04
	  select ord_no, purch_amt, ord_date, salesman_id from orders_04
	    --task-8
		select distinct salesman_id from orders_04
		  --------task -9

		  create table salesman_06(salesman_id int, salesman_name varchar(25), city varchar(20), commission decimal(10,2))
  insert into salesman_06 values (5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
  (5005, 'Pit Alex', 'London', 0.11),(5006, 'Mc Lyon',  'Paris',  0.14),(5007, 'Paul Adam', 'Rome', 0.13),
  (5003, 'Lauson Hen',  'San Jose', 0.12)
   select *from salesman_06

   select salesman_name, city  from salesman_06
   where city='paris'

   --task-10

   create table customer_05 (customer_id int,   cust_name varchar(50),    city varchar(30),  grade int, salesman_id int)
    insert into customer_05 values(3002, 'Nick Rimando', 'New York',  100, 5001),(3007, 'Brad Davis', 'New York', 200, 5001),
	(3005, 'Graham Zusi', 'California',  200, 5002),(3008, 'Julian Green', 'London', 300, 5002),
	(3004, 'Fabian Johnson', 'Paris', 300 , 5006),(3009, 'Geoff Cameron',  'Berlin', 100, 5003),
	(3003, 'Jozy Altidor', 'Moscow', 200, 5007),(3001, 'Brad Guzan', 'London',  null, 5005)
	 select* from customer_05
	  select customer_id, cust_name, city, grade, salesman_id 
	  from customer_05
	  where grade='200'
	  ----task 11 -----

create table orders_05 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
	insert into orders_05 values(70001, 150.5,  '2012-10-05', 3005, 5002),(70009, 270.65, '2012-09-10', 3001, 5005),
	(70002, 65.26,  '2012-10-05', 3002,  5001),(70004, 110.5,  '2012-08-17',  3009, 5003 ),
	(70007 , 948.5, '2012-09-10', 3005, 5002),(70005,  2400.6,  '2012-07-27', 3007, 5001),
	(70008, 5760,  '2012-09-10',  3002, 5001),(70010, 1983.43, '2012-10-10', 3004,5006),
	(70003, 2480.4,  '2012-10-10', 3009, 5003),(70012, 250.45, '2012-06-27',  3008, 5002),
	(70011, 75.29,  '2012-08-17', 3003, 5007),(70013, 3045.6, '2012-04-25', 3002, 5001)
	 select *from orders_05
	  select ord_no, purch_amt, ord_date
	  from orders_05
	  where salesman_id= '5001'
	  --task 12
	   create table nobel_win_1 (YEAR INT,  SUBJECT varchar(12), WINNER varchar(25), COUNTRY VARCHAR(20),  CATEGORY VARCHAR(25))
	   insert into nobel_win_1 values(1970,  'Physics',  'Hannes Alfven', 'Sweden',  'Scientist'),
	   (1970,  'Physics', 'Louis Neel', 'France', 'Scientist'),(1970,  'Chemistry',  'Luis Federico Leloir', 'France', 'Scientist'),
	   (1970, 'Physiology',   'Ulf von Euler', 'Sweden', 'Scientist'),
	   (1970,  'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
	   (1970,  'Literature',  'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
	   (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
	   (1970, 'Physiology', 'Julius Axelrod', 'USA',  'Scientist'),
	   (1971,  'Physics',  'Dennis Gabor', 'Hungary', 'Scientist'),
	   (1971,  'Chemistry', 'Gerhard Herzberg',   'Germany', 'Scientist'),
	   (1971,  'Peace',  'Willy Brandt', 'Germany',  'Chancellor'),
	   (1971,  'Literature', 'Pablo Neruda', 'Chile','Linguist'),
	   (1971,  'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
	   (1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
	   (1978, 'Peace', 'Menachem Begin', 'Israel','Prime Minister'),
	   (1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
	   (1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
	   (1987,  'Physiology', 'Susumu Tonegawa',  'Japan',  'Scientist'),
	   (1994,'Economics', 'Reinhard Selten', 'Germany',  'Economist'),
	   (1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
	   (1987, 'Physics', 'Johannes Georg Bednorz', 'LGermany', 'Scientist'),
	   (1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
	   (1987,  'Economics', 'Robert Solow', 'USA', 'Economist'),
	   (1994,  'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')
	   SELECT *FROM nobel_win_1
	  select YEAR, SUBJECT, WINNER
	  FROM nobel_win_1
	  where year='1970'

	  -------task 13----
	  select winner
	  from nobel_win_1
	  where year='1971'
	  --------task_14

	  select year, subject
	  from  nobel_win_1
	  where winner='Dennis Gabor'

	  ----task- 15---
select year, subject, winner, country
from nobel_win_1
 where subject='Physiology' and  year between  '1970' and '1980'
  	   SELECT *FROM nobel_win_1
	   select distinct winner, year chemistry
	   from nobel_win_1
	    

		---task----16
		select year, subject, winner, country
from nobel_win_1
 where subject='Physics' and  year>='1950'
 --------task 17-

		select year, subject, winner, country, category
from nobel_win_1
 where category='prime minister' and winner in( 'Menachem Begin' , 'Yitzhak Rabin') and year>1972
 -----task ----18
 select year, subject, winner, country, category
from nobel_win_1
 where winner like 'louis%' 
    --task------19

	select year, subject, winner, country, category
from nobel_win_1
 where subject='Physics' and  year='1970' 
 union
 select year, subject, winner, country, category
from nobel_win_1
 where subject=' Economics'  and year='1971'
 -----task-20





 select year, subject, winner, country, category
from nobel_win_1
 where subject  not like'%Economics%'  and  subject not like  '%Economics%'  and year='1970'
  -----task----21
 
 select year, subject, winner, country, category
from nobel_win_1
 where subject  like'%Economics%'  and year <='1971'  union  select year, subject, winner, country, category from nobel_win_1

  where  subject  like  '%Peace%'  or year>'1974'
  --task----22

  select year, subject, winner, country, category
from nobel_win_1
 where winner  like 'Johannes Georg Bednorz'



 --task-23

 select year, subject, winner, country, category
from nobel_win_1
 where subject not  like 'p%'

 --------task---24
 select year, subject, winner, country, category
from nobel_win_1
 where year='1970'
 order by 
 case when subject in('Economics' , 'Chemistry') then 1 else 0
 end asc 


 --task 25
  create table item_mast( PRO_ID  int, PRO_NAME  varchar(30), PRO_PRICE decimal(10,2),  PRO_COM int)
insert into item_mast values(101, 'Mother Board', 3200.00,  15),(102, 'Key Board', 450.00,  16),
(103,  'ZIP drive', 250.00,  14),(104,  'Speaker', 550.00,  16),
(105,  'Monitor', 5000.00, 11),(106,  'DVD drive', 900.00, 12),
(107,  'CD drive', 800.00, 12),(108,  'Printer', '2600.00', 13),
(109,  'Refill cartridge',  350.00,  13),(110, 'Mouse',  '250.00', 12)
select *from  item_mast
select pro_id, pro_name, pro_price,  pro_com 
from item_mast
 where PRO_PRICE between '200' and '600'
  order by pro_com asc

 --task 26
  select avg(pro_price)
  from nozima
item_mast
  where PRO_COM='16'
   --task 27
    select pro_name as 'Item Name' ,  pro_price as 'Price in Rs'
	from item_mast 

	-----task--28

	select pro_name, pro_price
	from item_mast
	where pro_price>='250'
	order by  pro_price  desc

	--task_29

	select avg(pro_price), pro_com
	 from item_mast
	 group by pro_com
	  --task -30

	  select pro_name,  pro_price
	  from item_mast
	  where pro_price=(select min(pro_price) from item_mast)
	    ----task--31

		create table emp_details(EMP_IDNO int,  EMP_FNAME varchar(50),   EMP_LNAME varchar(30),   EMP_DEPT int)
		insert into emp_details values(127323, 'Michale',  'Robbin', 57),
		(526689,  'Carlos', 'Snares',   63),(843795, 'Enric',  'Dosio',  57),
		(328717,  'Jhon', 'Snares', 63),(444527,  'Joseph',  'Dosni', 47),
		(659831, 'Zanifer',  'Emily', 47),(847674, 'Kuleswar', 'Sitaraman',  57),
		(748681,  'Henrey', 'Gabriel', 47),(555935,  'Alex', 'Manuel', 57),
		(539569,  'George', 'Mardy', 27),(733843, 'Mario',  'Saule', 63),
		(631548, 'Alan', 'Snappy',  27),(839139,  'Maria',  'Foster',  57)
		select *from emp_details
		 select  distinct emp_lname
		 from emp_details

		 --task_32

		 select EMP_IDNO,  EMP_FNAME,   EMP_LNAME,   EMP_DEPT
		 from emp_details
		 where emp_lname like '%Snares%'
		  --task ----33
 select EMP_IDNO,  EMP_FNAME,   EMP_LNAME,   EMP_DEPT
		 from emp_details
		 where emp_dept='57'

		












	  
	 













	   









	   











     


	

	   








    
















