
create table testtable(col1 varchar(100))
insert into testtable values('A001/DJ-402\44_/100/2015'),
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
select *from testtable
 
 select col1
 from testtable
 where col1 like '%\_%'escape '\'
  -----
  select col1
  from testtable
  where col1 like '%300%'
  --------
  select col1
  from testtable
  where col1 like '%401%'
  select col1
  from testtable
  where col1 like '%A001_%'












