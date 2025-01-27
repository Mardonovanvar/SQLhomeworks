

	 create table task_19 (col_5 varchar(120))
insert into task_19 values('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')
select *from task_19
 select col_5
 from task_19
 where col_5 not like '%!%%' escape '!'
  select col_5 from task_19 where col_5 not like '%[%]%'
  ------task_20
  create table customer_7(customer_id int, cust_name varchar(50), city varchar(50), grade int, salesman_id int)
  insert into customer_7 values(3002,  'Nick Rimando',  'New york',   100, 5001),
  (3007, 'Brad Davis' ,  'New York', 200,   5001),
  (3005, ' Graham Zusi', 'California', 200,    5002),
  (3008, 'Julian Green', 'London',  300,   5002),
  (3004, 'Fabian Johnson',  'Paris', 300, 5006),
  (3009, 'Geoff Cameron', 'Berlin',  100,  5003),
  (3003,  'Jozy Altidor', 'Moscow', 200 ,  5007),
  (3001, 'Brad Guzan',  'London',  Null,  5005)
  select *from customer_7
   select customer_id, cust_name, city, grade, salesman_id
   from customer_7
   where grade  is null
     select customer_id, cust_name, city, grade, salesman_id
	 from customer_7
	 where grade is Null or grade like '%null%'

	 select customer_id, cust_name, city, grade, salesman_id from customer_7 where grade is Null or  grade=' '
	  ------task_21
	   select customer_id, cust_name, city, grade, salesman_id from customer_7 where grade not like '%[null]%'
	   
















 



   














