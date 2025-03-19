create database [lesson_13 CTE]
use [lesson_13 CTE]
-- DDL: Creating Tables
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- DML: Inserting Data
INSERT INTO Employees (EmployeeID, EmployeeName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Emma');

INSERT INTO Sales (SaleID, EmployeeID, SaleAmount, SaleDate) VALUES
(1, 1, 500.00, '2025-03-01'),
(2, 1, 700.00, '2025-03-02'),
(3, 2, 400.00, '2025-03-01'),
(4, 2, 600.00, '2025-03-03'),
(5, 3, 900.00, '2025-03-02'),
(6, 3, 800.00, '2025-03-04'),
(7, 4, 300.00, '2025-03-01'),
(8, 4, 1000.00, '2025-03-03'),
(9, 5, 1200.00, '2025-03-02'),
(10, 5, 500.00, '2025-03-04'),
(11, 1, 450.00, '2025-03-05'),
(12, 2, 550.00, '2025-03-05'),
(13, 3, 650.00, '2025-03-06'),
(14, 4, 700.00, '2025-03-06'),
(15, 5, 750.00, '2025-03-06'),
(16, 1, 600.00, '2025-03-07'),
(17, 2, 300.00, '2025-03-07'),
(18, 3, 450.00, '2025-03-07'),
(19, 4, 500.00, '2025-03-07'),
(20, 5, 650.00, '2025-03-07'),
(21, 1, 800.00, '2025-03-08'),
(22, 2, 900.00, '2025-03-08'),
(23, 3, 1000.00, '2025-03-08'),
(24, 4, 1100.00, '2025-03-08'),
(25, 5, 1200.00, '2025-03-08'),
(26, 1, 400.00, '2025-03-09'),
(27, 2, 600.00, '2025-03-09'),
(28, 3, 700.00, '2025-03-09'),
(29, 4, 800.00, '2025-03-09'),
(30, 5, 900.00, '2025-03-09'),
(31, 1, 500.00, '2025-03-10'),
(32, 2, 700.00, '2025-03-10'),
(33, 3, 800.00, '2025-03-10'),
(34, 4, 900.00, '2025-03-10'),
(35, 5, 1000.00, '2025-03-10'),
(36, 1, 550.00, '2025-03-11'),
(37, 2, 750.00, '2025-03-11'),
(38, 3, 850.00, '2025-03-11'),
(39, 4, 950.00, '2025-03-11'),
(40, 5, 1050.00, '2025-03-11');
select *from employees
select *from sales 
--Write a query to find the total sales per employee using a derived table.
select e.employeeid, e.employeename, total_sales from employees e
join (select s.employeeid, sum(s.saleamount) as total_sales  from sales s 
group by s.employeeid) as [total sales] on [total sales].employeeid=e.employeeid
--task 2 Create a CTE to find the average salary of employees.
-- DDL: Creating Tables
CREATE TABLE Employees99 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- DML: Inserting Data
INSERT INTO Employees99 (EmployeeID, EmployeeName, Salary) VALUES
(1, 'Alice', 5000.00),
(2, 'Bob', 5500.00),
(3, 'Charlie', 6000.00),
(4, 'David', 6200.00),
(5, 'Emma', 5800.00),
(6, 'Frank', 5400.00),
(7, 'Grace', 5300.00),
(8, 'Hannah', 5900.00),
(9, 'Ian', 6100.00),
(10, 'Jack', 5200.00),
(11, 'Karen', 5700.00),
(12, 'Leo', 5600.00),
(13, 'Mona', 6300.00),
(14, 'Nathan', 6400.00),
(15, 'Olivia', 6500.00),
(16, 'Paul', 5100.00),
(17, 'Quincy', 5000.00),
(18, 'Rachel', 5900.00),
(19, 'Sam', 6000.00),
(20, 'Tina', 5800.00),
(21, 'Uma', 6100.00),
(22, 'Victor', 6200.00),
(23, 'Wendy', 6300.00),
(24, 'Xander', 5400.00),
(25, 'Yvonne', 5500.00),
(26, 'Zane', 5600.00),
(27, 'Aaron', 5700.00),
(28, 'Bella', 5800.00),
(29, 'Carter', 5900.00),
(30, 'Diana', 6000.00),
(31, 'Evan', 6100.00),
(32, 'Fiona', 6200.00),
(33, 'George', 6300.00),
(34, 'Helen', 6400.00),
(35, 'Isaac', 6500.00),
(36, 'Julia', 5000.00),
(37, 'Kyle', 5100.00),
(38, 'Liam', 5200.00),
(39, 'Megan', 5300.00),
(40, 'Noah', 5400.00);

select *from employees99
;with cte_avg as(
select employeeid, employeename, salary, avg(salary) over() as average from employees99) 
select *from cte_avg
 --task 3 Write a query using a derived table to find the highest sales for each product.

 -- DDL: Creating Tables
CREATE TABLE Products98 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
);

CREATE TABLE Sales98 (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products98(ProductID)
);

-- DML: Inserting Data
INSERT INTO Products98 (ProductID, ProductName) VALUES
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'Tablet'),
(4, 'Headphones'),
(5, 'Smartwatch'),
(6, 'Monitor'),
(7, 'Keyboard'),
(8, 'Mouse'),
(9, 'Printer'),
(10, 'Camera');

INSERT INTO Sales98 (SaleID, ProductID, SaleAmount, SaleDate) VALUES
(1, 1, 1200.00, '2024-03-01'),
(2, 2, 800.00, '2024-03-02'),
(3, 3, 500.00, '2024-03-03'),
(4, 4, 150.00, '2024-03-04'),
(5, 5, 300.00, '2024-03-05'),
(6, 6, 400.00, '2024-03-06'),
(7, 7, 100.00, '2024-03-07'),
(8, 8, 80.00, '2024-03-08'),
(9, 9, 250.00, '2024-03-09'),
(10, 10, 700.00, '2024-03-10'),
(11, 1, 1300.00, '2024-03-11'),
(12, 2, 850.00, '2024-03-12'),
(13, 3, 600.00, '2024-03-13'),
(14, 4, 200.00, '2024-03-14'),
(15, 5, 350.00, '2024-03-15'),
(16, 6, 450.00, '2024-03-16'),
(17, 7, 120.00, '2024-03-17'),
(18, 8, 90.00, '2024-03-18'),
(19, 9, 270.00, '2024-03-19'),
(20, 10, 750.00, '2024-03-20'),
(21, 1, 1250.00, '2024-03-21'),
(22, 2, 900.00, '2024-03-22'),
(23, 3, 550.00, '2024-03-23'),
(24, 4, 180.00, '2024-03-24'),
(25, 5, 330.00, '2024-03-25'),
(26, 6, 420.00, '2024-03-26'),
(27, 7, 110.00, '2024-03-27'),
(28, 8, 85.00, '2024-03-28'),
(29, 9, 260.00, '2024-03-29'),
(30, 10, 720.00, '2024-03-30'),
(31, 1, 1350.00, '2024-03-31'),
(32, 2, 950.00, '2024-04-01'),
(33, 3, 580.00, '2024-04-02'),
(34, 4, 210.00, '2024-04-03'),
(35, 5, 360.00, '2024-04-04'),
(36, 6, 470.00, '2024-04-05'),
(37, 7, 130.00, '2024-04-06'),
(38, 8, 95.00, '2024-04-07'),
(39, 9, 280.00, '2024-04-08'),
(40, 10, 770.00, '2024-04-09');
select *from products98
select*from sales98
--Write a query using a derived table to find the highest sales for each product.
select distinct a.productid, a.productname , d.max_amount from products98 a
join(select b.saleid, b.productid, b.saleamount, b.saledate, max(b.saleamount)
over(partition by b.productid) as max_amount from sales98 b) as d  on a.productid=d.productid
SELECT p.ProductID, p.ProductName, d.MaxAmount
FROM Products98 p,
    (SELECT ProductID, MAX(SaleAmount) AS MaxAmount 
     FROM Sales98 
     GROUP BY ProductID) d
