create table salesman(salesman_id int, salesman_name varchar(30), city varchar(25), commission int)
insert into salesman values( 5001, 'james hoog', 'new york', 0.15),( 5002, 'nail knite', 'paris', 0.13),( 5005, 'pit alex', 'london', 0.11),( 5006, 'mc lyon', 'paris', 014),(5007, 'paul adam','rome', 0.13),(5003, 'lauson hen', 'san jose', 0.12)

select *from  salesman
 select salesman_id, salesman_name, city, commission 
 from salesman
 where  city in ('paris', 'new york')
  select salesman_id, salesman_name, city, commission 
  from salesman
  where city in('london', 'rome')
   select salesman_id, salesman_name, city, commission 
   from salesman
   where  city <> 'paris' and city <> 'rome'
   select salesman_id, salesman_name, city, commission 
   from salesman
    where city <> 'new york' and city <> 'rome'
	 select salesman_id, salesman_name
	 from salesman
	 where city <>'new york' and city<> 'rome'
	  select salesman_id, salesman_name
	  from salesman
	  where city in ('rome', 'new york')
	  select salesman_id, salesman_name
	  from salesman
	  where city not in ('rome', 'new york')




  
