
create table Emloyees_4 (EMP_IDNO int,  EMP_FNAME varchar(50), EMP_LNAME varchar(50) ,   EMP_DEPT decimal(10,2))
  insert into Emloyees_4 values(526689, 'Carlos', 'Snares',  63),
  (843795, 'Enric', 'Dosio',  57),
  (127323,  'Michale', 'Robbin', 57),
  (328717, 'Jhon', 'Snares', 63),
   (4527, 'Joseph', 'Dosni',47),
   (659831, 'Zanifer', 'Emily', 47),
   (847674, 'Kuleswar', 'Sitaraman', 57),
   (748681, 'Henrey', 'Gabriel', 47),
   (555935, 'Alex', 'Manuel', 57),
   (539569, 'George', 'Mardy',27), 
   (733843, 'Mario', 'Saule',63),
   (631548, 'Alan', 'Snappy',27),
   (839139, 'Maria','Foster',57)
   select*from Emloyees_4
     select EMP_IDNO,  EMP_FNAME, EMP_LNAME,   EMP_DEPT
	 from Emloyees_4
	 where EMP_LNAME like 'D%'
   



   