WHERE p.ProductID = d.ProductID;
select a.productname, a.productid, ( select  max(saleamount) as max_amount from sales98 b 
where a.productid=b.productid) 
from products98 a 
--task 4
--Use a CTE to get the names of employees who have made more than 5 sales.
CREATE TABLE Employees100 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100)
);

CREATE TABLE Sales100 (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees100(EmployeeID)
);
-- Employees jadvali
INSERT INTO Employees100 (EmployeeID, EmployeeName) VALUES
(1, 'John Doe'), (2, 'Jane Smith'), (3, 'Robert Brown'), 
(4, 'Emily Davis'), (5, 'Michael Johnson'), (6, 'Sarah Wilson');

-- Sales jadvali (har bir xodimga kamida 40 ta yozuv)
INSERT INTO Sales100 (SaleID, EmployeeID, SaleAmount, SaleDate) VALUES
(1, 1, 200.00, '2024-01-10'), (2, 1, 150.00, '2024-01-11'),
(3, 1, 300.00, '2024-01-12'), (4, 1, 250.00, '2024-01-13'),
(5, 1, 400.00, '2024-01-14'), (6, 1, 220.00, '2024-01-15'),
(7, 2, 500.00, '2024-01-10'), (8, 2, 450.00, '2024-01-11'),
(9, 2, 600.00, '2024-01-12'), (10, 2, 350.00, '2024-01-13'),
(11, 2, 300.00, '2024-01-14'), (12, 2, 520.00, '2024-01-15'),
(13, 3, 400.00, '2024-01-10'), (14, 3, 300.00, '2024-01-11'),
(15, 3, 450.00, '2024-01-12'), (16, 3, 250.00, '2024-01-13'),
(17, 3, 300.00, '2024-01-14'), (18, 3, 500.00, '2024-01-15'),
(19, 4, 600.00, '2024-01-10'), (20, 4, 200.00, '2024-01-11'),
(21, 4, 300.00, '2024-01-12'), (22, 4, 150.00, '2024-01-13'),
(23, 4, 400.00, '2024-01-14'), (24, 4, 520.00, '2024-01-15'),
(25, 5, 350.00, '2024-01-10'), (26, 5, 220.00, '2024-01-11'),
(27, 5, 300.00, '2024-01-12'), (28, 5, 280.00, '2024-01-13'),
(29, 5, 500.00, '2024-01-14'), (30, 5, 410.00, '2024-01-15'),
(31, 6, 700.00, '2024-01-10'), (32, 6, 300.00, '2024-01-11'),
(33, 6, 600.00, '2024-01-12'), (34, 6, 320.00, '2024-01-13'),
(35, 6, 450.00, '2024-01-14'), (36, 6, 520.00, '2024-01-15');
select *from employees100
select *from sales100
--Use a CTE to get the names of employees who have made more than 5 sales.
select a.employeename from employees100 a , (
select b.employeeid  from sales100 b group by b.employeeid 
having count(*)>5) as d  where d.employeeid=a.employeeid
 select a.employeename,  b.employeeid, count(b.saleamount) as total  from employees100 a 
 join sales100 b on a.employeeid=b.employeeid 
 group by a.employeename, b.employeeid
 having count(saleamount)>5
 ;with cte_total as( select a.employeeid, count(*)as total from sales100 a  
 group by a.employeeid  having count(*)>5) 
 select b.employeename from employees100 b join cte_total s on b.employeeid=s.employeeid
 --task 5 Create a derived table that lists the top 5 customers by total purchase amount.
 -- DDL: Jadval yaratish
CREATE TABLE Customers96 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Sales96 (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers96(CustomerID)
);

