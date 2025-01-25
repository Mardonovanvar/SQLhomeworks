-----homework-8
 create table salesman_07(salesman_id int, salesman_name varchar(30), city varchar(25), commission decimal( 10,2))
 insert into salesman_07 values(5001, 'James Hoog', 'New York', 0.15),(5002, 'Nail Knite', 'Paris', 0.13),(5005, 'Pit Alex', 'London', 0.11),( 5006, 'Mc Lyon', 'Paris', 014),(5007, 'PaulAdam', 'Rome', 0.13),( 5003,'LausonHen', 'San Jose', 0.12)
 select *from salesman_07
  
  select salesman_id, salesman_name, city, commission
  from salesman_07
  where salesman_name not in ( 'a%' , 'm%')
  select salesman_id, salesman_name, city, commission
  from salesman
  where  ascii(upper(substring( salesman_name, 1,1))) not between Ascii('A') and ascii('M')
  -------
  select salesman_id, salesman_name, city, commission
  from salesman
  where ascii(upper(substring(salesman_name, 1,1))) not between ascii('n') and ascii('p')
