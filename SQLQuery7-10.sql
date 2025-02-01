

 CREATE TABLE orders_07(ord_no int, purch_amt decimal(10,2) , ord_date date,  customer_id int, salesman_id int)
 insert into orders_07 values(70001, 150.5,  '2012-10-05', 3005,  5002),(70009, 270.65, '2012-09-10', 3001,  5005),
 (70002, 65.26,  '2012-10-05', 3002,  5001),(70004,  110.5,  '2012-08-17',  3009,  5003),
 (70007, 948.5,  '2012-09-10',   3005,  5002),(70005,  2400.6,  '2012-07-27',  3007, 5001),
 (70008,  5760,  '2012-09-10',  3002,   5001), (70010,  1983.43,  '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10', 3009,  5003),(70012, 250.45, '2012-06-27',  3008,   5002),
 (70011,  75.29, '2012-08-17',  3003, 5007),(70013, 3045.6, '2012-04-25',  3002, 5001)

 select *from orders_07

 select  'For', ord_date , 'there are ', count(ord_no), 'orders' as order_count
 from orders_07
 insert into orders_07 values(70001, 150.5,  '2012-10-05', 3005,  5002),(70009, 270.65, '2012-09-10', 3001,  5005),
 (70002, 65.26,  '2012-10-05', 3002,  5001),(70004,  110.5,  '2012-08-17',  3009,  5003),
 (70007, 948.5,  '2012-09-10',   3005,  5002),(70005,  2400.6,  '2012-07-27',  3007, 5001),
 (70008,  5760,  '2012-09-10',  3002,   5001), (70010,  1983.43,  '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10', 3009,  5003),(70012, 250.45, '2012-06-27',  3008,   5002),
 (70011,  75.29, '2012-08-17',  3003, 5007),(70013, 3045.6, '2012-04-25',  3002, 5001)

 select *from orders_07

 select  'For', ord_date , 'there are ', count(ord_no), 'orders' as order_count
 from orders_07
 group by ord_date
 group by ord_date

 task-4--
 select*from orders_07
 order by ord_date desc

 --task_5
 select * from orders_07
 order by ord_date , purch_amt desc

 -----task_6 
  create table customer_2000(customer_id int,   cust_name varchar(30),  city varchar(25),  grade int, salesman_id int)
insert into customer_2000 values(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi',  'California',  200,  5002),
(3008 ,' Julian Green',  'London',  300, 5002),
(3004, 'abian Johnson',  'Paris',  300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor',  'Moscow',  200,5007),
(3001, 'Brad Guzan', 'London', null,  5005)
select *from customer_2000

 select customer_id,   cust_name,  city,  grade
 from customer_2000
 order by customer_id

 --task-7

 
 CREATE TABLE orders_09(ord_no int, purch_amt decimal(10,2) , ord_date date,  customer_id int, salesman_id int)
 insert into orders_09 values(70001, 150.5,  '2012-10-05', 3005,  5002),(70009, 270.65, '2012-09-10', 3001,  5005),
 (70002, 65.26,  '2012-10-05', 3002,  5001),(70004,  110.5,  '2012-08-17',  3009,  5003),
 (70007, 948.5,  '2012-09-10',   3005,  5002),(70005,  2400.6,  '2012-07-27',  3007, 5001),
 (70008,  5760,  '2012-09-10',  3002,   5001), (70010,  1983.43,  '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10', 3009,  5003),(70012, 250.45, '2012-06-27',  3008,   5002),
 (70011,  75.29, '2012-08-17',  3003, 5007),(70013, 3045.6, '2012-04-25',  3002, 5001)

 select *from orders_09

 select salesman_id, ord_date , max(purch_amt) as maximum_purchase_amount 
 from orders_09
 group by salesman_id, ord_date
 order by salesman_id asc , ord_date asc 




 --task_8
 create table customer_25(customer_id int,   cust_name varchar(30),  city varchar(25),  grade int, salesman_id int)
insert into customer_25 values(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi',  'California',  200,  5002),
(3008 ,' Julian Green',  'London',  300, 5002),
(3004, 'abian Johnson',  'Paris',  300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor',  'Moscow',  200,5007),
(3001, 'Brad Guzan', 'London', null,  5005)
select *from customer_25

select cust_name, grade, city, count(cust_name)
from customer_25
group by grade, city, cust_name
order by grade desc
   

select  grade, city, count(cust_name)
from customer_25
group by grade, city
order by grade desc

--task 9

 CREATE TABLE orders_10(ord_no int, purch_amt decimal(10,2) , ord_date date,  customer_id int, salesman_id int)
 insert into orders_10 values(70001, 150.5,  '2012-10-05', 3005,  5002),(70009, 270.65, '2012-09-10', 3001,  5005),
 (70002, 65.26,  '2012-10-05', 3002,  5001),(70004,  110.5,  '2012-08-17',  3009,  5003),
 (70007, 948.5,  '2012-09-10',   3005,  5002),(70005,  2400.6,  '2012-07-27',  3007, 5001),
 (70008,  5760,  '2012-09-10',  3002,   5001), (70010,  1983.43,  '2012-10-10',  3004, 5006),
 (70003, 2480.4, '2012-10-10', 3009,  5003),(70012, 250.45, '2012-06-27',  3008,   5002),
 (70011,  75.29, '2012-08-17',  3003, 5007),(70013, 3045.6, '2012-04-25',  3002, 5001)

 select *from orders_10

select  customer_id, count(distinct 'ord_no') as 'number of distinct orders' , max( purch_amt)
from orders_10
group by customer_id
order by 'number of distinct orders'

--task-10
 select  ord_date, sum(purch_amt) as 'summation of purchase amount',  sum(purch_amt)*0.15  as 'commission'
 from orders_10
 group by ord_date
 order by ord_date desc

  


 



















 