-- DML: 40+ qator qo'shish
INSERT INTO Customers96 (CustomerID, CustomerName) VALUES
(1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David'), (5, 'Eve'),
(6, 'Frank'), (7, 'Grace'), (8, 'Hannah'), (9, 'Isaac'), (10, 'Jack');

INSERT INTO Sales96 (SaleID, CustomerID, SaleAmount, SaleDate) VALUES
(1, 1, 500.00, '2025-01-01'), (2, 2, 700.00, '2025-01-02'),
(3, 3, 1200.00, '2025-01-03'), (4, 4, 400.00, '2025-01-04'),
(5, 5, 600.00, '2025-01-05'), (6, 1, 300.00, '2025-01-06'),
(7, 2, 800.00, '2025-01-07'), (8, 3, 500.00, '2025-01-08'),
(9, 4, 900.00, '2025-01-09'), (10, 5, 1000.00, '2025-01-10'),
(11, 6, 1100.00, '2025-01-11'), (12, 7, 1300.00, '2025-01-12'),
(13, 8, 200.00, '2025-01-13'), (14, 9, 600.00, '2025-01-14'),
(15, 10, 700.00, '2025-01-15'), (16, 6, 1400.00, '2025-01-16'),
(17, 7, 800.00, '2025-01-17'), (18, 8, 500.00, '2025-01-18'),
(19, 9, 1000.00, '2025-01-19'), (20, 10, 400.00, '2025-01-20'),
(21, 1, 700.00, '2025-01-21'), (22, 2, 900.00, '2025-01-22'),
(23, 3, 1500.00, '2025-01-23'), (24, 4, 1300.00, '2025-01-24'),
(25, 5, 1200.00, '2025-01-25'), (26, 6, 500.00, '2025-01-26'),
(27, 7, 900.00, '2025-01-27'), (28, 8, 600.00, '2025-01-28'),
(29, 9, 1100.00, '2025-01-29'), (30, 10, 800.00, '2025-01-30'),
(31, 1, 400.00, '2025-02-01'), (32, 2, 1100.00, '2025-02-02'),
(33, 3, 1300.00, '2025-02-03'), (34, 4, 1500.00, '2025-02-04'),
(35, 5, 1400.00, '2025-02-05'), (36, 6, 1600.00, '2025-02-06'),
(37, 7, 1000.00, '2025-02-07'), (38, 8, 1200.00, '2025-02-08'),
(39, 9, 1300.00, '2025-02-09'), (40, 10, 900.00, '2025-02-10');
select *from customers96
select *from sales96
--Create a derived table that lists the top 5 customers by total purchase amount.
select top 5 a.customername, a.customerid   from customers96 a ,(select b.customerid, sum(b.saleamount) as total from sales96 b
group by b.customerid ) as s where a.customerid=s.customerid 
select top 5 a.customername, a.customerid   from customers96 a join (select b.customerid, sum(b.saleamount) as total from sales96 b
group by b.customerid) as f on f.customerid=a.customerid
 --task6 
 --Write a query using a CTE to find all products with sales greater than $500.
 -- DDL: Jadval yaratish
CREATE TABLE products101 (
    productid INT PRIMARY KEY,
    productname VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE sales101 (
    saleid INT PRIMARY KEY,
    productid INT,
    saleamount DECIMAL(10,2),
    saledate DATE,
    FOREIGN KEY (productid) REFERENCES products101(productid)
);

-- DML: Ma'lumot qo'shish
INSERT INTO products101 (productid, productname, price) VALUES
(1, 'Product A', 50.00),
(2, 'Product B', 30.00),
(3, 'Product C', 100.00),
(4, 'Product D', 80.00),
(5, 'Product E', 120.00);
select *from products101
select *from sales101
--Write a query using a CTE to find all products with sales greater than $500.
;with cte_products as (select a.productname, a.price , b.saleid, b.saleamount, b.saledate  from products101 a
join sales101 b on a.productid=b.productid where  b.saleamount>500)
select* from  cte_products 
-- DDL: Jadval yaratish
CREATE TABLE customers102 (
    customerid INT PRIMARY KEY,
    customername VARCHAR(100)
);

CREATE TABLE orders102 (
    orderid INT PRIMARY KEY,
    customerid INT,
    orderdate DATE,
    FOREIGN KEY (customerid) REFERENCES customers102(customerid)
);

-- DML: Ma'lumot qo'shish
INSERT INTO customers102 (customerid, customername) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Emma');
INSERT INTO orders102 (orderid, customerid, orderdate) VALUES
(1, 1, '2025-03-01'),
(2, 1, '2025-03-02'),
(3, 2, '2025-03-03'),
(4, 2, '2025-03-04'),
(5, 2, '2025-03-05'),
(6, 3, '2025-03-06'),
(7, 3, '2025-03-07'),
(8, 3, '2025-03-08'),
(9, 3, '2025-03-09'),
(10, 4, '2025-03-10'),
(11, 4, '2025-03-11'),
(12, 5, '2025-03-12');
select *from customers102
select *from orders102
--Use a derived table to get the total number of orders for each customer.
select a.customername, d.total from customers102 a join(select
count(b.orderid) as total, b.customerid from orders102 b group by b.customerid)  as d on d.customerid=a.customerid 
select distinct b.customerid , a.customername, 
count(b.orderid)  over(partition by b.customerid ) as total from orders102 b 
 left join customers102 a on a.customerid=b.customerid
 --task 8
 --Create a CTE to find employees with salaries above the average salary.
-- DDL: Jadval yaratish
CREATE TABLE employees103 (
    employeeid INT PRIMARY KEY,
    employeename VARCHAR(100),
    salary DECIMAL(10,2)
);

-- DML: 40+ ta ma'lumot qo'shish
INSERT INTO employees103 (employeeid, employeename, salary) VALUES
(1, 'John Doe', 50000),
(2, 'Jane Smith', 60000),
(3, 'Alice Johnson', 55000),
(4, 'Bob Brown', 70000),
(5, 'Charlie White', 48000),
(6, 'David Black', 52000),
(7, 'Eve Adams', 75000),
(8, 'Frank Harris', 68000),
(9, 'Grace Hall', 73000),
(10, 'Hank Green', 64000),
(11, 'Ivy Lewis', 57000),
(12, 'Jack King', 62000),
(13, 'Karen Scott', 59000),
(14, 'Leo Baker', 53000),
(15, 'Mona Carter', 49000),
(16, 'Nancy Evans', 51000),
(17, 'Oscar Foster', 56000),
(18, 'Paul Allen', 76000),
(19, 'Quincy Young', 78000),
(20, 'Rachel Turner', 67000),
(21, 'Sam Walker', 71000),
(22, 'Tina Adams', 65000),
(23, 'Uma Mitchell', 50000),
(24, 'Victor Perez', 60000),
(25, 'Wendy Rogers', 74000),
(26, 'Xander Diaz', 58000),
(27, 'Yvonne Cruz', 69000),
(28, 'Zane Ramirez', 55000),
(29, 'Aaron Murphy', 53000),
(30, 'Bella Gonzales', 62000),
(31, 'Caleb Cooper', 60000),
(32, 'Diana Reed', 58000),
(33, 'Ethan Hughes', 64000),
(34, 'Fiona Scott', 75000),
(35, 'George Lopez', 77000),
(36, 'Hannah Wood', 80000),
(37, 'Isaac Bell', 69000),
(38, 'Julia Perry', 73000),
(39, 'Kevin Brooks', 61000),
(40, 'Lily Edwards', 57000);
select *from employees103
--Create a CTE to find employees with salaries above the average salary.
;with cte_d as (select a.employeeid, a.employeename, a.salary, avg(a.salary) over() as avg_salary from employees103 a) 
select *from cte_d where salary>(select avg(salary) from employees103) 
--task 9 Write a query to find the total number of products sold using a derived table.
-- DDL: Jadval yaratish
CREATE TABLE products104 (
    productid INT PRIMARY KEY,
    productname VARCHAR(255),
    category VARCHAR(100)
);

CREATE TABLE sales104 (
    saleid INT PRIMARY KEY,
    productid INT,
    quantity_sold INT,
    saledate DATE,
    FOREIGN KEY (productid) REFERENCES products104(productid)
);


INSERT INTO products104 (productid, productname, category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Smartphone', 'Electronics'),
(3, 'Tablet', 'Electronics'),
(4, 'Headphones', 'Accessories'),
(5, 'Monitor', 'Electronics'),
(6, 'Keyboard', 'Accessories'),
(7, 'Mouse', 'Accessories'),
(8, 'Printer', 'Office'),
(9, 'Desk Chair', 'Furniture'),
(10, 'USB Drive', 'Accessories');

INSERT INTO sales104 (saleid, productid, quantity_sold, saledate) VALUES
(1, 1, 5, '2024-03-01'),
(2, 2, 10, '2024-03-02'),
(3, 3, 7, '2024-03-03'),
(4, 4, 8, '2024-03-04'),
(5, 5, 6, '2024-03-05'),
(6, 6, 12, '2024-03-06'),
(7, 7, 9, '2024-03-07'),
(8, 8, 4, '2024-03-08'),
(9, 9, 3, '2024-03-09'),
(10, 10, 11, '2024-03-10');
select *from products104
select *from sales104
--Write a query to find the total number of products sold using a derived table.
select a.productname, a.category,sum( s.total ) over(partition by a.category) as total_1 , s.total
from products104 a join (select b.productid,sum(b.quantity_sold)
as total from sales104 b group by productid ) as s on s.productid=a.productid

--task 10
--Use a CTE to find the names of employees who have not made any sales.
-- Employees jadvali
CREATE TABLE employees105 (
    employeeid INT PRIMARY KEY,
    employeename VARCHAR(100)
);


CREATE TABLE sales105 (
    saleid INT PRIMARY KEY,
    employeeid INT,
    saleamount DECIMAL(10,2),
    saledate DATE,
    FOREIGN KEY (employeeid) REFERENCES employees105(employeeid)
);

INSERT INTO employees105 (employeeid, employeename) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Michael Brown'),
(4, 'Emily Davis'),
(5, 'David Wilson'),
(6, 'Sophia Martinez'),
(7, 'Daniel Anderson'),
(8, 'Olivia Thomas'),
(9, 'James White'),
(10, 'Emma Harris');


INSERT INTO sales105 (saleid, employeeid, saleamount, saledate) VALUES
(1, 1, 500.00, '2025-03-01'),
(2, 2, 300.00, '2025-03-02'),
(3, 1, 200.00, '2025-03-03'),
(4, 4, 150.00, '2025-03-04'),
(5, 5, 400.00, '2025-03-05'),
(6, 2, 100.00, '2025-03-06'),
(7, 3, 250.00, '2025-03-07'),
(8, 5, 350.00, '2025-03-08'),
(9, 6, 450.00, '2025-03-09'),
(10, 8, 550.00, '2025-03-10'),
(11, 9, 600.00, '2025-03-11'),
(12, 1, 700.00, '2025-03-12'),
(13, 4, 200.00, '2025-03-13'),
(14, 2, 500.00, '2025-03-14'),
(15, 7, 350.00, '2025-03-15'),
(16, 8, 150.00, '2025-03-16'),
(17, 10, 450.00, '2025-03-17'),
(18, 3, 250.00, '2025-03-18'),
(19, 6, 400.00, '2025-03-19'),
(20, 9, 300.00, '2025-03-20'),
(21, 5, 500.00, '2025-03-21'),
(22, 7, 600.00, '2025-03-22'),
(23, 8, 700.00, '2025-03-23'),
(24, 9, 800.00, '2025-03-24'),
(25, 10, 900.00, '2025-03-25');
select *from sales105
select *from employees105
--Use a CTE to find the names of employees who have not made any sales.
;with cte as ( select a.employeename, b.saleid,  b.saledate  from employees105 a
left join  sales105 b on b.employeeid =a.employeeid where saleid is  null)  select *from cte 
--task 11 
--Write a query using a derived table to calculate the total revenue for each region.
CREATE TABLE regions106 (
    regionid INT PRIMARY KEY,
    regionname VARCHAR(100)
);

CREATE TABLE sales106 (
    saleid INT PRIMARY KEY,
    regionid INT,
    saleamount DECIMAL(10,2),
    saledate DATE,
    FOREIGN KEY (regionid) REFERENCES regions106(regionid)
);
INSERT INTO regions106 (regionid, regionname) VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West');

INSERT INTO sales106 (saleid, regionid, saleamount, saledate) VALUES
(1, 1, 1000.50, '2025-01-10'),
(2, 1, 1500.75, '2025-01-11'),
(3, 2, 1200.00, '2025-01-12'),
(4, 2, 2500.25, '2025-01-13'),
(5, 3, 1800.40, '2025-01-14'),
(6, 3, 2200.60, '2025-01-15'),
(7, 4, 3000.00, '2025-01-16'),
(8, 4, 2700.90, '2025-01-17'),
(9, 1, 3100.30, '2025-01-18'),
(10, 2, 2900.80, '2025-01-19'),
(11, 3, 3300.25, '2025-01-20'),
(12, 4, 4100.55, '2025-01-21'),
(13, 1, 5200.10, '2025-01-22'),
(14, 2, 4300.45, '2025-01-23'),
(15, 3, 2900.75, '2025-01-24'),
(16, 4, 3200.60, '2025-01-25'),
(17, 1, 2700.30, '2025-01-26'),
(18, 2, 3500.50, '2025-01-27'),
(19, 3, 2900.20, '2025-01-28'),
(20, 4, 2600.85, '2025-01-29'),
(21, 1, 4200.90, '2025-01-30'),
(22, 2, 4100.75, '2025-01-31'),
(23, 3, 3900.65, '2025-02-01'),
(24, 4, 4700.35, '2025-02-02'),
(25, 1, 5200.00, '2025-02-03'),
(26, 2, 5300.80, '2025-02-04'),
(27, 3, 3100.95, '2025-02-05'),
(28, 4, 3800.70, '2025-02-06'),
(29, 1, 2900.25, '2025-02-07'),
(30, 2, 2700.55, '2025-02-08'),
(31, 3, 3500.75, '2025-02-09'),
(32, 4, 3700.80, '2025-02-10'),
(33, 1, 2500.45, '2025-02-11'),
(34, 2, 2800.95, '2025-02-12'),
(35, 3, 3000.20, '2025-02-13'),
(36, 4, 4500.55, '2025-02-14'),
(37, 1, 3400.10, '2025-02-15'),
(38, 2, 3800.40, '2025-02-16'),
(39, 3, 3200.90, '2025-02-17'),
(40, 4, 2900.35, '2025-02-18');
select *from regions106 
select *from sales106
--Write a query using a derived table to calculate the total revenue for each region.
select a.regionname, d.total from regions106 a join
( select b.regionid, sum(b.saleamount) as total from sales106 b  group by b.regionid ) as d on  d.regionid=a.regionid
--task 12
--Use a CTE to get the employees who worked for more than 5 years.
CREATE TABLE employees107 (
    employeeid INT PRIMARY KEY,
    employeename VARCHAR(100),
    hiredate DATE
);
INSERT INTO employees107 (employeeid, employeename, hiredate) VALUES
(1, 'John Doe', '2015-02-15'),
(2, 'Jane Smith', '2017-06-23'),
(3, 'Michael Brown', '2018-09-12'),
(4, 'Emily Davis', '2014-11-05'),
(5, 'Daniel Wilson', '2016-07-19'),
(6, 'Sophia Martinez', '2013-03-25'),
(7, 'David Anderson', '2012-08-30'),
(8, 'Olivia Thomas', '2010-12-17'),
(9, 'James White', '2019-05-10'),
(10, 'Isabella Harris', '2016-01-27'),
(11, 'William Clark', '2011-09-14'),
(12, 'Mia Rodriguez', '2015-04-06'),
(13, 'Benjamin Lewis', '2014-06-20'),
(14, 'Charlotte Walker', '2013-02-18'),
(15, 'Alexander Hall', '2017-10-11'),
(16, 'Amelia Allen', '2018-05-03'),
(17, 'Ethan Young', '2019-08-22'),
(18, 'Harper King', '2011-11-30'),
(19, 'Daniel Scott', '2012-07-25'),
(20, 'Ella Green', '2010-04-15'),
(21, 'Jacob Adams', '2013-10-19'),
(22, 'Ava Baker', '2016-12-08'),
(23, 'Michael Nelson', '2017-02-21'),
(24, 'Sophia Carter', '2015-07-14'),
(25, 'William Perez', '2012-05-29'),
(26, 'Emily Roberts', '2013-06-17'),
(27, 'James Wright', '2019-03-09'),
(28, 'Isabella Turner', '2018-09-27'),
(29, 'Mason Phillips', '2010-10-31'),
(30, 'Evelyn Campbell', '2011-08-24'),
(31, 'Logan Parker', '2015-12-01'),
(32, 'Abigail Evans', '2016-09-16'),
(33, 'Lucas Edwards', '2014-05-07'),
(34, 'Madison Collins', '2012-01-23'),
(35, 'Henry Stewart', '2013-07-09'),
(36, 'Sofia Morris', '2011-02-10'),
(37, 'Samuel Rogers', '2014-04-30'),
(38, 'Lily Reed', '2015-11-12'),
(39, 'Jack Cook', '2010-03-05'),
(40, 'Zoe Bell', '2016-06-28');
select *from employees107
--Use a CTE to get the employees who worked for more than 5 years.
;with cte as( select a.hiredate, a.employeename from employees107 a)
select *from  cte
where hiredate<dateadd(year, -5, (select max(hiredate) from employees107))
--task 13 
--Create a query using a derived table to find customers who made more than 3 orders.
CREATE TABLE Customers108 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders108 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers108(CustomerID)
);
INSERT INTO Customers108 (CustomerID, CustomerName) VALUES
(1, 'John Doe'),
(2, 'Alice Smith'),
(3, 'Bob Johnson'),
(4, 'Charlie Brown'),
(5, 'David White'),
(6, 'Emma Davis'),
(7, 'Frank Wilson'),
(8, 'Grace Hall'),
(9, 'Henry Allen'),
(10, 'Ivy Adams');

INSERT INTO Orders108 (OrderID, CustomerID, OrderDate) VALUES
(1, 1, '2024-01-10'),
(2, 1, '2024-01-15'),
(3, 1, '2024-02-01'),
(4, 2, '2024-02-10'),
(5, 2, '2024-02-15'),
(6, 2, '2024-02-20'),
(7, 3, '2024-03-05'),
(8, 3, '2024-03-10'),
(9, 3, '2024-03-15'),
(10, 4, '2024-03-20'),
(11, 5, '2024-04-01'),
(12, 5, '2024-04-05'),
(13, 5, '2024-04-10'),
(14, 5, '2024-04-15'),
(15, 6, '2024-05-01'),
(16, 6, '2024-05-05'),
(17, 6, '2024-05-10'),
(18, 6, '2024-05-15'),
(19, 7, '2024-06-01'),
(20, 7, '2024-06-05'),
(21, 7, '2024-06-10'),
(22, 7, '2024-06-15'),
(23, 8, '2024-07-01'),
(24, 8, '2024-07-05'),
(25, 8, '2024-07-10'),
(26, 8, '2024-07-15'),
(27, 9, '2024-08-01'),
(28, 9, '2024-08-05'),
(29, 9, '2024-08-10'),
(30, 9, '2024-08-15'),
(31, 10, '2024-09-01'),
(32, 10, '2024-09-05'),
(33, 10, '2024-09-10'),
(34, 10, '2024-09-15'),
(35, 1, '2024-10-01'),
(36, 2, '2024-10-05'),
(37, 3, '2024-10-10'),
(38, 4, '2024-10-15'),
(39, 5, '2024-11-01'),
(40, 6, '2024-11-05');
select *from customers108
select *from orders108
--Create a query using a derived table to find customers who made more than 3 orders.
select a.customername, g.total from customers108 a
join ( select customerid,  count(orderid) total from orders108 group by customerid) as g
on a.customerid=g.customerid 
where g.total>3
;with cte as( select distinct a.customername,  b.customerid,
count(b.orderid) over(partition by b.customerid) as total from customers108 a
join orders108 b on b.customerid=a.customerid ) 
select *from cte where total>3
--task 14 Write a query using a CTE to find employees with the highest sales in a specific department.
CREATE TABLE Employees109 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT
);

CREATE TABLE Sales109 (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees109(EmployeeID)
);

CREATE TABLE Departments109 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Employees109 (EmployeeID, EmployeeName, DepartmentID) VALUES
(1, 'Alice', 101), (2, 'Bob', 101), (3, 'Charlie', 102), (4, 'David', 102),
(5, 'Eve', 103), (6, 'Frank', 103), (7, 'Grace', 101), (8, 'Hank', 102),
(9, 'Ivy', 103), (10, 'Jack', 101), (11, 'Karen', 102), (12, 'Leo', 103);

INSERT INTO Departments109 (DepartmentID, DepartmentName) VALUES
(101, 'Sales'), (102, 'Marketing'), (103, 'IT');

INSERT INTO Sales109 (SaleID, EmployeeID, SaleAmount, SaleDate) VALUES
(1, 1, 1000, '2024-01-10'), (2, 2, 1500, '2024-01-12'), (3, 3, 2000, '2024-01-15'),
(4, 4, 1800, '2024-01-18'), (5, 5, 2200, '2024-01-20'), (6, 6, 3000, '2024-01-22'),
(7, 7, 2500, '2024-01-25'), (8, 8, 2800, '2024-01-28'), (9, 9, 3200, '2024-01-30'),
(10, 10, 1700, '2024-02-02'), (11, 11, 2900, '2024-02-05'), (12, 12, 3100, '2024-02-08');
select *from employees109
select *from departments109
select *from sales109
--Write a query using a CTE to find employees with the highest sales in a specific department.
;with cte as (select e.employeename, e.employeeid, d.departmentname from employees109 e
join departments109 d on e.departmentid=d.departmentid ),
cte1 as (select e.employeename, s.employeeid, max(saleamount) over( partition by s.employeeid) as max_a  from employees109  e
join sales109 s on s.employeeid=e.employeeid) 
select d.employeename, s.max_a, departmentname from cte d 
join cte1 s on d.employeeid=s.employeeid
--task 15
----Use a derived table to calculate the average order value for each customer.
-- DDL: Jadval yaratish
CREATE TABLE Customers110 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders110 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers110(CustomerID)
);

