--Create a query using an independent subquery to find staff members who have worked in a division that employs more than 10 people.

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    EmployeeName VARCHAR(100))
	insert INTO Employee (EmployeeID, DepartmentID, Salary, EmployeeName) VALUES
(1, 1, 55000.00, 'John Doe'),
(2, 2, 60000.00, 'Jane Smith'),
(3, 1, 45000.00, 'James Brown'),
(4, 3, 70000.00, 'Mary Johnson'),
(5, 2, 75000.00, 'Linda Williams'),
(6, 3, 80000.00, 'Michael Jones'),
(7, 1, 65000.00, 'Robert Miller'),
(8, 4, 58000.00, 'Patricia Davis'),
(9, 5, 68000.00, 'William Martínez'),
(10, 4, 52000.00, 'Jennifer García'),
(11, 3, 54000.00, 'David Lopez'),
(12, 2, 63000.00, 'Helen Harris'),
(13, 1, 46000.00, 'Charles Taylor'),
(14, 5, 55000.00, 'Nancy Allen'),
(15, 4, 60000.00, 'Edward Clark'),
(16, 1, 50000.00, 'Sarah Lewis'),
(17, 2, 70000.00, 'Jessica Young'),
(18, 3, 76000.00, 'Kevin White'),
(19, 4, 67000.00, 'Laura King'),
(20, 5, 59000.00, 'Joseph Scott'),
(21, 1, 61000.00, 'Karen Adams'),
(22, 3, 54000.00, 'James Nelson'),
(23, 2, 58000.00, 'Christopher Perez'),
(24, 1, 65000.00, 'Matthew Hill'),
(25, 3, 49000.00, 'Rachel Jackson'),
(26, 5, 64000.00, 'Daniel Walker'),
(27, 4, 57000.00, 'Ashley Young'),
(28, 1, 60000.00, 'Helen Anderson'),
(29, 2, 63000.00, 'Brian Wright'),
(30, 5, 52000.00, 'Michael Green'),
(31, 1, 67000.00, 'Jessica Hall'),
(32, 4, 55000.00, 'Joshua Carter'),
(33, 2, 72000.00, 'Sarah Mitchell'),
(34, 3, 46000.00, 'George Perez'),
(35, 5, 50000.00, 'Rachel Collins'),
(36, 1, 54000.00, 'John Rivera'),
(37, 4, 56000.00, 'Orlando Robinson'),
(38, 3, 65000.00, 'Luis Davis'),
(39, 2, 68000.00, 'Barbara Moore'),
(40, 1, 71000.00, 'David Harris');
select *from employee
select a.*from employee a where exists (select 1 from employee b  where b.departmentid=a.departmentid group by b.departmentid having count(*)>10)
select a.employeeid, a.departmentid, a.employeename from employee a where (select count(b.employeeid) from employee b where b.departmentid=a.departmentid)>10
--task 3 Write a query that uses a correlated subquery to list all staff members whose salary exceeds the average salary in their respective division.
CREATE TABLE Employee1 (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2),
    EmployeeName VARCHAR(100) NOT NULL)
 INSERT INTO Employee1 (EmployeeID, DepartmentID, Salary, EmployeeName) VALUES
