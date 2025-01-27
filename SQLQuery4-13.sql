create table task_13 (col_1 varchar(120))
insert into task_13 values('A001/DJ-402\44_/100/2015'),
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
select *from task_13
select col_1
from task_13
where col_1 not like '%\_%'Escape'\'

select col_1 from task_13
where col_1 not like '%[_]%'
	select col_1 from task_13
	where col_1 like '%[_]%'
	------
	select col_1 from task_13
	where col_1 like '%\_%' escape '\'
	------
select col_1 from task_13
	where col_1 not like '%\_%' escape '\'




