-- DML: Ma'lumotlar qo'shish (kamida 40 ta)
INSERT INTO Customers110 (CustomerID, CustomerName) VALUES
(1, 'Customer A'), (2, 'Customer B'), (3, 'Customer C'),
(4, 'Customer D'), (5, 'Customer E'), (6, 'Customer F'),
(7, 'Customer G'), (8, 'Customer H'), (9, 'Customer I'),
(10, 'Customer J');

INSERT INTO Orders110 (OrderID, CustomerID, OrderAmount, OrderDate) VALUES
(1, 1, 150.00, '2024-01-01'), (2, 1, 200.00, '2024-01-05'),
(3, 2, 300.00, '2024-01-10'), (4, 2, 250.00, '2024-01-12'),
(5, 3, 500.00, '2024-02-01'), (6, 3, 450.00, '2024-02-05'),
(7, 4, 600.00, '2024-02-10'), (8, 4, 700.00, '2024-02-15'),
(9, 5, 100.00, '2024-03-01'), (10, 5, 150.00, '2024-03-05'),
(11, 6, 400.00, '2024-03-10'), (12, 6, 350.00, '2024-03-15'),
(13, 7, 800.00, '2024-04-01'), (14, 7, 900.00, '2024-04-05'),
(15, 8, 120.00, '2024-04-10'), (16, 8, 130.00, '2024-04-15'),
(17, 9, 220.00, '2024-05-01'), (18, 9, 240.00, '2024-05-05'),
(19, 10, 550.00, '2024-05-10'), (20, 10, 600.00, '2024-05-15');
select *from customers110
select *from orders110
--Use a derived table to calculate the average order value for each customer.
select a.customername , d.avg_total from customers110 a join( select b.customerid, avg(b. orderamount) as avg_total from orders110 b
group by b.customerid ) as d on d.customerid=a.customerid
--task 16 Write a query using a CTE to find the number of employees in each department.
-- DDL: Jadval yaratish
CREATE TABLE Departments111 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees111 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments111(DepartmentID)
);

