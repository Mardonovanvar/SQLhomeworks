
--homework-7
 create table salesman_09 (salesman_id int, salesman_name varchar(30), city varchar(25), commission decimal( 10,2))
 insert into salesman_09 values(5001, 'James Hoog', 'New York', 0.15),(5002, 'Nail Knite', 'Paris', 0.13),(5005, 'Pit Alex', 'London', 0.11),( 5006, 'Mc Lyon', 'Paris', 014),(5007, 'PaulAdam', 'Rome', 0.13),( 5003,'LausonHen', 'San Jose', 0.12)
 select *from salesman_09
  select salesman_id, salesman_name, city, commission
  from salesman_09
  where salesman_name  >='A' and  salesman_name <'L'

  select salesman_id, salesman_name, city, commission
   from salesman_09
   where salesman_name >='A' and salesman_name <='l'
   -------
    select salesman_id, salesman_name, city, commission
	from salesman_09
	where salesman_name like '%a&' and salesman_name not like '%a%a%'
	 
	 --------
	 select salesman_id, salesman_name, city, commission
	 from salesman_09
	 where salesman_name like '%a%'
	 -------
	 select salesman_id, salesman_name, city, commission
	 from salesman_09
	 where salesman_name like '%s%'
	 -----
	  select salesman_id, salesman_name, city, commission
	  from salesman_09
	  where salesman_name like '%u%'

	----------
	 select salesman_id, salesman_name, city, commission
	 from salesman_09
	  where salesman_name like '%e%' and salesman_name like '%o%'
	  ---------
	  select salesman_id, salesman_name, city, commission
	  from salesman_09
	   where salesman_name like 'n%'
	   ------
	    select salesman_id, salesman_name, city, commission
	  from salesman_09
	   where salesman_name like '%n'




    