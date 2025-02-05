create table talabalar(id int primary key , age int,  bonus decimal(10,2), name varchar(35), birth_date date)
insert into talabalar values(1, 25, 100, 'Anvar', '2000-11-11'),(2, 25, 100, 'jon', '2001-11-10')
select *from talabalar 



create table company ( company_id int primary key,  adress varchar(25), name varchar(25), employee_id int, open_date date, foreign key (employee_id) references talabalar(id))
insert  into company values( 1,'uchtepa', 'w',  1, '2001-12-12'),(2, 'qiziltepa', 'd', 2,'2000-12-11')
 select *from company

 select t.id as student_id, t.age, t.bonus, t.name as student_name, t.birth_date, c.company_id, c.adress as company_adress, c.name as company_name, c.employee_id, c.open_date
 from talabalar t 
 join company c on t.id= c.employee_id

 --2------practise
 create table talabalar1 (id int primary key, name varchar(30), age int)
 insert into talabalar1 values(1, 'Anvar', 25),(2, 'Sardor', 26),(3, 'Alisher', 24)
 select *from talabalar1
 
 create table kurslar (id int primary key, course_name varchar(30), student_id int, foreign key(student_id) references talabalar1(id))
 insert into kurslar values(1, 'matematika', 1),(2, 'eng_lish', 2),( 3, 'russian', 3)
 select*from kurslar 
  select t.id as talabalar_id, t.name as talabalar_name, t.age as talabalar_age, k.id as kurslar_id, k.course_name as course_name, k.student_id
  from kurslar k inner join talabalar t on student_id=t.id

  --3----

  create table ishchilar( id int primary key, name varchar(35), lavozim varchar(35))
  insert into ishchilar values(1, 'Anvar', 'constructor'),(2, 'Sardor', 'cashier'),(3, 'Alish', 'Designer')
  select *from  ishchilar 

  create table kompaniyalar( id int primary key, company_name varchar(50), employee_id int,  foreign key (employee_id) references ishchilar(id))
  insert into kompaniyalar values(2, 'uz yol loyiha', 1),( 4, 'fay', 2),( 6, 'shahar',  3)
   select *from kompaniyalar

   select  i.id as ishchilar_id, i.name as ishchilar_name,i.lavozim as _ishchilar_lavozim, k.id as kompaniayalr_id, k.company_name as company_name, k.employee_id 
   from kompaniyalar k
   inner join ishchilar i on i.id=k.employee_id

   --practise 4
   
   create table mualliflar (id int  primary key, name varchar(30))
   insert into mualliflar values(1, 'ali'),(2, 'vali'),(3, 'sali')
   select *from mualliflar
   
   create table kitoblar (id int primary key,  title varchar(33), author_id int, foreign key (author_id)references mualliflar(id))
   insert into kitoblar values(1, 'matematika', 1),(2, 'hikoya' ,2),(3, 'asar',  3)
   select *from kitoblar

   select m.id as muallif_id, m.name as muallif_name, k.id as kitob_id , k.title as kitob_title, k.author_id as author_id
   from mualliflar m
   inner join kitoblar k on k.author_id =m.id
   
   select m.name as muallif_name, k.title as  kitob_title from mualliflar m inner join kitoblar k on k.author_id=m.id
   