-- DML: Ma'lumotlar qo'shish (kamida 40 ta)
INSERT INTO Departments111 (DepartmentID, DepartmentName) VALUES
(1, 'HR'), (2, 'IT'), (3, 'Finance'),
(4, 'Marketing'), (5, 'Sales');

INSERT INTO Employees111 (EmployeeID, EmployeeName, DepartmentID) VALUES
(1, 'Alice', 1), (2, 'Bob', 1), (3, 'Charlie', 1),
(4, 'David', 2), (5, 'Emma', 2), (6, 'Frank', 2),
(7, 'Grace', 3), (8, 'Henry', 3), (9, 'Isabella', 3),
(10, 'Jack', 4), (11, 'Karen', 4), (12, 'Leo', 4),
(13, 'Mia', 5), (14, 'Nathan', 5), (15, 'Olivia', 5),
(16, 'Paul', 1), (17, 'Quinn', 2), (18, 'Rachel', 3),
(19, 'Samuel', 4), (20, 'Tina', 5), (21, 'Uma', 1),
(22, 'Victor', 2), (23, 'Wendy', 3), (24, 'Xavier', 4),
(25, 'Yvonne', 5), (26, 'Zack', 1), (27, 'Amy', 2),
(28, 'Brian', 3), (29, 'Catherine', 4), (30, 'Daniel', 5),
(31, 'Ethan', 1), (32, 'Fiona', 2), (33, 'George', 3),
(34, 'Hannah', 4), (35, 'Ian', 5), (36, 'Julia', 1),
(37, 'Kevin', 2), (38, 'Lily', 3), (39, 'Michael', 4),
(40, 'Nora', 5);
select *from departments111
select *from employees111
--Write a query using a CTE to find the number of employees in each department.
;with cte as( select distinct a.departmentname, 
 b.departmentid ,count(b.employeeid) over( partition by b.departmentid) as total from departments111 a
join employees111 b on b.departmentid=a.departmentid) select *from cte
--task 17 Use a derived table to find the top-selling products in the last quarter.
CREATE TABLE Products112 (
    productid INT PRIMARY KEY,
    productname VARCHAR(255),
    category VARCHAR(100)
);