(1, 1, 55000.00, 'John Doe'),
(2, 2, 60000.00, 'Jane Smith'),
(3, 1, 45000.00, 'James Brown'),
(4, 3, 70000.00, 'Mary Johnson'),
(5, 2, 75000.00, 'Linda Williams'),
(6, 3, 80000.00, 'Michael Jones'),
(7, 1, 65000.00, 'Robert Miller'),
(8, 4, 58000.00, 'Patricia Davis'),
(9, 5, 68000.00, 'William Martínez'),
(10, 4, 52000.00, 'Jennifer García'),
(11, 3, 54000.00, 'David Lopez'),
(12, 2, 63000.00, 'Helen Harris'),
(13, 1, 46000.00, 'Charles Taylor'),
(14, 5, 55000.00, 'Nancy Allen'),
(15, 4, 60000.00, 'Edward Clark'),
(16, 1, 50000.00, 'Sarah Lewis'),
(17, 2, 70000.00, 'Jessica Young'),
(18, 3, 76000.00, 'Kevin White'),
(19, 4, 67000.00, 'Laura King'),
(20, 5, 59000.00, 'Joseph Scott'),
(21, 1, 61000.00, 'Karen Adams'),
(22, 3, 54000.00, 'James Nelson'),
(23, 2, 58000.00, 'Christopher Perez'),
(24, 1, 65000.00, 'Matthew Hill'),
(25, 3, 49000.00, 'Rachel Jackson'),
(26, 5, 64000.00, 'Daniel Walker'),
(27, 4, 57000.00, 'Ashley Young'),
(28, 1, 60000.00, 'Helen Anderson'),
(29, 2, 63000.00, 'Brian Wright'),
(30, 5, 52000.00, 'Michael Green'),
(31, 1, 67000.00, 'Jessica Hall'),
(32, 4, 55000.00, 'Joshua Carter'),
(33, 2, 72000.00, 'Sarah Mitchell'),
(34, 3, 46000.00, 'George Perez'),
(35, 5, 50000.00, 'Rachel Collins'),
(36, 1, 54000.00, 'John Rivera'),
(37, 4, 56000.00, 'Orlando Robinson'),
(38, 3, 65000.00, 'Luis Davis'),
(39, 2, 68000.00, 'Barbara Moore'),
(40, 1, 71000.00, 'David Harris');
select *from employee1
select e.employeeid, e.departmentid, e.salary, e.employeename from employee e 
where e.salary>(select avg(e2.salary)  from employee e2 where e2.departmentid=e.departmentid)

select e.employeeid, e.departmentid, e.salary, e2.avg_salary, e.employeename from employee e 
join (select e2.departmentid,avg(e2.salary) as avg_salary from employee e2 group by e2.departmentid) e2 on  e2.departmentid=e.departmentid
where e.salary>e2.avg_salary 
--task 4 Use a subquery to find all clients who have made a purchase in the Purchases table.
  --customer
  drop table if exists customer
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100)
);

INSERT INTO Customer (CustomerID, CustomerName, City) VALUES
(1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'James Brown', 'Chicago'),
(4, 'Mary Johnson', 'Houston'),
(5, 'Linda Williams', 'Phoenix'),
(6, 'Michael Jones', 'Philadelphia'),
(7, 'Robert Miller', 'San Antonio'),
(8, 'Patricia Davis', 'San Diego'),
(9, 'William Martínez', 'Dallas'),
(10, 'Jennifer García', 'San Jose'),
(11, 'David Lopez', 'Austin'),
(12, 'Helen Harris', 'Jacksonville'),
(13, 'Charles Taylor', 'Fort Worth'),
(14, 'Nancy Allen', 'Columbus'),
(15, 'Edward Clark', 'Indianapolis'),
(16, 'Sarah Lewis', 'Charlotte'),
(17, 'Jessica Young', 'San Francisco'),
(18, 'Kevin White', 'Seattle'),
(19, 'Laura King', 'Denver'),
(20, 'Joseph Scott', 'Washington'),
(21, 'Karen Adams', 'Boston'),
(22, 'James Nelson', 'El Paso'),
(23, 'Christopher Perez', 'Detroit'),
(24, 'Matthew Hill', 'Memphis'),
(25, 'Rachel Jackson', 'Baltimore'),
(26, 'Daniel Walker', 'Las Vegas'),
(27, 'Ashley Young', 'Louisville'),
(28, 'Helen Anderson', 'Milwaukee'),
(29, 'Brian Wright', 'Portland'),
(30, 'Michael Green', 'Oklahoma City'),
(31, 'Jessica Hall', 'Tucson'),
(32, 'Joshua Carter', 'New Orleans'),
(33, 'Sarah Mitchell', 'Bakersfield'),
(34, 'George Perez', 'Tampa'),
(35, 'Rachel Collins', 'Honolulu'),
(36, 'John Rivera', 'Orlando'),
(37, 'Susan Wood', 'St. Louis'),
(38, 'David Harris', 'Minneapolis'),
(39, 'Kevin Walker', 'Cleveland'),
(40, 'Laura Green', 'Birmingham');

 
 cREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO Orders (OrderID, CustomerID, OrderAmount, OrderDate) VALUES
