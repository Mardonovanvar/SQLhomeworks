create table departments(DEPARTMENT_ID int, DEPARTMENT_NAME varchar(30), MANAGER_ID int, LOCATION_ID int)
insert into departments values(10, 'Administration',  200, 1700), (20, 'Marketing',   201, 1800),
(30, 'Purchasing',  114, 1700), (40, 'Human Resources',  203, 2400),(50, 'Shipping', 121, 1500),
(60, 'IT',  103, 1400),(70, 'Public Relations',  204, 2700 ),(80, 'Sales', 145, 2500),
(90, 'Executive',  100, 1700),(100, 'Finance',  108, 700),(110, 'Accounting',  205, 1700),
(120, 'Treasury', 0, 1700),(130, 'Corporate Tax', 0, 1700),(140, 'Control And Credit', 0, 1700),
(150, 'Shareholder Services',  0, 1700),( 160, 'Benefits', 0, 1700),(170, 'Manufacturing', 0, 1700),
(180, 'Construction',  0, 1700),(190, 'Contracting',  0, 1700),( 200, 'Operations',  0, 1700),
(210 ,'IT Support',  0, 1700),(220, 'NOC', 0, 1700),(230, 'IT Helpdesk',  0, 1700),
(240, 'Government Sales', 0, 1700),(250, 'Retail Sales',  0, 1700),(260, 'Recruiting', 0, 1700),
(270, 'Payroll', 0, 1700)
select *from departments
 CREATE TABLE Employees ( EMPLOYEE_ID INT PRIMARY KEY, FIRST_NAME VARCHAR(50),LAST_NAME VARCHAR(50), EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20), HIRE_DATE DATE, JOB_ID VARCHAR(10), SALARY DECIMAL(10, 2), COMMISSION_PCT DECIMAL(5, 2),
    MANAGER_ID INT, DEPARTMENT_ID INT);
	INSERT INTO employees
VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000.00, 0.00, 0, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000.00, 0.00, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000.00, 0.00, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, 0.00, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, 0.00, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800.00, 0.00, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4570', '2006-02-25', 'IT_PROG', 4800.00, 0.00, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.4571', '2005-06-25', 'IT_PROG', 4200.00, 0.00, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2007-12-15', 'FI_ACCOUNT', 12008.00, 0.00, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4570', '2005-06-19', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4571', '2007-08-15', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4572', '2005-07-15', 'FI_ACCOUNT', 7700.00, 0.00, 108, 100),
(112, 'Jose', 'Pena', 'JPENA', '515.124.4573', '2007-06-15', 'FI_ACCOUNT', 7800.00, 0.00, 108, 100),
(113, 'Carlos', 'Hernandez', 'CHERNAN', '515.124.4574', '2006-10-05', 'FI_ACCOUNT', 6200.00, 0.00, 108, 100),
(114, 'Matthew', 'Weiss', 'MWEISS', '515.124.4575', '2007-07-23', 'FI_ACCOUNT', 6500.00, 0.00, 108, 100),
(115, 'Mark', 'Taylor', 'MTAYLOR', '515.124.4576', '2008-08-10', 'FI_ACCOUNT', 7000.00, 0.00, 108, 100),
(116, 'Steven', 'Flemming', 'SFLEMMING', '515.124.4577', '2007-11-15', 'FI_ACCOUNT', 8000.00, 0.00, 108, 100),
(117, 'William', 'Gates', 'WGATES', '515.124.4578', '2009-01-10', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(118, 'Peter', 'Hall', 'PHALL', '515.124.4579', '2009-02-17', 'FI_ACCOUNT', 8100.00, 0.00, 108, 100),
(119, 'Joshua', 'Bauer', 'JBAUER', '515.124.4580', '2008-07-15', 'FI_ACCOUNT', 7100.00, 0.00, 108, 100),
(120, 'Tina', 'Sonnier', 'TSONNIER', '515.124.4581', '2009-11-11', 'FI_ACCOUNT', 7300.00, 0.00, 108, 100),
(121, 'Michael', 'Owen', 'MOWEN', '515.124.4582', '2010-10-12', 'FI_ACCOUNT', 9200.00, 0.00, 108, 100),
(122, 'Sally', 'Franklin', 'SFRANKL', '515.124.4583', '2011-02-15', 'FI_ACCOUNT', 6800.00, 0.00, 108, 100),
(123, 'Jeffrey', 'Mathews', 'JMATHEWS', '515.124.4584', '2006-03-21', 'FI_ACCOUNT', 6700.00, 0.00, 108, 100),
(124, 'David', 'Farmer', 'DFARMER', '515.124.4585', '2007-01-29', 'FI_ACCOUNT', 7200.00, 0.00, 108, 100),
(125, 'Donald', 'Douglas', 'DDOUGLAS', '515.124.4586', '2008-03-14', 'FI_ACCOUNT', 7100.00, 0.00, 108, 100),
(126, 'Travis', 'Bartlett', 'TBARTLETT', '515.124.4587', '2006-06-25', 'FI_ACCOUNT', 6900.00, 0.00, 108, 100),
(127, 'Kathleen', 'Ferguson', 'KFERGUSO', '515.124.4588', '2008-09-29', 'FI_ACCOUNT', 7400.00, 0.00, 108, 100),
(128, 'Jessica', 'Harrison', 'JHARRISO', '515.124.4589', '2009-04-25', 'FI_ACCOUNT', 7300.00, 0.00, 108, 100),
(129, 'Mary', 'King', 'MKING', '515.124.4590', '2010-02-25', 'FI_ACCOUNT', 7500.00, 0.00, 108, 100),
(130, 'Timothy', 'Austin', 'TAUSTIN', '515.124.4591', '2011-07-15', 'FI_ACCOUNT', 8100.00, 0.00, 108, 100),
(131, 'Andrea', 'Brown', 'ABROWN', '515.124.4592', '2012-08-10', 'FI_ACCOUNT', 8000.00, 0.00, 108, 100),
(132, 'John', 'Smith', 'JSMITH', '515.124.4593', '2013-12-22', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100);
select *from employees
select *from departments
select e.first_name, e.last_name, d.department_id, d.department_name from departments d
left join employees e on e.department_id=d.department_id 


--task 7
select e.first_name as employee_name, m. first_name as manager from employees e
left join employees m  on e.manager_id=m.employee_id
order by e.first_name

	
	----task 8 From the following table, write a SQL query to find the employees who earn less than the employee of ID 182.
	--Return first name, last name and salary.


	select e.first_name, e.last_name, e.salary  from employees e
where salary< (select  salary from employees e where employee_id=125)
select e.first_name, e.last_name, e.salary  from employees e
left join employees e2 on e.salary<e2.salary and e2.employee_id=120

--task9 
--. From the following tables, write a SQL query to display the department name, city, and
--state province for each department.
CREATE TABLE locations ( LOCATION_ID INT PRIMARY KEY,  STREET_ADDRESS VARCHAR(255), POSTAL_CODE VARCHAR(20),
    CITY VARCHAR(100), STATE_PROVINCE VARCHAR(100),
COUNTRY_ID VARCHAR(2))

INSERT INTO locations (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES
(1000, '1297 Via Cola di Rie', '989', 'Roma', NULL, 'IT'),
(1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT'),
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP'),
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN'),
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
(2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG'),
(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2600, '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK'),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');
select *from locations
select d.department_name as [department name], l.city as city, l.state_province from departments d
join locations l on l.LOCATION_ID=d.LOCATION_ID
 ----task -10 From the following tables, write a SQL query to find out which employees have or do not have a department.
 --Return first name, last name, department ID, department name
 select e.first_name, e.last_name, d.department_id, d.department_name ,case when d.department_id is not null then 
 'employees have a department'else 'do not have'end as 'employees status'from departments d
 left join employees e on e.department_id=d.department_id 

 ----task_11 From the following table, write a SQL query to find the employees and their managers.
 --Those managers do not work under any manager also appear in the list.
 --Return the first name of the employee and manager.
 select e.first_name as [employee name], m.first_name as [manager name] from employees e
 left join employees m on m.employee_id=e.manager_id 

 select e.first_name as [employee name] , coalesce(m.first_name, 'no manager')as [manager name] from 
 employees e
 left join employees m on m.employee_id= e.manager_id 
  ----task _12  From the following tables, write a SQL query to find the
  --employees who work in the same department as the employee with the last name Taylor.
  --Return first name, last name and department ID.
  select e.first_name as [first name], e.last_name as [last name] , d.department_id from departments d
   join employees e on e.manager_id=d.manager_id
  where e.department_id=(select department_id from employees 
  where last_name= 'taylor')
  SELECT e.first_name AS [first name], e.last_name AS [last name], e.department_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
AND e.last_name = 'Taylor';
 
 ----task 13 From the following tables, write a SQL query to find all employees who
 --joined on or after 1st January 1993 and on or before 31 August 1997.
 --Return job title, department name, employee name, and joining date of the job. 
 CREATE TABLE job_history (  employee_id int, start_date DATE, end_date DATE,  job_id char(25), DEPARTMENT_ID int)
 INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(102, '2001-01-13',  '2006-07-24',  'IT_PROG', 60),
(101,'1997-09-21', '2001-10-27', 'AC_ACCOUNT', 110),
(101, '2001-10-28', '2005-03-15',  'AC_MGR', 110),
(201,'2004-02-17', '2007-12-19', 'MK_REP', 20),
(114, '2006-03-24', '2007-12-31', 'ST_CLERK', 50),
(122, '2007-01-01', '2007-12-31',  'ST_CLERK', 50),
(200,'1995-09-17',  '2001-06-17',  'AD_ASST', 90),
(176, '2006-03-24', '2006-12-31',  'SA_REP', 80),
(176, '2007-01-01', '2007-12-31',  'SA_MAN', 80),
(200, '2002-07-01', '2006-12-31',  'AC_ACCOUNT', 90);
select *from job_history
CREATE TABLE Employees ( EMPLOYEE_ID INT PRIMARY KEY, FIRST_NAME VARCHAR(50),LAST_NAME VARCHAR(50), EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20), HIRE_DATE DATE, JOB_ID VARCHAR(10), SALARY DECIMAL(10, 2), COMMISSION_PCT DECIMAL(5, 2),
    MANAGER_ID INT, DEPARTMENT_ID INT);
	INSERT INTO employees
VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000.00, 0.00, 0, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000.00, 0.00, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000.00, 0.00, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, 0.00, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, 0.00, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800.00, 0.00, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4570', '2006-02-25', 'IT_PROG', 4800.00, 0.00, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.4571', '2005-06-25', 'IT_PROG', 4200.00, 0.00, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2007-12-15', 'FI_ACCOUNT', 12008.00, 0.00, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4570', '2005-06-19', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4571', '2007-08-15', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4572', '2005-07-15', 'FI_ACCOUNT', 7700.00, 0.00, 108, 100),
(112, 'Jose', 'Pena', 'JPENA', '515.124.4573', '2007-06-15', 'FI_ACCOUNT', 7800.00, 0.00, 108, 100),
(113, 'Carlos', 'Hernandez', 'CHERNAN', '515.124.4574', '2006-10-05', 'FI_ACCOUNT', 6200.00, 0.00, 108, 100),
(114, 'Matthew', 'Weiss', 'MWEISS', '515.124.4575', '2007-07-23', 'FI_ACCOUNT', 6500.00, 0.00, 108, 100),
(115, 'Mark', 'Taylor', 'MTAYLOR', '515.124.4576', '2008-08-10', 'FI_ACCOUNT', 7000.00, 0.00, 108, 100),
(116, 'Steven', 'Flemming', 'SFLEMMING', '515.124.4577', '2007-11-15', 'FI_ACCOUNT', 8000.00, 0.00, 108, 100),
(117, 'William', 'Gates', 'WGATES', '515.124.4578', '2009-01-10', 'FI_ACCOUNT', 9000.00, 0.00, 108, 100),
(118, 'Peter', 'Hall', 'PHALL', '515.124.4579', '2009-02-17', 'FI_ACCOUNT', 8100.00, 0.00, 108, 100),
(119, 'Joshua', 'Bauer', 'JBAUER', '515.124.4580', '2008-07-15', 'FI_ACCOUNT', 7100.00, 0.00, 108, 100),
(120, 'Tina', 'Sonnier', 'TSONNIER', '515.124.4581', '2009-11-11', 'FI_ACCOUNT', 7300.00, 0.00, 108, 100),
(121, 'Michael', 'Owen', 'MOWEN', '515.124.4582', '2010-10-12', 'FI_ACCOUNT', 9200.00, 0.00, 108, 100),
(122, 'Sally', 'Franklin', 'SFRANKL', '515.124.4583', '2011-02-15', 'FI_ACCOUNT', 6800.00, 0.00, 108, 100),
(123, 'Jeffrey', 'Mathews', 'JMATHEWS', '515.124.4584', '2006-03-21', 'FI_ACCOUNT', 6700.00, 0.00, 108, 100),
(124, 'David', 'Farmer', 'DFARMER', '515.124.4585', '2007-01-29', 'FI_ACCOUNT', 7200.00, 0.00, 108, 100),
(125, 'Donald', 'Douglas', 'DDOUGLAS', '515.124.4586', '2008-03-14', 'FI_ACCOUNT', 7100.00, 0.00, 108, 100),
(126, 'Travis', 'Bartlett', 'TBARTLETT', '515.124.4587', '2006-06-25', 'FI_ACCOUNT', 6900.00, 0.00, 108, 100),
(127, 'Kathleen', 'Ferguson', 'KFERGUSO', '515.124.4588', '2008-09-29', 'FI_ACCOUNT', 7400.00, 0.00, 108, 100),
(128, 'Jessica', 'Harrison', 'JHARRISO', '515.124.4589', '2009-04-25', 'FI_ACCOUNT', 7300.00, 0.00, 108, 100),
(129, 'Mary', 'King', 'MKING', '515.124.4590', '2010-02-25', 'FI_ACCOUNT', 7500.00, 0.00, 108, 100),
(130, 'Timothy', 'Austin', 'TAUSTIN', '515.124.4591', '2011-07-15', 'FI_ACCOUNT', 8100.00, 0.00, 108, 100),
(131, 'Andrea', 'Brown', 'ABROWN', '515.124.4592', '2012-08-10', 'FI_ACCOUNT', 8000.00, 0.00, 108, 100),
(132, 'John', 'Smith', 'JSMITH', '515.124.4593', '2013-12-22', 'FI_ACCOUNT', 8200.00, 0.00, 108, 100);
select *from employees
create table jobs (JOB_ID varchar(20), job_title varchar(20), min_salary decimal(10,2), max_salary decimal(10,2))
INSERT INTO jobs (JOB_ID, job_title, min_salary, max_salary) VALUES
('AD_PRES', 'President', 20080.00, 40000.00),
('AD_VP', 'Administration Vice President', 15000.00, 30000.00),
('AD_ASST', 'Administration Assistant', 3000.00, 6000.00),
('FI_MGR', 'Finance Manager', 8200.00, 16000.00),
('FI_ACCOUNT', 'Accountant', 4200.00, 9000.00),
('AC_MGR', 'Accounting Manager', 8200.00, 16000.00),
('AC_ACCOUNT', 'Public Accountant', 4200.00, 9000.00),
('SA_MAN', 'Sales Manager', 10000.00, 20080.00),
('SA_REP', 'Sales Representative', 6000.00, 12008.00),
('PU_MAN', 'Purchasing Manager', 8000.00, 15000.00),
('PU_CLERK', 'Purchasing Clerk', 2500.00, 5500.00),
('ST_MAN', 'Stock Manager', 5500.00, 8500.00),
('ST_CLERK', 'Stock Clerk', 2008.00, 5000.00),
('SH_CLERK', 'Shipping Clerk', 2500.00, 5500.00),
('IT_PROG', 'Programmer', 4000.00, 10000.00),
('MK_MAN', 'Marketing Manager', 9000.00, 15000.00),
('MK_REP', 'Marketing Representative', 4000.00, 9000.00),
('HR_REP', 'Human Resources Representative', 4000.00, 9000.00),
('PR_REP', 'Public Relations Representative', 4500.00, 10500.00);
select *from  jobs

select j.job_title as [job title], d.department_name as [department name], e.first_name as [employee name], jh.start_date as[joining date of the job]

from job_history jh
inner join employees e on  e.employee_id=jh.employee_id
left join jobs j on e.job_id=j.job_id
left join departments d on e.department_id=d.department_id
where jh.start_date between '1993/01/01 ' and '2013/10/10'
--task 14
--From the following tables, write a SQL query to calculate the difference between the maximum salary
--of the job and the employee's salary. Return job title, employee name, and salary difference.

select*from employees
select*from jobs
 select j.job_title as [job title], e.first_name, e.last_name, e.salary, j.max_salary, (j.max_salary-salary) as[difference salary] from employees e
 inner join jobs j on j.job_id=e.job_id 
 --task 15
 --From the following table, write a  SQL query to calculate the average salary, the number of employees receiving commissions in that department.
 --Return department name, average salary and number of employees.
 select*from employees
 select *from departments
 select d.department_name,avg(e.salary) as [average salary], count(commission_pct)as [number of employee] from employees e
 inner join departments d  on e.department_id = d.department_id
 group by d.department_name 
  --task_16
 --From the following tables, write a SQL query to calculate the difference between the maximum salary and
 --the salary of all the employees who work in the department of ID 80.
 --Return job title, employee name and salary difference.
 select*from employees
 select*from jobs
 select j.job_title , e.first_name, e.last_name,(j.max_salary-salary) as 'difference' from employees e
 inner join jobs j on j.job_id =e.job_id 
 where department_id in (30)
  --task_17 From the following table, write a SQL query to find the name of the country, city, and departments, which are running there.
  create table countries (country_id varchar(5), country_name varchar(32), region_id int)
  insert into countries values('AR', 'ARGENTINA', 2),('AU', 'AUSTRALIA', 3),('BE', 'BELGIUM', 1),('BR', 'BRAZIL', 2),('CA', 'CANADA', 2),
  ('CH', 'SWITZERLAND', 1),('CH', 'CHINA', 3),('DE', 'GERMANY', 1),('DK', 'DENMARK', 1),('EG', 'EGYPT', 4),('FR', 'FRANCE',1),
  ('IL', 'ISRAIL', 4),('IN', 'INDIA', 3),('IT','ITALY', 1),('JP', 'JAPAN', 3),('KW','KUWAIT', 4),('ML', 'MALASIA', 3),
  ('MX', 'MEXICO', 2),('NG', 'NIGERIA', 4),('NL','NETHERLANDS',1),('SG','SINGAPORE', 3),('UK', 'UNITED KINGDOM', 1),('US', 'UNITED STATES OF AMERICA',2),
  ('ZM', 'ZAMBIA', 4),('ZW','ZIMBABWE',4)
  SELECT*FROM COUNTRIES
  select*from locations
  select *from departments
  select d.department_name, l.city, c.country_name  from countries c
  inner join locations l on c.country_id=l.country_id
  inner join departments d on l.location_id=d.location_id
  --task 18 
  --From the following tables, write a SQL query to find the department name and the full name
  --(first and last name) of the manager.
  select*from departments
  select*from employees
  select  d.department_name,  e.first_name, e.last_name from departments  d
  inner join employees e on e.employee_id=d.manager_id
  --task_19
  select*from employees
  select* from jobs
   ----From the following table, write a SQL query to calculate the average salary of employees for each job title.
   select avg(salary) as[avgerage salary], j.job_title as [job title ] from employees e
   inner join jobs j  on j.job_id=e.job_id
   group by j.job_title
  --   --task 20 From the following table, write a SQL query to find the employees who earn $12000 or more.
	 --Return employee ID, starting date, end date, job ID and department ID
	 select *from employees
	 select *from job_history
	 select e.employee_id, j.start_date, j.end_date, j.job_id, j.department_id from employees e
	 inner join job_history j on e.employee_id=j.employee_id and e.salary>=12000  
	 --task21
--From the following tables, write a SQL query to find out which departments have at least two employees.
--Group the result set on country name and city. Return country name, city, and number.
select*from countries
select*from locations
select *from employees
select *from departments
SELECT c.country_name, l.city, d.department_name, COUNT(e.employee_id) AS number
FROM countries c
INNER JOIN locations l ON c.country_id = l.country_id
INNER JOIN departments d ON l.location_id = d.location_id
INNER JOIN employees e ON e.department_id = d.department_id
GROUP BY c.country_name, l.city, d.department_name
HAVING COUNT(e.employee_id) >= 2;
----task 22
-- From the following tables, write a SQL query to find the department name,
-- full name (first and last name) of the manager and their city.
select * from employees
select *from departments
select *from locations 
select d.department_name, e.last_name, e.first_name, l.city from employees e
inner join departments d on e.employee_id=d.manager_id
inner join    locations l on l.location_id=d.location_id 
--task23
 --From the following tables, write a SQL query to calculate the number of days worked by employees in a department of ID 80.
 --Return employee ID, job title, number of days worked.
 select *from jobs
 select *from job_history
 select jh.employee_id, j.job_title,DATEDIFF(day, jh.start_date, jh.end_date) as [worked days] from jobs j
 inner join job_history jh on j.job_id=jh.job_id
 where jh.department_id=80

----task 24  From the following tables, write a SQL query to find full name (first and last name),
--and salary of all employees working in any department in the city of London
select *from departments 
select *from locations
select *from employees
select e.first_name, e.last_name, e.salary, l.city, d.department_name from employees e
inner join departments d on d.department_id=e.department_id
inner join locations l on l.location_id=d.location_id
where l.city='southlake'
----task 25  From the following tables, write a SQL query to find full name (first and last name),
--job title, start and end date of last jobs of employees who did not receive commissions. 
select *from jobs
select *from job_history
select*from employees 
select e.first_name +' ' +e.last_name as [full name] ,j.job_title,max(jh.start_date), max(jh.end_date) from jobs j

inner join job_history jh on j.job_id=jh.job_id
inner join employees e on jh.employee_id=e.employee_id
 
where commission_pct=0
 group by e.first_name , e.last_name , j.job_title
 --task 26 
 --From the following tables, write a SQL query to find the department name, department ID, and number of employees in each department.
 select *from departments
 select *from employees 

 select d.department_name, d.department_id,  count(e.employee_id) from departments d
 join employees e  on d.department_id=e.department_id
 group by d.department_name, d.department_id

 ----task 27From the following tables, write a SQL query to find out the full name (first and last name) of the employee
 --with an ID and the name of the country where he/she is currently employed.

 select *from countries
 select *from locations
 select *from employees 
 select *from departments
 select e.first_name +' '+e.last_name as [full name], e.employee_id, max(hire_date) as [employed] , c.country_name  from employees e 
 inner join departments d on d.department_id=e.department_id 
 inner join locations l on l.location_id=d.location_id
 inner join countries c on  c.country_id=l.country_id 
 group by e. first_name , e.last_name, e.employee_id, c.country_name
 

