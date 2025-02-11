

create table salesperson (salesperson_id int primary key, name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesperson values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesperson
create table buyer( buyer_id int, buy_name varchar(30), city varchar(30), grade int, salesperson_id int,  foreign key (salesperson_id)references  salesperson(salesperson_id)  )
insert into buyer values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select *from buyer
select S.salesperson_id as salesperson , B.buy_name as buy_name, S.city as city_name     from salesperson S
left join buyer b on S.salesperson_id = b.salesperson_id 

--task 2
drop table if exists sales
create table customer( customer_id int, customer_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select *from customer
create table salesman(salesman_id int, name varchar(25), city varchar(25), commission decimal(10,2)) 
insert into salesman values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman 
--From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. 
--Return Customer Name, city, Salesman, commission.
select c.customer_name as customer_name, s.city as city, S.name as salesman, s.commission as commission from customer c
left join salesman s on c.salesman_id=S.salesman_id


--task 3
 --From the following tables
 --write a SQL query to find those orders where the order amount exists between 500 and 2000. 
 --Return ord_no, purch_amt, cust_name, city.
 create table customer09( customer09_id int, customer09_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer09 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer09
create table orders (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
insert into orders values(70001, '150.5',  '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),(70002, 65.26, '2012-10-05',3002, 5001),
(70004, 110.5, '2012-08-17',  3009, 5003),(70007, 948.5, '2012-09-10',  3005, 5002),
(70005, 2400.6, '2012-07-27',  3007,5001),(70008, 5760, '2012-09-10',  3002, 5001),
(70010, 1983.43, '2012-10-10',  3004, 5006),(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),(70011, 75.29, '2012-08-17',  3003, 5007),
(70013, 3045.6, '2012-04-25',  3002, 5001)
select *from orders
---From the following tables
-- --write a SQL query to find those orders where the order amount exists between 500 and 2000. 
 --Return ord_no, purch_amt, cust_name, city.
 select O.ord_no as ord_no, O.purch_amt, C.customer09_name as cust_name, C.city as city from customer09 c
 inner  join orders o on c.customer09_id=o.customer_id
 where o.purch_amt between 500 and 2000

 --task 4
  --From the following tables
  --write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
  --Return Customer Name, customer city, Salesman, commission. 
  create table customer01( customer01_id int, customer01_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer01 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer01
create table salesman01 (salesman01_id int , name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesman01 values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman01 
---From the following tables
--  --write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
--  --Return Customer Name, customer city, Salesman, commission. 
    select C.customer01_name as[ customer name], c. city[cutomer city], s.name as [salesman], s.commission as commission from customer01 c
	inner  join salesman01 s on c.salesman_id=s.salesman01_id
	where s.commission >0.12  
	----5. From the following tables
	----write a SQL query to locate those salespeople who do not live in the same city where their customers live 
	----and have received a commission of more than 12% from the company.
	----Return Customer Name, customer city, Salesman, salesman city,
	create table customer02( customer02_id int, customer02_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer02 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer02

create table salesman02 (salesman02_id int , name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesman02 values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman02

----Return Customer Name, customer city, Salesman, salesman city,
select c.customer02_name as [customer name], c.city as [customer city], s.name as [salesman], s.city as [salesman city] from customer02 c
inner join salesman02 s on c.salesman_id=s.salesman02_id
where s.commission >0.12 and c.city <>s.city

--6.From the following tables write a SQL query to find the details of an order. 
--Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
create table orders01 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
insert into orders01 values(70001, '150.5',  '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),(70002, 65.26, '2012-10-05',3002, 5001),
(70004, 110.5, '2012-08-17',  3009, 5003),(70007, 948.5, '2012-09-10',  3005, 5002),
(70005, 2400.6, '2012-07-27',  3007,5001),(70008, 5760, '2012-09-10',  3002, 5001),
(70010, 1983.43, '2012-10-10',  3004, 5006),(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),(70011, 75.29, '2012-08-17',  3003, 5007),
(70013, 3045.6, '2012-04-25',  3002, 5001)
select*from orders01
create table customer03( customer03_id int, customer03_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer03 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer03
create table salesman03 (salesman03_id int , name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesman03 values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman03 

---Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
select o.ord_no as ord_no, o.ord_date as ord_date, o.purch_amt as purch_amt, c.customer03_name as [customer name],c.grade as grade, S.name as [salesman], s.commission as commission from orders01 o
inner join customer03 c on o.customer_id=c.customer03_id
inner join salesman03 s on o.salesman_id=s.salesman03_id
--task 7  Write a SQL statement to join the tables salesman, customer and
--orders so that the same column of each table appears once and only the relational rows are returned. 
select o.ord_no as ord_no, o.ord_date as ord_date, o.purch_amt as purch_amt, 
o. salesman_id as salesman_id , c. customer03_name as customer03_name,  c.city as customer_city, c.grade as grade, c.salesman_id as salesman_id,
s. name as salesman_name, s.city as salesman_city, s.commission as commission from orders01 o
inner join  customer03 c on o.customer_id=c.customer03_id
inner join salesman03 s on o.salesman_id=s.salesman03_id

----TASK 8. From the following tables
--write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
--The results should be sorted by ascending customer_id.
select c.customer03_name as [customer name],  c.city as [customer city], c.grade as [customer grade], s.name as[salesman], s.city as [salesman city] from customer03 c
inner join salesman03 s on c.salesman_id=s.salesman03_id
order by customer03_id  asc  

--TASK 9 From the following tables write a SQL query to find those customers with a grade less than 300.
----Return cust_name, customer city, grade, Salesman, salesmancity. 
--The result should be ordered by ascending customer_id. 
select c.customer03_name as [customer name],  c.city as [customer city], c.grade as [customer grade], s.name as[salesman], s.city as [salesman city] from customer03 c
inner join salesman03 s on c.salesman_id=s.salesman03_id
where [grade] <300
order by customer03_id  asc  
--TASK 10 Write a SQL statement to make a report with customer name, city, order number, order date, and
--order amount in ascending order according to the order date to 
--determine whether any of the existing customers have placed an order or not.
create table orders02 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
insert into orders02 values(70001, '150.5',  '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),(70002, 65.26, '2012-10-05',3002, 5001),
(70004, 110.5, '2012-08-17',  3009, 5003),(70007, 948.5, '2012-09-10',  3005, 5002),
(70005, 2400.6, '2012-07-27',  3007,5001),(70008, 5760, '2012-09-10',  3002, 5001),
(70010, 1983.43, '2012-10-10',  3004, 5006),(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),(70011, 75.29, '2012-08-17',  3003, 5007),
(70013, 3045.6, '2012-04-25',  3002, 5001)
select *from orders02

create table customer07( customer_id int, customer_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer07 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer07
---customer name, city, order number, order date, and
----order amount
select customer_name as [customer name], c.city as [customer city], o.ord_no as [order number], 
o.ord_date as[ order date], o. purch_amt as [order amount] from orders02 o
left  join customer07 c on c.customer_id =o.customer_id
order by o.ord_date asc

--TASK 11 SQL statement to generate a report with customer name, city, order number, 
--order date, order amount, salesperson name, and commission to determine if 
--any of the e  
create table orders05 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
insert into orders05 values(70001, '150.5',  '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),(70002, 65.26, '2012-10-05',3002, 5001),
(70004, 110.5, '2012-08-17',  3009, 5003),(70007, 948.5, '2012-09-10',  3005, 5002),
(70005, 2400.6, '2012-07-27',  3007,5001),(70008, 5760, '2012-09-10',  3002, 5001),
(70010, 1983.43, '2012-10-10',  3004, 5006),(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),(70011, 75.29, '2012-08-17',  3003, 5007),
(70013, 3045.6, '2012-04-25',  3002, 5001)
select*from orders05
create table customer05( customer_id int, customer_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer05 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer05
create table salesman05 (salesman_id int , name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesman05 values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman05

select c.customer_name as [customer name], c.city as [customer city], o.ord_no as [order number], o.ord_date as 
[order date],o.purch_amt as [order amount], s.name as [salesperson name], s.commission as [commission], 
case
when o.ord_no is null then 'no_order' 
when s.salesman_id is null then 'ordered by customer' else 'ordered by salesman'
end as order_status from customer05 c 

left join orders05 o on o.customer_id =c.customer_id
left  join salesman05 s on o.salesman_id =s.salesman_id
order by c.customer_id
 --statement to generate a report with customer name, city, order number, order date, 
 --order amount, salesperson name, and commission to determine if any of the existing customers
 --have not placed orders or if
 --they have placed orders through their salesman or by themselves.
      --[task 12] 
	  create table customer05( customer_id int, customer_name varchar(30), city varchar(30), grade int, salesman_id int)
insert into customer06 values(3002, 'Nick Rimando', 'New York',100,5001),
(3007, 'Brad Davis', 'New York', 200,  5001),(3005, 'Graham Zusi', 'California',200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),(3004, 'Fabian Johnson', 'Paris', 300,  5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', null, 5005)
select*from customer05
reate table salesman05 (salesman_id int , name varchar(25), city varchar(25), commission decimal(10,2))
insert into salesman05 values(5001, 'James Hoog', 'New York',  0.15),(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex',  'London', 0.11),(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome',  0.13),(5003,  'Lauson Hen', 'San Jose', 0.12)
select*from salesman05

--Write a SQL statement to generate a list in ascending order of salespersons who work either
--for one or more customers or have not yet joined any of the customers.
select c.customer_name as [customer name], s.name as [salesman name]  , case  when c.customer_name is null
 then 'salesperson works for customer' else 'salesperson does not work for customer'
 end as [salesperson status]
from salesman05 s
left join customer05 c on s.salesman_id =c.salesman_id 
order by s.name asc 
select c.customer_name as [customer name], s.name as [salesman name]  
from salesman05 s
right  join customer05 c on s.salesman_id =c.salesman_id 
order by s.name asc 



























 




 
