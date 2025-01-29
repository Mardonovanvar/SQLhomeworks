
create table orders_001( ord_no int, purch_amt decimal(10,2), ord_date date,  customer_id int, salesman_id int) 
insert into orders_001 values(70001, 150.5, '2012-10-05', 3005, 50002),
(70009,  270.55, '2012-09-10', 3001,5005),
(70002, 65.26, '2012-10-05', 3002,5001),
(70004, 110.5, '2012-08-17', 3009,5003),
(70007, 948.5, '2012-09-10', 3005,5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003,5007),
(70013, 3045, '2012-04-25', 3002, 5001)
select *from orders_001 
 select ord_no, purch_amt, ord_date,  customer_id, salesman_id
 from orders_001
 where not(ord_date='2012-09-10' or salesman_id > 5005 or purch_amt>1000) 
  select ord_no, purch_amt, ord_date,  customer_id, salesman_id
  from orders_001
  where  not(( ord_date ='2012-09-10' and salesman_id>5005) or purch_amt>1000)
  --task-7
  create table salesman_01 (salesman_id int, name varchar(30), city varchar(25), commission decimal(10,2))
  insert into salesman_01 values(5001, 'James Hoog', 'New York', 0.15),
  (5002, 'Nail Knite',  'Paris', 0.13),
  (5005, 'Pit Alex',  'London',  0.11),
  (5006, 'Mc Lyon',  'Paris', 0.14),
  (5007, 'Paul Adam',  'Rome', 0.13),
  (5003, 'Lauson Hen', 'San Jose', 0.12)
   select*from salesman_01
    select salesman_id, name, city, commission 
	from salesman_01
	where commission between 0.10 and 0.12
	 select salesman_id, name, city, commission 
	from salesman_01
	where commission >=0.10 and commission<=0.12
	 -----
	 select salesman_id, name, city, commission 
	from salesman_01
	where commission >0.10 and commission<0.12
	--------task-8
	create table orders_02( ord_no int, purch_amt decimal(10,2), ord_date date,  customer_id int, salesman_id int) 
insert into orders_02 values(70001, 150.5, '2012-10-05', 3005, 50002),
(70009,  270.55, '2012-09-10', 3001,5005),
(70002, 65.26, '2012-10-05', 3002,5001),
(70004, 110.5, '2012-08-17', 3009,5003),
(70007, 948.5, '2012-09-10', 3005,5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003,5007),
(70013, 3045, '2012-04-25', 3002, 5001)
select *from orders_02

select ord_no, purch_amt, ord_date,  customer_id, salesman_id
from orders_02
where (purch_amt<200 or not (ord_date>='2012-02-10' and customer_id<3009))
 ---------task 9 

 create table orders_03( ord_no int, purch_amt decimal(10,2), ord_date date,  customer_id int, salesman_id int) 
insert into orders_03 values(70001, 150.5, '2012-10-05', 3005, 50002),
(70009,  270.55, '2012-09-10', 3001,5005),
(70002, 65.26, '2012-10-05', 3002,5001),
(70004, 110.5, '2012-08-17', 3009,5003),
(70007, 948.5, '2012-09-10', 3005,5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003,5007),
(70013, 3045, '2012-04-25', 3002, 5001)
select *from orders_03
 select ord_no, purch_amt, ord_date,  customer_id, salesman_id
 from orders_03
 where  not(ord_date='2012-08-17' or (customer_id>3005 and purch_amt <1000))
 --------task 10
 select *from orders_03
 
 
 select ord_no,
 purch_amt, 
 (purch_amt /6000)*100  as "achieved", 
((6000-purch_amt)*100)/6000 as "unachieved"
from orders_03
where (purch_amt*100)/6000 >50
--------task 11
 
 create table employees_02(emp_id int, emp_fname varchar(25), emp_lname varchar(25), emp_dept decimal(10,2))
 insert into employees_02 values(127323, 'Michale', 'Robbin',57),(526689, 'Carlos', 'Snares', 63),(843795, 'Enric', 'Dosio', 57),
 (328717, 'Jhon', 'Snares',  63),(444527, 'Joseph', 'Dosni', 47),(659831, 'Zanifer', 'Emily', 47),
 (847674, 'Kuleswar', 'Sitaraman',  57),(748681, 'Henrey', 'Gabriel', 47),(555935, 'Alex', 'Manuel',  57),
 (539569, 'George', 'Mardy', 27),(733843,  'Mario', 'Saule',  63),(631548, 'Alan', 'Snappy', 27),
 (839139,  'Maria', 'Foster', 57)
  select *from employees_02

  select emp_id, emp_fname, emp_lname, emp_dept from employees_02
  where emp_lname like '%dosni%' or emp_lname like  '%Mardy%'

  -----task_12
    select emp_id, emp_fname, emp_lname, emp_dept from employees_02
where emp_dept ='47.00'  or  emp_dept='63.00'
   
  
  






















	 
	







