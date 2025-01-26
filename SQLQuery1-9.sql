  create table salesman_45(salesman_id int, salesman_name varchar(30), city varchar(25), commission decimal( 10,2))
        insert into salesman_45 values(5001, 'James Hoog', 'New York', 0.15),(5002, 'Nail Knite', 'Paris', 0.13),(5005, 'Pit Alex', 'London', 0.11),( 5006, 'Mc Lyon', 'Paris', 0.14),(5007, 'PaulAdam', 'Rome', 0.13),( 5003,'LausonHen', 'San Jose', 0.12)
            select *from salesman_45
	select salesman_id, salesman_name, city, commission
	from salesman_45
	where ascii(upper(substring(salesman_name, 1,1))) < ascii('n') or ascii(upper(substring( salesman_name ,1,1))) >ascii('p')

	select d  
	select salesman_id, salesman_name, city, commission
	from salesman_45
	where salesman_name not in ('Nail knite' , 'pit Alex')
	select salesman_id, salesman_name, city, commission
	from salesman_45
	where salesman_name not like 'l%' and salesman_name not like  'P%' 
	 select salesman_id, salesman_name
	 from salesman_45
	 where salesman_id not in('5001' , '5002')
	 select salesman_id, salesman_name, city, commission
	 from salesman_45
	 where city not in('paris' , 'rome')
	  select salesman_id, salesman_name, city, commission
	  from salesman_45
	  where commission not like '0.11' and commission not like  '0.12'
	  ----------
	  select salesman_id, salesman_name, city, commission from salesman_45 
	  where city not like 'New york' and city not like 'paris'

	  
	