CREATE TABLE Sales112 (
    saleid INT PRIMARY KEY,
    productid INT,
    saleamount DECIMAL(10,2),
    saledate DATE,
    FOREIGN KEY (productid) REFERENCES Products112(productid)
);
INSERT INTO Products112 (productid, productname, category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Smartphone', 'Electronics'),
(3, 'Tablet', 'Electronics'),
(4, 'Headphones', 'Accessories'),
(5, 'Smartwatch', 'Accessories'),
(6, 'TV', 'Electronics'),
(7, 'Gaming Console', 'Gaming'),
(8, 'Keyboard', 'Accessories'),
(9, 'Mouse', 'Accessories'),
(10, 'Monitor', 'Electronics');

INSERT INTO Sales112 (saleid, productid, saleamount, saledate) VALUES
(1, 1, 1200.00, '2024-10-05'),
(2, 2, 800.00, '2024-10-12'),
(3, 3, 600.00, '2024-11-08'),
(4, 4, 150.00, '2024-11-20'),
(5, 5, 300.00, '2024-12-05'),
(6, 6, 1400.00, '2024-12-15'),
(7, 7, 500.00, '2024-12-22'),
(8, 8, 100.00, '2024-10-30'),
(9, 9, 75.00, '2024-11-10'),
(10, 10, 700.00, '2024-12-25'),
(11, 1, 1300.00, '2024-10-18'),
(12, 2, 900.00, '2024-11-02'),
(13, 3, 650.00, '2024-11-28'),
(14, 4, 175.00, '2024-12-12'),
(15, 5, 350.00, '2024-12-30'),
(16, 6, 1450.00, '2024-12-08'),
(17, 7, 550.00, '2024-10-22'),
(18, 8, 110.00, '2024-11-18'),
(19, 9, 85.00, '2024-12-03'),
(20, 10, 750.00, '2024-12-28'),
(21, 1, 1250.00, '2024-10-09'),
(22, 2, 850.00, '2024-11-06'),
(23, 3, 620.00, '2024-11-23'),
(24, 4, 160.00, '2024-12-18'),
(25, 5, 310.00, '2024-12-26'),
(26, 6, 1425.00, '2024-12-10'),
(27, 7, 525.00, '2024-10-15'),
(28, 8, 105.00, '2024-11-21'),
(29, 9, 80.00, '2024-12-07'),
(30, 10, 720.00, '2024-12-20'),
(31, 1, 1280.00, '2024-10-14'),
(32, 2, 870.00, '2024-11-09'),
(33, 3, 640.00, '2024-11-25'),
(34, 4, 170.00, '2024-12-16'),
(35, 5, 330.00, '2024-12-29'),
(36, 6, 1430.00, '2024-12-14'),
(37, 7, 540.00, '2024-10-19'),
(38, 8, 108.00, '2024-11-22'),
(39, 9, 82.00, '2024-12-05'),
(40, 10, 740.00, '2024-12-27');
select *from products112
select *from sales112
--Use a derived table to find the top-selling products in the last quarter.
select a.productname, a.category, d.top_selling from products112 a 
join ( select b.productid ,sum(b.saleamount)  as top_selling  from sales112 b 
where b.saledate>=dateadd(quarter, -1, (select max( saledate) from sales112))
group by b.productid) d on d.productid=a.productid
order by d.top_selling desc 
--task 18 Write a query using a CTE to list employees who have sales higher than $1000.
CREATE TABLE employees114 (
    employeeid INT PRIMARY KEY,
    employeename VARCHAR(255) NOT NULL
);

CREATE TABLE sales114 (
    saleid INT PRIMARY KEY,
    employeeid INT,
    saleamount DECIMAL(10,2),
    saledate DATE,
    FOREIGN KEY (employeeid) REFERENCES employees113(employeeid)
);
INSERT INTO employees114 (employeeid, employeename) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Robert Johnson');

INSERT INTO sales114 (saleid, employeeid, saleamount, saledate) VALUES
(1, 101, 1200.00, '2025-03-01'),
(2, 101, 800.00, '2025-03-05'),
(3, 102, 600.00, '2025-03-02'),
(4, 102, 500.00, '2025-03-06'),
(5, 103, 1500.00, '2025-03-07');
select *from sales114
select *from employees114 
--Write a query using a CTE to list employees who have sales higher than $1000.
;with cte as (select a.employeename , b.saleid, b.saledate,  b.saleamount from employees114 a
join sales114 b on b.employeeid=a.employeeid ) select *from cte where saleamount>1000 
--task 19  Create a derived table to find the number of orders made by each customer.
-- Create Customers Table
CREATE TABLE Customers115 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Create Orders Table
CREATE TABLE Orders115 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers115(CustomerID)
);

-- Insert Sample Data into Customers
INSERT INTO Customers115 (CustomerID, CustomerName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Insert Sample Data into Orders
INSERT INTO Orders115 (OrderID, CustomerID, OrderDate) VALUES
(101, 1, '2024-03-01'),
(102, 1, '2024-03-02'),
(103, 2, '2024-03-01'),
(104, 3, '2024-03-03'),
(105, 3, '2024-03-04');
select *from customers115
select*from orders115
--Create a derived table to find the number of orders made by each customer.
select a.customername, d.total from customers115 a join (select b.customerid, count(b.orderid) as total from orders115 b group by b.customerid 
) as d on d.customerid=a.customerid
--task 20 
-- Create Employees Table
CREATE TABLE Employees118 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100)
);