(1, 101, 250.00, '2025-01-01'),
(2, 102, 450.00, '2025-01-02'),
(3, 103, 120.00, '2025-01-03'),
(4, 104, 340.00, '2025-01-04'),
(5, 105, 500.00, '2025-01-05'),
(6, 106, 200.00, '2025-01-06'),
(7, 107, 750.00, '2025-01-07'),
(8, 108, 300.00, '2025-01-08'),
(9, 109, 600.00, '2025-01-09'),
(10, 110, 400.00, '2025-01-10'),
(11, 101, 250.00, '2025-01-11'),
(12, 102, 550.00, '2025-01-12'),
(13, 103, 350.00, '2025-01-13'),
(14, 104, 600.00, '2025-01-14'),
(15, 105, 200.00, '2025-01-15'),
(16, 106, 700.00, '2025-01-16'),
(17, 107, 450.00, '2025-01-17'),
(18, 108, 550.00, '2025-01-18'),
(19, 109, 500.00, '2025-01-19'),
(20, 110, 400.00, '2025-01-20'),
(21, 101, 700.00, '2025-01-21'),
(22, 102, 150.00, '2025-01-22'),
(23, 103, 600.00, '2025-01-23'),
(24, 104, 250.00, '2025-01-24'),
(25, 105, 550.00, '2025-01-25'),
(26, 106, 120.00, '2025-01-26'),
(27, 107, 600.00, '2025-01-27'),
(28, 108, 500.00, '2025-01-28'),
(29, 109, 450.00, '2025-01-29'),
(30, 110, 300.00, '2025-01-30'),
(31, 101, 350.00, '2025-02-01'),
(32, 102, 400.00, '2025-02-02'),
(33, 103, 600.00, '2025-02-03'),
(34, 104, 450.00, '2025-02-04'),
(35, 105, 300.00, '2025-02-05'),
(36, 106, 500.00, '2025-02-06'),
(37, 107, 400.00, '2025-02-07'),
(38, 108, 250.00, '2025-02-08'),
(39, 109, 650.00, '2025-02-09'),
(40, 110, 200.00, '2025-02-10');
select *from customer
select *from orders
---task 4 Use a subquery to find all clients who have made a purchase in the Purchases table.
select  c.customername, c.city  from customer c
 where c.customerid in ( select distinct o.customerid from orders o where orderamount is not null)
 --task 5 Write a query that uses the EXISTS operator to retrieve all purchases that include at least one detail in the PurchaseDetails table.
 cREATE TABLE purchasedetails (
    purchaseDetailID INT PRIMARY KEY,
   purchaseID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2)
);

INSERT INTO purchasedetails (purchaseDetailID, purchaseID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 101, 2, 50.00),
(2, 1, 102, 1, 100.00),
(3, 2, 103, 3, 150.00),
(4, 2, 104, 2, 150.00),
(5, 3, 105, 1, 120.00),
(6, 3, 106, 1, 100.00),
(7, 4, 107, 5, 50.00),
(8, 4, 108, 3, 60.00),
(9, 5, 109, 6, 75.00),
(10, 5, 110, 4, 125.00),
(11, 6, 101, 1, 50.00),
(12, 6, 102, 2, 100.00),
(13, 7, 103, 4, 75.00),
(14, 7, 104, 2, 150.00),
(15, 8, 105, 3, 80.00),
(16, 8, 106, 1, 100.00),
(17, 9, 107, 1, 200.00),
(18, 9, 108, 2, 50.00),
(19, 10, 109, 4, 150.00),
(20, 10, 110, 2, 125.00),
(21, 11, 101, 3, 50.00),
(22, 11, 102, 2, 100.00),
(23, 12, 103, 1, 150.00),
(24, 12, 104, 3, 150.00),
(25, 13, 105, 2, 120.00),
(26, 13, 106, 1, 100.00),
(27, 14, 107, 5, 50.00),
(28, 14, 108, 2, 60.00),
(29, 15, 109, 6, 75.00),
(30, 15, 110, 3, 125.00),
(31, 16, 101, 4, 50.00),
(32, 16, 102, 2, 100.00),
(33, 17, 103, 3, 150.00),
(34, 17, 104, 1, 150.00),
(35, 18, 105, 2, 120.00),
(36, 18, 106, 1, 100.00),
(37, 19, 107, 2, 200.00),
(38, 19, 108, 3, 50.00),
(39, 20, 109, 5, 75.00),
(40, 20, 110, 2, 125.00);
---task 5 Write a query that uses the EXISTS operator to retrieve all purchases that include at least one detail in the PurchaseDetails table.
select *from purchasedetails
select distinct purchaseID
from  purchasedetails p1
where EXISTS (
    select 1 
    from  purchasedetails p2 
    where p1.purchaseID = p2.purchaseID
);

