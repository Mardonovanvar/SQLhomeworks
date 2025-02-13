--From the following tables write a  SQL query to list all salespersons along 
 --with customer name, city, grade, order number, date, and amount.
 --Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or,
 --2. Salesmen who not yet join under any customer, Condition for selecting list of customer :
 --3. placed one or more orders, or 4. no order placed to their salesman.
 create table customer (customer_id int, cust_name varchar(25), 
 city varchar(30),grade int, salesman_id int) 
 insert into customer values(3002, 'Nick Rimando','New York',  100, 5001),
 (3007, 'Brad Davis', 'New York', 200, 5001),(3005, 'Graham Zusi',  'California', 200, 5002),
 (3008, 'Julian Green', 'London', 300,5002),(3004, 'Fabian Johnson', 'Paris',300, 5006),
 (3009, 'Geoff Cameron',  'Berlin', 100, 5003),(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
 (3001, 'Brad Guzan',  'London', null, 5005)
 select*from customer
 create table salesman (salesman_id int, name varchar(25), city varchar(25), commission decimal(10,2)) 
 insert into salesman values(5001, 'James Hoog', 'New York',  0.15),
        (5002, 'Nail Knite', 'Paris', 0.13),
        (5005, 'Pit Alex', 'London', 0.11),
        (5006, 'Mc Lyon', 'Paris', 0.14),
        (5007, 'Paul Adam', 'Rome', 0.13),
        (5003, 'Lauson Hen', 'San Jose', 0.12)
    select *from salesman

create table orders (ord_no int, purch_amt decimal(10,2), ord_date date,  customer_id int,  salesman_id int)
insert into orders values(70001, 150, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009,5003),
(70012, 250.45, '2012-06-27',  3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25',3002,5001)
select *from orders

select s.name as [salesman name], c.cust_name as [customer name], c.city [customer city], c.grade as
[customer grade], o.ord_no as [order number], o. purch_amt as [amount], o.ord_date as [date], 
case when 
c.cust_name is null then 'salesperson does not work for customer' else 'salesperson works for the custmer'
end as 'salesperson status',
case
when o.purch_amt is null then 'no order' else 'ordered'
end as [order status]

from salesman s
left join customer c on c.salesman_id=s.salesman_id
left join orders o on o.customer_id=c.customer_id
order by s.name asc
--task 14
--Write a SQL statement to make a list for the salesmen who either work for 
--one or more customers or yet to join any of the customer. 
--The customer may have placed, 
--either one or more orders on or above order amount 2000 and must have a grade,
--or he may not have placed any order to the associated supplier.
select o.*,s.*,c.*, case when c.cust_name is null then 'salesman  does not work for the customer' else 'works for the customer'
end as "salesman_status",
case when o.ord_no is null then 'no ordered' else 'ordered'  end as "customer_status"
from customer c
left join salesman s on c.salesman_id=s.salesman_id
left join orders o on c.customer_id=o.customer_id  and purch_amt>2000
where c.customer_id is not null 

--task 15
----For those customers from the existing list who put one or more orders, or
--which orders have been placed by the customer who is not on the list,
--create a report containing the customer name, city, order number, order date, and purchase amount
select c.cust_name as [customer name], c.city as[customer city], o.ord_no as [order number], 
o.ord_date as[ order date], o.purch_amt as [order number] 
from customer c
left  join orders o on c.customer_id=o.customer_id

--task 16
--Write a SQL statement to generate a report with
--the customer name, city, order no. order date, purchase amount for only those customers
--on the list who must have a grade and placed one or more orders or which order(s) have been placed 
--by the customer who neither is on the list nor has a grade.
select c.cust_name as [customer_name], c.city as [customer city], o.ord_no as [ order no], o.ord_date as ord_date, 
o.purch_amt as [purchase amount]  from  customer c
full join orders o on c.customer_id=o.customer_id
where grade is not null
----task 17 Write a SQL query to combine each row of the salesman table 
--with each row of the customer table
select * from customer c
cross join salesman s
----task 18  Write a SQL statement to create a Cartesian product 
--between salesperson and customer, i.e. 
--each salesperson will appear for all customers and vice versa 
--for that salesperson who belongs to that city.
select s.name, c.cust_name from customer c
cross join salesman s
--task 19
--Write a SQL statement to create a Cartesian product
--between salesperson and customer, i.e. each salesperson will appear
--for every customer and vice versa 
--for those salesmen who belong to a city and customers who require a grade.
select c.cust_name, c.grade, s.name , s.city from customer c
cross join salesman s
where c.grade is not null and s.city is not null
--task 20
--Write a SQL statement to make a Cartesian product between salesman 
--and customer i.e. each salesman will appear for all customers and vice versa 
--for those salesmen who must belong to a city
--which is not the same as his customer and the customers should have their own grade.
select *from customer c
cross join salesman s 
where s.city is not null 
and grade is not null 
and s.city <> c.city
--task 21
--From the following tables write a SQL query to select all rows from both
--participating tables as long as there is a match between pro_com and com_id.
create table company_mast (COM_ID int, COM_NAME varchar(45))
insert into company_mast values (11,'Samsung'),
    (12, 'iBall'),
    (13, 'Epsion'),
    (14, 'Zebronics'),
    (15, 'Asus'),
    (16, 'Frontech')
1create table item_mast( PRO_ID int, PRO_NAME varchar(25),  PRO_PRICE  decimal(10,2), PRO_COM int)
insert into item_mast values(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board',  450.00, 16),(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107,  'CD drive', 800.00, 12),
(108,  'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12)
select *from item_mast
select *from company_mast c
inner join item_mast i on c.com_id=i.pro_com
--task22
--Write a SQL query to display the item name, price, and company name of all the products.

select *from company_mast c
right join item_mast i on c.com_id=i.pro_com
--task23
 --From the following tables write a SQL query to calculate the average price of items of each company.
 --Return average value and company name.
  select avg(i.pro_price) as [avearge value], c.com_name from company_mast c
   left join item_mast i on  c.com_id=i.pro_com
  group by c.com_name


  --task 24
   --From the following tables write a SQL query to calculate and 
   --find the average price of items of each company higher than or equal to Rs. 350.
   --Return average value and company name.
   select avg(icompany_mast c) as [avearge value], c.com_name from company_mast c
   left join item_mast i on  c.com_id=i.pro_com
 
group by c.com_name
having avg(i.pro_price)>=350
  ----task 25 From the following tables write a SQL query to find the most expensive product 
  --of each company. Return pro_name, pro_price and com_name.
  select max(i.pro_price) as 'the most expencive product', i.PRO_NAME, c.com_name  from company_mast c
  inner join item_mast i on c.com_id=i.pro_com
  group by i.pro_name, c.com_name
  select  i.pro_name as [pro_name], i.pro_price, c.com_name from company_mast c
  inner join item_mast i on c.com_id=i.pro_com
  where i.pro_price =(select max(i.pro_price) as 'the most expencive product' from item_mast i where  c.com_id=i.pro_com)

  ----task26  From the following tables write a SQL query to display all the data of
  --employees including their department.
 create table emp_department(DPT_CODE int,  DPT_NAME varchar(30), DPT_ALLOTMENT int)
 insert into emp_department values(57, 'IT', 65000),( 63,'Finance', 15000), 
      (47, 'HR', 240000),
      (27, 'RD', 55000),
      (89,  'QC',75000)
	  select *from emp_department
create table emp_details (EMP_IDNO int, EMP_FNAME varchar(35), EMP_LNAME varchar(30),  EMP_DEPT decimal(10,2))
insert into emp_details values(127323, 'Michale', 'Robbin', 57),
   (526689, 'Carlos','Snares',  63),
   (843795, 'Enric', 'Dosio', 57),
    (328717, 'Jhon', 'Snares', 63),
    (444527, 'Joseph','Dosni', 47),
   (659831, 'Zanifer', 'Emily', 47),
    (847674, 'Kuleswar', 'Sitaraman',57),
    (748681, 'Henrey', 'Gabriel', 47),
   (555935, 'Alex', 'Manuel',  57),
  (539569, 'George', 'Mardy', 27),
  (733843,  'Mario', 'Saule',63),
  (631548, 'Alan', 'Snappy', 27),
  (839139, 'Maria', 'Foster', 57)
  select *from emp_details
  select * from emp_department a
  inner join emp_details b on b.EMP_DEPT=a.DPT_CODE

  ----task 27 From the following tables write a SQL query to display the first and last names of each employee,
  --as well as the department name and sanction amount.
  select b.EMP_FNAME as [first name], b.EMP_LNAME as [last name] , a.DPT_NAME as [department name],
  a.DPT_ALLOTMENT as [sanction amount] from emp_department a
inner join emp_details b on b.EMP_DEPT=a.DPT_CODE

 -----task 28-From the following tables write a SQL query to find
 --the departments with budgets more than Rs. 50000 and 
 ----display the first name and last name of employees.
 select b.EMP_FNAME as [first name] , b.EMP_LNAME as [last name], a.* from emp_department a
left join emp_details b on  b.EMP_DEPT=a.DPT_CODE
  where a.DPT_ALLOTMENT>50000

  ----task29 From the following tables write a SQL query
  --to find the names of departments where more than two employees are employed.
  --Return dpt_name.
  select a.DPT_NAME  as [department name], count(*) from emp_department a
  inner join emp_details b on  b.EMP_DEPT=a.DPT_CODE
  group by a.dpt_name
  having count(*)>2
  






