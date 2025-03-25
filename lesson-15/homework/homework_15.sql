create database lesson_15 
use lesson_15
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, EmployeeName VARCHAR(100), ManagerID INT NULL );
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (1, 'John Doe', NULL), (2, 'Jane Smith', 1),
(3, 'Michael Brown', 1), (4, 'Emily Davis', 2), (5, 'Daniel Wilson', 2), (6, 'Olivia Taylor', 3), (7, 'Matthew Anderson', 3), 
(8, 'Sophia Thomas', 4), (9, 'David Jackson', 4), (10, 'Emma White', 5), (11, 'James Harris', 5), (12, 'Lucas Martin', 6), (13, 'Ava Thompson', 6), 
(14, 'Alexander Garcia', 7), (15, 'Mia Martinez', 7), (16, 'Elijah Robinson', 8),
(17, 'Charlotte Clark', 8), (18, 'Benjamin Lewis', 9), (19, 'Amelia Hall', 9), (20, 'William Allen', 10);
select *from employees 
--Task 1: Use a Derived Table to Find Employees with Managers
select E.employeename as employee, M.employeename as manager  from employees E join (select employeeid, employeename
 from employees )  as  M  on e.managerid=m.employeeid 
 --Task 2: Use a CTE to Find Employees with Managers
; with EM  as (select e.employeename as employeename, m.employeename as managername from employees e
join employees m  on m.employeeid=e.managerid)
select *from EM ;
--task 4 Task 4: Find Direct Reports for a Given Manager Using CTE
select *from employees 
 ;with reports as (select e.managerid as managerid, m.employeename as managername, 
 e.employeeid as employeeid, e.employeename as employeename from employees e 
 join employees m on e.managerid=m.employeeid) select *from reports 


--task 5  Create a Recursive CTE to Find All Levels of Employees
select *from employees;
; with levels as( select employeeid, employeename, managerid , 1 as daraja from employees 
where managerid is null union all 
select a.employeeid, a.employeename, a.managerid, l.daraja+1 from employees a
join levels l on l.employeeid=a.managerid)
select *from levels 
--task 6 Task 6: Count Number of Employees at Each Level Using Recursive CTE
select *from employees 
; with numberemployees as (select 1 as level , a.employeename, a.managerid, a.employeeid from employees a
where a.managerid is null
union all 
select n.level+1, a.employeename, a.managerid, a.employeeid  from employees a 
join numberemployees n on a.managerid=n.employeeid) 
select count(n.employeeid) as totalnumber,n.level from numberemployees n 
group by n.level
order by n.level
--task 7
--Task 7: Retrieve Employees Without Managers Using Derived Table
select *from employees
select a.employeeid as employeeid, a.employeename as employeename , a.managerid as managerid , b. managername
from employees a left join(select f.employeeid as managerid, f.employeename as managername from employees f) b on a.managerid=b.managerid
where a.managerid is null 

select employeeid, employeename, managerid from (select *from employees ) as dv where managerid is null
select employeeid, employeename, managerid from employees where managerid is null 

--task 8 Retrieve Employees Without Managers Using CTE
; with emp as (select employeeid, employeename, managerid from employees where managerid is null ) select * from emp 
--task 9 Find Employees Reporting to a Specific Manager Using Recursive CTE 
select *from employees; 
; with empreport as ( select e.employeeid, e.employeename, e.managerid, 1 as level, m.employeename as managername from employees e
LEFT JOIN employees m ON e.managerid = m.employeeid
where e.managerid is null
union all
select a.employeeid, a.employeename, a.managerid, em.level+1 , m.employeename as managername from employees a 
join empreport em on em.employeeid=a.managerid   
left join employees m on a.managerid = m.employeeid)
select *from empreport

--task 10 
--Task 10: Find the Maximum Depth of Management Hierarchy
select *from employees
; with d as ( select employeeid, employeename, managerid, 1 as level from  employees 
where managerid is null 
union all
select a.employeeid, a.employeename, a.managerid, d.level+1 from employees a 
join d d on d.employeeid=a.managerid) select max(level) as max  from d
