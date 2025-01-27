create table task_14 (col_2 varchar(120))
insert into task_14 values('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')
select *from task_14

select col_2
from task_14
where col_2 like '%[\]%' 
  select col_2
  from task_14
  where col_2 like '%[/]%'
  ------------task 15
  create table task_15 (col_3 varchar(120))
insert into task_15 values('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')
select *from task_15
 
 select col_3
 from task_15
 where col_3 not like '%[/]%'
  select col_3
  from task_15
  where col_3 not like '%\%' escape '!'
   -----
   select col_3
   from task_15
   where col_3 not like'%/%' escape '!'

   select col_3
   from task_15
    where col_3 not like '%[/]%'
	 select col_3 from task_15  where col_3 like '%[/]%'
	 -------task-18

	 create table task_18 (col_4 varchar(120))
insert into task_18 values('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')
select *from task_18
 select col_4 from task_18 where  col_4  like '%!%%' escape '!'
 



   














