create table customers_1(customer_id int, customer_name varchar(35), city varchar(20), grade int, salesman_id int identity(5001,1)) 
insert into customers_1 values(3002, 'nick rimando', 'new york', 100),( 3007, 'brad davis', 'new york', 200),(3005, 'graham zusi', 'californiya', 200),(3008, 'julian green', 'london', 300),( 3004, 'fabian', 'paris', 300),( 3009, 'geoff Cameron', 'berlin',100),( 3003, 'jozy altidor', 'moscow', 200),(3001, 'brad guzan', 'london', 0)

set identity_insert customers_1 off
select*from customers_1
select customer_id, customer_name, city, grade, salesman_id
from customers_1
where customer_id in('3007', '3008', '3009')
select customer_id, customer_name, city, grade, salesman_id
from customers_1
where customer_id not in ('3007','3008', '3009')


select customer_id, customer_name, city, grade, salesman_id
 from customers_1
 where customer_id <> '3007' and customer_id <>' 3008' and customer_id<>'3009'
