
create table salespeople (salesman_id int, salesman_name varchar(35), city varchar(35), commission decimal(10,2))
insert into salespeople values(5001, 'James Hook', 'New York', 0.15),(5002, 'kail Knite', 'Paris', 0.13),(5005, 'Pit Alex', 'London', 0.11),(5006, 'Mc Lyon', 'paris',0.14),(5007, 'Paul Adam', 'Rome', 0.13),(5003, 'Lauson hen', 'San jose', 0.12)
 select *from  salespeople
  select salesman_id,salesman_name,city,commission
  from salespeople
  where commission between 0.12and 0.14
  select salesman_id, salesman_name, city, commission
  from salespeople
  where salesman_id between 5003 and 5006

  --------homework task 6-----
   create table Orders(ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
   insert into Orders values(70001, 150.5,  '2012-10-15', 3005, 5002),(70009, 270.65, '2012-09-10',3001, 5005),(70002, 65.26, '2012-10-05', 3002,5001),(7004, 110.5,'2012-08-17', 3009,5003),(70007, 948.5, '2012-09-10',3005,5002),(70005, 2004.6,' 2012-07-27', 3007,5001),(70008, 5760, '2012-09-10',3002, 5001),( 70010, 1983.43, '2012-10-10', 3004,5006),(70003, 2480.4, '2012-10-10', 3009,5003),(70012, 250.45, '2012-06-27',3008,5002),(70011,75.29,'2012-08-17', 3003, 5007),(70013,3045.6,'2012-04-25',3002,5001)
 select *from Orders
--delete from Orders
--where ord_no in(70001,70009,70002, 7004,70007,70005, 70008, 70010,70003, 70012, 70011,70013)
 
 select ord_no, purch_amt, ord_date, customer_id, salesman_id
 from Orders
  where purch_amt between 500 and 4000
  And purch_amt not in (948.50, 1983.43)