-- Create Sales Table
CREATE TABLE Sales118 (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert Sample Data into Employees
INSERT INTO Employees118 (EmployeeID, EmployeeName) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson');

-- Insert Sample Data into Sales
INSERT INTO Sales118 (SaleID, EmployeeID, SaleAmount, SaleDate) VALUES
(101, 1, 500.00, '2024-02-15'),
(102, 1, 700.00, '2024-02-20'),
(103, 2, 300.00, '2024-02-25'),
(104, 3, 900.00, '2024-02-28'),
(105, 3, 400.00, '2024-02-28');
select *from employees118
select *from sales118
--Write a query using a CTE to find the total sales per employee for the last month.
;  with cte as (select distinct a.employeename , sum(b.saleamount) over
( partition by b.employeeid )as total from employees118 a   
join sales118 b on a.employeeid=b.employeeid ) select *from cte 
--medium tasks

--task-1
--Write a query using a CTE to calculate the running total of sales for each employee.
--1-- DDL: Creating the employees_sales table
CREATE TABLE employees_sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT,
    employee_name VARCHAR(100),
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

-- DML: Inserting at least 40 rows of data
INSERT INTO employees_sales (employee_id, employee_name, sale_amount, sale_date)
VALUES 
(1, 'John Doe', 500.00, '2024-01-01'),
(2, 'Jane Smith', 700.00, '2024-01-02'),
(1, 'John Doe', 300.00, '2024-01-03'),
(3, 'Robert Brown', 900.00, '2024-01-04'),
(2, 'Jane Smith', 650.00, '2024-01-05'),
(1, 'John Doe', 800.00, '2024-01-06'),
(3, 'Robert Brown', 750.00, '2024-01-07'),
(2, 'Jane Smith', 400.00, '2024-01-08'),
(1, 'John Doe', 950.00, '2024-01-09'),
(3, 'Robert Brown', 620.00, '2024-01-10'),
(2, 'Jane Smith', 870.00, '2024-01-11'),
(1, 'John Doe', 540.00, '2024-01-12'),
(3, 'Robert Brown', 730.00, '2024-01-13'),
(2, 'Jane Smith', 920.00, '2024-01-14'),
(1, 'John Doe', 610.00, '2024-01-15'),
(3, 'Robert Brown', 880.00, '2024-01-16'),
(2, 'Jane Smith', 550.00, '2024-01-17'),
(1, 'John Doe', 430.00, '2024-01-18'),
(3, 'Robert Brown', 670.00, '2024-01-19'),
(2, 'Jane Smith', 780.00, '2024-01-20'),
(1, 'John Doe', 520.00, '2024-01-21'),
(3, 'Robert Brown', 760.00, '2024-01-22'),
(2, 'Jane Smith', 660.00, '2024-01-23'),
(1, 'John Doe', 870.00, '2024-01-24'),
(3, 'Robert Brown', 980.00, '2024-01-25'),
(2, 'Jane Smith', 940.00, '2024-01-26'),
(1, 'John Doe', 790.00, '2024-01-27'),
(3, 'Robert Brown', 810.00, '2024-01-28'),
(2, 'Jane Smith', 720.00, '2024-01-29'),
(1, 'John Doe', 680.00, '2024-01-30'),
(3, 'Robert Brown', 890.00, '2024-01-31'),
(2, 'Jane Smith', 530.00, '2024-02-01'),
(1, 'John Doe', 480.00, '2024-02-02'),
(3, 'Robert Brown', 620.00, '2024-02-03'),
(2, 'Jane Smith', 750.00, '2024-02-04'),
(1, 'John Doe', 940.00, '2024-02-05'),
(3, 'Robert Brown', 990.00, '2024-02-06'),
(2, 'Jane Smith', 860.00, '2024-02-07'),
(1, 'John Doe', 650.00, '2024-02-08'),
(3, 'Robert Brown', 770.00, '2024-02-09');
select *from employees_sales
--Write a query using a CTE to calculate the running total of sales for each employee.

; with cte as (select distinct a .employee_name, a.employee_id,
sum(a.sale_amount) over(partition by a.employee_id
order by a.sale_date rows between unbounded preceding and current row) as running_total ,
sum(a.sale_amount)over(partition by a.employee_id)as total,a.sale_amount, a.sale_date from 
employees_sales a 
) select *from cte order by employee_id, sale_date asc

--task 2
--Use a recursive CTE to generate a sequence of numbers from 1 to 10.
;with numbers as(select 1 as n
union all 
select n+1 from numbers where n<10) select *from numbers
--task 3 Write a query using a derived table to calculate the average sales per region.
-- DDL: Creating the sales_data table
CREATE TABLE sales_data (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    region VARCHAR(100),
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

-- DML: Inserting at least 40 rows of data
INSERT INTO sales_data (region, sale_amount, sale_date)
VALUES 
('North', 500.00, '2024-01-01'),
('South', 700.00, '2024-01-02'),
('East', 300.00, '2024-01-03'),
('West', 900.00, '2024-01-04'),
('North', 650.00, '2024-01-05'),
('South', 800.00, '2024-01-06'),
('East', 750.00, '2024-01-07'),
('West', 400.00, '2024-01-08'),
('North', 950.00, '2024-01-09'),
('South', 620.00, '2024-01-10'),
('East', 870.00, '2024-01-11'),
('West', 540.00, '2024-01-12'),
('North', 730.00, '2024-01-13'),
('South', 920.00, '2024-01-14'),
('East', 610.00, '2024-01-15'),
('West', 880.00, '2024-01-16'),
('North', 550.00, '2024-01-17'),
('South', 430.00, '2024-01-18'),
('East', 670.00, '2024-01-19'),
('West', 780.00, '2024-01-20'),
('North', 520.00, '2024-01-21'),
('South', 760.00, '2024-01-22'),
('East', 660.00, '2024-01-23'),
('West', 870.00, '2024-01-24'),
('North', 980.00, '2024-01-25'),
('South', 940.00, '2024-01-26'),
('East', 790.00, '2024-01-27'),
('West', 810.00, '2024-01-28'),
('North', 720.00, '2024-01-29'),
('South', 680.00, '2024-01-30'),
('East', 890.00, '2024-01-31'),
('West', 530.00, '2024-02-01'),
('North', 480.00, '2024-02-02'),
('South', 620.00, '2024-02-03'),
('East', 750.00, '2024-02-04'),
('West', 940.00, '2024-02-05'),
('North', 990.00, '2024-02-06'),
('South', 860.00, '2024-02-07'),
('East', 650.00, '2024-02-08'),
('West', 770.00, '2024-02-09');
select *from sales_data
--Write a query using a derived table to calculate the average sales per region.
select a.region , d.avg_amount from sales_data a join( select region,  avg(sale_amount) as avg_amount from sales_data 
group by region ) as d on d.region=a.region
--task4  Create a CTE to rank employees based on their total sales.
-- DDL: Creating the employees_sales table
CREATE TABLE employees_sales99 (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT,
    employee_name VARCHAR(100),
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

-- DML: Inserting at least 40 rows of data
INSERT INTO employees_sales99 (employee_id, employee_name, sale_amount, sale_date)
VALUES 
(1, 'John Doe', 500.00, '2024-01-01'),
(2, 'Jane Smith', 700.00, '2024-01-02'),
(3, 'Alice Johnson', 300.00, '2024-01-03'),
(4, 'Bob Williams', 900.00, '2024-01-04'),
(1, 'John Doe', 650.00, '2024-01-05'),
(2, 'Jane Smith', 800.00, '2024-01-06'),
(3, 'Alice Johnson', 750.00, '2024-01-07'),
(4, 'Bob Williams', 400.00, '2024-01-08'),
(1, 'John Doe', 950.00, '2024-01-09'),
(2, 'Jane Smith', 620.00, '2024-01-10'),
(3, 'Alice Johnson', 870.00, '2024-01-11'),
(4, 'Bob Williams', 540.00, '2024-01-12'),
(1, 'John Doe', 730.00, '2024-01-13'),
(2, 'Jane Smith', 920.00, '2024-01-14'),
(3, 'Alice Johnson', 610.00, '2024-01-15'),
(4, 'Bob Williams', 880.00, '2024-01-16'),
(1, 'John Doe', 550.00, '2024-01-17'),
(2, 'Jane Smith', 430.00, '2024-01-18'),
(3, 'Alice Johnson', 670.00, '2024-01-19'),
(4, 'Bob Williams', 780.00, '2024-01-20'),
(1, 'John Doe', 520.00, '2024-01-21'),
(2, 'Jane Smith', 760.00, '2024-01-22'),
(3, 'Alice Johnson', 660.00, '2024-01-23'),
(4, 'Bob Williams', 870.00, '2024-01-24'),
(1, 'John Doe', 980.00, '2024-01-25'),
(2, 'Jane Smith', 940.00, '2024-01-26'),
(3, 'Alice Johnson', 790.00, '2024-01-27'),
(4, 'Bob Williams', 810.00, '2024-01-28'),
(1, 'John Doe', 720.00, '2024-01-29'),
(2, 'Jane Smith', 680.00, '2024-01-30'),
(3, 'Alice Johnson', 890.00, '2024-01-31'),
(4, 'Bob Williams', 530.00, '2024-02-01'),
(1, 'John Doe', 480.00, '2024-02-02'),
(2, 'Jane Smith', 620.00, '2024-02-03'),
(3, 'Alice Johnson', 750.00, '2024-02-04'),
(4, 'Bob Williams', 940.00, '2024-02-05'),
(1, 'John Doe', 990.00, '2024-02-06'),
(2, 'Jane Smith', 860.00, '2024-02-07'),
(3, 'Alice Johnson', 650.00, '2024-02-08'),
(4, 'Bob Williams', 770.00, '2024-02-09');
select *from employees_sales99
--Create a CTE to rank employees based on their total sales.

;with cte as (select a.sale_id, a.employee_id, a.employee_name, a.sale_amount, a.sale_date, b.total_amount,
rank()  over(order by b.total_amount desc) as ranking from employees_sales99 a join (select b.employee_id, sum(b.sale_amount) as total_amount
from employees_sales99 b group by b.employee_id) as b on b.employee_id=a.employee_id) select *from cte 
--task 5 Use a derived table to find the top 5 employees by the number of orders made.
-- DDL: Creating the employee_orders table
CREATE TABLE employee_orders100 (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT,
    employee_name VARCHAR(100),
    order_date DATE
);

-- DML: Inserting at least 40 rows of data
INSERT INTO employee_orders100 (employee_id, employee_name, order_date)
VALUES 
(1, 'John Doe', '2024-01-01'),
(2, 'Jane Smith', '2024-01-02'),
(3, 'Alice Johnson', '2024-01-03'),
(4, 'Bob Williams', '2024-01-04'),
(1, 'John Doe', '2024-01-05'),
(2, 'Jane Smith', '2024-01-06'),
(3, 'Alice Johnson', '2024-01-07'),
(4, 'Bob Williams', '2024-01-08'),
(1, 'John Doe', '2024-01-09'),
(2, 'Jane Smith', '2024-01-10'),
(3, 'Alice Johnson', '2024-01-11'),
(4, 'Bob Williams', '2024-01-12'),
(1, 'John Doe', '2024-01-13'),
(2, 'Jane Smith', '2024-01-14'),
(3, 'Alice Johnson', '2024-01-15'),
(4, 'Bob Williams', '2024-01-16'),
(1, 'John Doe', '2024-01-17'),
(2, 'Jane Smith', '2024-01-18'),
(3, 'Alice Johnson', '2024-01-19'),
(4, 'Bob Williams', '2024-01-20'),
(1, 'John Doe', '2024-01-21'),
(2, 'Jane Smith', '2024-01-22'),
(3, 'Alice Johnson', '2024-01-23'),
(4, 'Bob Williams', '2024-01-24'),
(1, 'John Doe', '2024-01-25'),
(2, 'Jane Smith', '2024-01-26'),
(3, 'Alice Johnson', '2024-01-27'),
(4, 'Bob Williams', '2024-01-28'),
(1, 'John Doe', '2024-01-29'),
(2, 'Jane Smith', '2024-01-30'),
(3, 'Alice Johnson', '2024-01-31'),
(4, 'Bob Williams', '2024-02-01'),
(1, 'John Doe', '2024-02-02'),
(2, 'Jane Smith', '2024-02-03'),
(3, 'Alice Johnson', '2024-02-04'),
(4, 'Bob Williams', '2024-02-05'),
(1, 'John Doe', '2024-02-06'),
(2, 'Jane Smith', '2024-02-07'),
(3, 'Alice Johnson', '2024-02-08'),
(4, 'Bob Williams', '2024-02-09');
select *from employee_orders100
--Use a derived table to find the top 5 employees by the number of orders made.
select distinct top 5  a.employee_name,  b.total_orders from employee_orders100 a join( select employee_id, count(order_id) as total_orders
from employee_orders100 group by employee_id ) as b on b.employee_id=a.employee_id
order by b.total_orders desc
--task 6 Write a query using a recursive CTE to list all employees reporting to a specific manager.
-- Creating the managers table
CREATE TABLE managers121 (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(100)
);

-- Creating the employees table with a reference to the managers table
CREATE TABLE employees121 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT NULL,
    FOREIGN KEY (manager_id) REFERENCES managers121(manager_id)
);

-- Inserting data into managers
INSERT INTO managers121 (manager_id, manager_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Inserting data into employees (linked to managers)
INSERT INTO employees121 (employee_id, employee_name, manager_id) VALUES
(4, 'David', 1),
(5, 'Emma', 1),
(6, 'Frank', 2),
(7, 'Grace', 2),
(8, 'Hank', 3),
(9, 'Ivy', 3);
select*from managers121
select *from employees121
--Write a query using a recursive CTE to list all employees reporting to a specific manager.
; with d as (select a.employee_id, a.employee_name, b.manager_name, a.manager_id  from employees121 a
join managers121 b on a.manager_id=b.manager_id
where b.manager_id in (select manager_id from managers121)

union all
select a.employee_id, a.employee_name, b.manager_name, a.manager_id from employees121 a
join d on  d.employee_id=a.manager_id 
join managers121 b on a.manager_id=b.manager_id)


select *from d 
--task 7
--Use a CTE to calculate the sales difference between the current month and the previous month.
CREATE TABLE sales_data120 (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL(10,2)
);
INSERT INTO sales_data120 (sale_id, sale_date, amount) VALUES
(1, '2024-01-05', 500.00),
(2, '2024-01-15', 700.00),
(3, '2024-01-20', 800.00),
(4, '2024-02-03', 600.00),
(5, '2024-02-10', 750.00),
(6, '2024-02-25', 900.00),
(7, '2024-03-01', 650.00),
(8, '2024-03-12', 1100.00),
(9, '2024-03-18', 500.00),
(10, '2024-04-07', 950.00),
(11, '2024-04-15', 700.00),
(12, '2024-04-28', 1200.00),
(13, '2024-05-02', 400.00),
(14, '2024-05-18', 600.00),
(15, '2024-05-30', 1300.00),
(16, '2024-06-04', 750.00),
(17, '2024-06-14', 1400.00),
(18, '2024-06-22', 800.00),
(19, '2024-07-05', 1600.00),
(20, '2024-07-10', 1000.00),
(21, '2024-07-25', 900.00),
(22, '2024-08-01', 1100.00),
(23, '2024-08-15', 1200.00),
(24, '2024-08-28', 1300.00),
(25, '2024-09-03', 1400.00),
(26, '2024-09-18', 1500.00),
(27, '2024-09-27', 1600.00),
(28, '2024-10-05', 1700.00),
(29, '2024-10-17', 1800.00),
(30, '2024-10-25', 1900.00),
(31, '2024-11-02', 2000.00),
(32, '2024-11-15', 2100.00),
(33, '2024-11-28', 2200.00),
(34, '2024-12-05', 2300.00),
(35, '2024-12-18', 2400.00),
(36, '2024-12-25', 2500.00),
(37, '2025-01-05', 2600.00),
(38, '2025-01-15', 2700.00),
(39, '2025-01-25', 2800.00),
(40, '2025-02-03', 2900.00);
select *from sales_data120
--Use a CTE to calculate the sales difference between the current month and the previous month.
;with differ as ( select a.sale_id, a.sale_date, a.amount, sum(a.amount) 
over(partition by a.sale_date) as total_1, format(a.sale_date, 'dd-mmmm-yyy') as formatted  from sales_data120 a)
select total_1, formatted, lag(total_1) over( order by formatted) as b,  total_1-lag(total_1) over( order by formatted) as dif from differ 

--task 8 Create a derived table to find the employees who have made the highest sales in each department.
CREATE TABLE departments122 (department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

    

CREATE TABLE employees122 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments122(department_id)
);

CREATE TABLE sales122 (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees122(employee_id)
);

-- Bo'limlarni kiritish
INSERT INTO departments122 (department_id, department_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Sports'),
(5, 'Toys');

-- Xodimlarni kiritish
INSERT INTO employees122 (employee_id, employee_name, department_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2),
(104, 'David', 2),
(105, 'Emma', 3),
(106, 'Frank', 3),
(107, 'Grace', 4),
(108, 'Hank', 4),
(109, 'Ivy', 5),
(110, 'Jack', 5);

-- Savdo ma'lumotlarini kiritish (kamida 40 ta)
INSERT INTO sales122 (sale_id, employee_id, sale_amount, sale_date) VALUES
(1, 101, 500.00, '2024-01-10'),
(2, 102, 700.00, '2024-01-12'),
(3, 101, 1200.00, '2024-02-05'),
(4, 102, 300.00, '2024-02-08'),
(5, 103, 800.00, '2024-01-15'),
(6, 104, 650.00, '2024-01-20'),
(7, 103, 1000.00, '2024-02-10'),
(8, 104, 500.00, '2024-02-15'),
(9, 105, 900.00, '2024-01-25'),
(10, 106, 1100.00, '2024-01-28'),
(11, 105, 1300.00, '2024-02-12'),
(12, 106, 750.00, '2024-02-18'),
(13, 107, 950.00, '2024-01-05'),
(14, 108, 650.00, '2024-01-08'),
(15, 107, 1150.00, '2024-02-07'),
(16, 108, 700.00, '2024-02-10'),
(17, 109, 1200.00, '2024-01-12'),
(18, 110, 500.00, '2024-01-14'),
(19, 109, 900.00, '2024-02-15'),
(20, 110, 600.00, '2024-02-20'),
(21, 101, 950.00, '2024-03-01'),
(22, 102, 650.00, '2024-03-05'),
(23, 103, 1100.00, '2024-03-10'),
(24, 104, 800.00, '2024-03-15'),
(25, 105, 1200.00, '2024-03-18'),
(26, 106, 550.00, '2024-03-22'),
(27, 107, 1000.00, '2024-03-25'),
(28, 108, 700.00, '2024-03-28'),
(29, 109, 850.00, '2024-03-30'),
(30, 110, 450.00, '2024-04-01'),
(31, 101, 1050.00, '2024-04-05'),
(32, 102, 750.00, '2024-04-10'),
(33, 103, 1150.00, '2024-04-15'),
(34, 104, 950.00, '2024-04-20'),
(35, 105, 1250.00, '2024-04-25'),
(36, 106, 850.00, '2024-04-28'),
(37, 107, 1100.00, '2024-05-02'),
(38, 108, 900.00, '2024-05-06'),
(39, 109, 1000.00, '2024-05-10'),
(40, 110, 550.00, '2024-05-15');
select *from departments122 
select *from employees122
select *from sales122
--Create a derived table to find the employees who have made the highest sales in each department.
select a.department_name, b.employee_name, c.max_sale_amount from departments122 a join (
select 