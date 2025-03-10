--window functions
--avg(sales) over( partition by category order by orderdate rows unbounded preceding)
create database lesson_19 
use lesson_19
--task 1
--easy tasks
--Write a query to assign a row number to each employee in the Employees table ordered by their Salary.
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Salary DECIMAL(10,2),
    Department NVARCHAR(50)
);
INSERT INTO Employees (FirstName, LastName, Salary, Department) VALUES
('Ali', 'Valiyev', 1200.00, 'IT'),
('Shoxruh', 'Karimov', 2500.00, 'Finance'),
('Diyor', 'Aliyev', 1800.00, 'HR'),
('Madina', 'Raxmonova', 3000.00, 'Marketing'),
('Javlon', 'Usmonov', 2700.00, 'IT'),
('Otabek', 'Saidov', 3500.00, 'HR'),
('Gulnora', 'Sharipova', 1900.00, 'Finance'),
('Asadbek', 'Toshmatov', 2000.00, 'Marketing'),
('Dilnoza', 'Murodova', 1600.00, 'IT'),
('Sanjar', 'Xolmatov', 2100.00, 'HR'),
('Ulugbek', 'Qosimov', 2200.00, 'Finance'),
('Laylo', 'Olimova', 2800.00, 'Marketing'),
('Bekzod', 'Rustamov', 2300.00, 'IT'),
('Nozima', 'Abdullayeva', 2600.00, 'HR'),
('Rustam', 'Jalilov', 2900.00, 'Finance'),
('Zafar', 'Eshmatov', 2400.00, 'Marketing'),
('Olimjon', 'Turgunov', 2100.00, 'IT'),
('Muhammad', 'Sobirov', 3200.00, 'Finance'),
('Kamola', 'Yoqubova', 2700.00, 'HR'),
('Farhod', 'Toshpulatov', 2300.00, 'IT'),
('Xurshid', 'Ibragimov', 3100.00, 'Marketing'),
('Sarvar', 'Xudoyberdiyev', 3300.00, 'Finance'),
('Ibrohim', 'Qurbonov', 1400.00, 'HR'),
('Gulbahor', 'Maxmudova', 1950.00, 'Marketing'),
('Bobur', 'Norbekov', 2500.00, 'IT'),
('Doston', 'Ortiqov', 2800.00, 'HR'),
('Jasmina', 'Qo‘shqarova', 2600.00, 'Finance'),
('Shahzod', 'Olimov', 2250.00, 'Marketing'),
('Murod', 'Nizomov', 1750.00, 'IT'),
('Ismoil', 'Shodmonov', 2450.00, 'HR');
select *from Employees
---Write a query to assign a row number to each employee in the Employees table ordered by their Salary.
select *, row_number() over (order by salary desc) as tartib from employees 
--task2 Create a query to rank all products based on their Price in descending order.
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2),
    Category NVARCHAR(50)
);
INSERT INTO Products (ProductName, Price, Category) VALUES
('Smartphone', 999.99, 'Electronics'),
('Laptop', 1499.99, 'Electronics'),
('Tablet', 699.99, 'Electronics'),
('Headphones', 199.99, 'Accessories'),
('Smartwatch', 249.99, 'Accessories'),
('Monitor', 299.99, 'Electronics'),
('Keyboard', 99.99, 'Accessories'),
('Mouse', 49.99, 'Accessories'),
('Printer', 179.99, 'Electronics'),
('Gaming Console', 499.99, 'Gaming'),
('TV', 1299.99, 'Electronics'),
('Camera', 899.99, 'Electronics'),
('Speaker', 149.99, 'Accessories'),
('External Hard Drive', 89.99, 'Storage'),
('SSD 1TB', 129.99, 'Storage'),
('Router', 79.99, 'Networking'),
('Power Bank', 39.99, 'Accessories'),
('Drone', 1099.99, 'Electronics'),
('VR Headset', 399.99, 'Gaming'),
('E-Reader', 199.99, 'Electronics'),
('Gaming Chair', 299.99, 'Furniture'),
('Mechanical Keyboard', 149.99, 'Accessories'),
('Graphics Card', 1599.99, 'Computer Parts'),
('Processor', 499.99, 'Computer Parts'),
('RAM 32GB', 199.99, 'Computer Parts'),
('Motherboard', 299.99, 'Computer Parts'),
('Power Supply 750W', 129.99, 'Computer Parts'),
('Cooling System', 89.99, 'Computer Parts'),
('Office Desk', 349.99, 'Furniture'),
('Gaming Mouse', 79.99, 'Accessories');
select *from products
--Create a query to rank all products based on their Price in descending order.
select *, rank() over ( order by price desc) rank from  products 
--task 3 Use the DENSE_RANK() function to rank employees by Salary in the Employees table.
select *, dense_rank() over( order by salary desc) as [salary_rank] from employees
--task 4 Write a query to display the next (lead) salary for each employee in the same department using the LEAD() function.
CREATE TABLE Employees01 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Salary DECIMAL(10,2),
    Department NVARCHAR(50)
);
INSERT INTO Employees01 (FirstName, LastName, Salary, Department) VALUES
('Ali', 'Valiyev', 3000.00, 'IT'),
('Shoxruh', 'Karimov', 4500.00, 'Finance'),
('Diyor', 'Aliyev', 3200.00, 'HR'),
('Madina', 'Raxmonova', 5100.00, 'Marketing'),
('Javlon', 'Usmonov', 4700.00, 'IT'),
('Otabek', 'Saidov', 3500.00, 'HR'),
('Gulnora', 'Sharipova', 4300.00, 'Finance'),
('Asadbek', 'Toshmatov', 3900.00, 'Marketing'),
('Dilnoza', 'Murodova', 3400.00, 'IT'),
('Sanjar', 'Xolmatov', 3600.00, 'HR'),
('Ulugbek', 'Qosimov', 4200.00, 'Finance'),
('Laylo', 'Olimova', 4900.00, 'Marketing'),
('Bekzod', 'Rustamov', 4100.00, 'IT'),
('Nozima', 'Abdullayeva', 3700.00, 'HR'),
('Rustam', 'Jalilov', 4800.00, 'Finance'),
('Zafar', 'Eshmatov', 3800.00, 'Marketing'),
('Olimjon', 'Turgunov', 3500.00, 'IT'),
('Muhammad', 'Sobirov', 5200.00, 'Finance'),
('Kamola', 'Yoqubova', 4600.00, 'HR'),
('Farhod', 'Toshpulatov', 4000.00, 'IT');
--Write a query to display the next (lead) salary for each employee in the same department using the LEAD() function.
select employeeid, firstname, lastname, salary, department, lead(salary) over(partition by department order by salary
) as [lead_salary]  from employees01
 --task 5 Use ROW_NUMBER() to assign a unique number to each order in the Orders table.
 CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    OrderDate DATE,
    Amount DECIMAL(10,2)
);
INSERT INTO Orders (CustomerName, OrderDate, Amount) VALUES
('Ali', '2025-03-01', 100.50),
('Vali', '2025-03-02', 200.00),
('Gulnoza', '2025-03-03', 50.75),
('Jamshid', '2025-03-04', 300.40),
('Dilnoza', '2025-03-05', 150.60),
('Karim', '2025-03-06', 99.99),
('Murod', '2025-03-07', 75.20),
('Sanjar', '2025-03-08', 120.30),
('Umida', '2025-03-09', 130.80),
('Sardor', '2025-03-10', 500.00),
('Maqsud', '2025-03-11', 250.25),
('Sarvar', '2025-03-12', 180.75),
('Aziza', '2025-03-13', 400.50),
('Olim', '2025-03-14', 310.40),
('Gulnora', '2025-03-15', 230.60),
('Rustam', '2025-03-16', 410.90),
('Zarina', '2025-03-17', 95.25),
('Botir', '2025-03-18', 85.30),
('Muhammad', '2025-03-19', 505.50),
('Laziz', '2025-03-20', 320.80),
('Nodir', '2025-03-21', 210.00),
('Madina', '2025-03-22', 350.30),
('Bekzod', '2025-03-23', 140.10),
('Anvar', '2025-03-24', 560.75),
('Shoxrux', '2025-03-25', 290.40),
('Sevinch', '2025-03-26', 440.50),
('Yusuf', '2025-03-27', 360.90),
('Kamola', '2025-03-28', 275.20),
('Jasur', '2025-03-29', 180.40),
('Oydin', '2025-03-30', 390.10),
('Hasan', '2025-03-31', 470.60),
('Alisher', '2025-04-01', 310.90),
('Muzaffar', '2025-04-02', 420.75),
('Dilafruz', '2025-04-03', 280.40),
('Shahzod', '2025-04-04', 150.00),
('Shohista', '2025-04-05', 130.90),
('Ibrohim', '2025-04-06', 210.25),
('Saida', '2025-04-07', 390.50),
('Xurshid', '2025-04-08', 250.00),
('Ismoil', '2025-04-09', 340.60);
select *from orders 
--Use ROW_NUMBER() to assign a unique number to each order in the Orders table.
select orderid, customername, orderdate, amount, row_number ()  over(order by orderid  ) numbers from orders
--task 6 Create a query using RANK() to identify the highest and second-highest salaries in the Employees table.
select *from employees
 with Salary_rank as 
 ( select  employeeid, firstname, lastname, salary, department ,RANK() over( order by salary desc) as desc_salary from employees)
 select *from salary_rank
 where desc_salary in(1,2)
  --task 7 -- DDL: Creating Employees table( Write a query to show the previous (lagged) salary for each employee in the Employees table using the LAG() function.

CREATE TABLE Employees02 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- DML: Inserting 40 rows
INSERT INTO Employees02 (EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'Alice', 'Johnson', 'HR', 50000, '2020-01-15'),
(2, 'Bob', 'Smith', 'Finance', 60000, '2019-03-22'),
(3, 'Charlie', 'Brown', 'IT', 70000, '2018-07-30'),
(4, 'David', 'White', 'IT', 72000, '2017-06-11'),
(5, 'Emma', 'Davis', 'Marketing', 55000, '2021-09-05'),
(6, 'Frank', 'Miller', 'Finance', 64000, '2016-11-20'),
(7, 'Grace', 'Wilson', 'HR', 51000, '2020-05-14'),
(8, 'Henry', 'Moore', 'IT', 73000, '2015-08-27'),
(9, 'Ivy', 'Anderson', 'Marketing', 53000, '2022-04-13'),
(10, 'Jack', 'Thomas', 'Finance', 66000, '2014-02-28'),
(11, 'Karen', 'Martin', 'HR', 52000, '2019-12-10'),
(12, 'Leo', 'Garcia', 'IT', 75000, '2013-05-15'),
(13, 'Mia', 'Rodriguez', 'Marketing', 56000, '2021-10-07'),
(14, 'Nathan', 'Lopez', 'Finance', 68000, '2012-01-22'),
(15, 'Olivia', 'Harris', 'HR', 53000, '2018-08-14'),
(16, 'Paul', 'Clark', 'IT', 77000, '2011-07-19'),
(17, 'Quinn', 'Lewis', 'Marketing', 57000, '2023-02-05'),
(18, 'Ryan', 'Walker', 'Finance', 69000, '2010-03-31'),
(19, 'Sophia', 'Hall', 'HR', 54000, '2017-09-20'),
(20, 'Tom', 'Allen', 'IT', 79000, '2009-11-15'),
(21, 'Uma', 'Young', 'Marketing', 58000, '2020-06-30'),
(22, 'Victor', 'King', 'Finance', 70000, '2008-05-10'),
(23, 'Wendy', 'Scott', 'HR', 55000, '2015-12-24'),
(24, 'Xavier', 'Green', 'IT', 81000, '2007-04-18'),
(25, 'Yvonne', 'Adams', 'Marketing', 59000, '2019-01-08'),
(26, 'Zane', 'Baker', 'Finance', 72000, '2006-02-25'),
(27, 'Alex', 'Carter', 'HR', 56000, '2014-07-12'),
(28, 'Bella', 'Mitchell', 'IT', 83000, '2005-06-05'),
(29, 'Chris', 'Perez', 'Marketing', 60000, '2018-03-16'),
(30, 'Diana', 'Roberts', 'Finance', 74000, '2004-01-28'),
(31, 'Ethan', 'Turner', 'HR', 57000, '2013-11-03'),
(32, 'Fiona', 'Phillips', 'IT', 85000, '2003-12-17'),
(33, 'George', 'Campbell', 'Marketing', 61000, '2017-02-09'),
(34, 'Hannah', 'Evans', 'Finance', 76000, '2002-10-21'),
(35, 'Isaac', 'Edwards', 'HR', 58000, '2012-05-31'),
(36, 'Julia', 'Collins', 'IT', 87000, '2001-08-14'),
(37, 'Kevin', 'Stewart', 'Marketing', 62000, '2016-07-23'),
(38, 'Laura', 'Sanchez', 'Finance', 78000, '2000-03-11'),
(39, 'Michael', 'Morris', 'HR', 59000, '2011-04-09'),
(40, 'Nancy', 'Murphy', 'IT', 89000, '1999-02-20');
--Write a query to show the previous (lagged) salary for each employee in the Employees table using the LAG() function.

select employeeid, firstname, lastname, department, salary, hiredate,
 lag(salary)  over( order by employeeid) as previous_salary from employees02 
 --task 8 Use NTILE(4) to divide employees into 4 groups based on their Salary.
 select employeeid, departmentid, salary, employeename, ntile (4) over( partition by departmentid order by salary) n from employees 
 select *from employees
 --task 9 Write a query to partition employees by DepartmentID and assign a row number within each department.
 -- Create Employees table
CREATE TABLE Employees09 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2),
    DepartmentID INT
);

-- Insert at least 40 rows
INSERT INTO Employees09 (EmployeeID, FirstName, LastName, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 50000, 1),
(2, 'Jane', 'Smith', 60000, 1),
(3, 'Robert', 'Brown', 55000, 1),
(4, 'Emily', 'Davis', 70000, 1),
(5, 'Michael', 'Wilson', 65000, 1),
(6, 'Sarah', 'Taylor', 48000, 2),
(7, 'David', 'Anderson', 52000, 2),
(8, 'Laura', 'Thomas', 58000, 2),
(9, 'James', 'Martinez', 62000, 2),
(10, 'Mary', 'Hernandez', 50000, 2),
(11, 'William', 'Lopez', 75000, 3),
(12, 'Linda', 'Gonzalez', 78000, 3),
(13, 'Richard', 'Clark', 72000, 3),
(14, 'Karen', 'Lewis', 73000, 3),
(15, 'Joseph', 'Robinson', 71000, 3),
(16, 'Charles', 'Walker', 51000, 4),
(17, 'Lisa', 'Perez', 53000, 4),
(18, 'Thomas', 'Hall', 54000, 4),
(19, 'Betty', 'Young', 56000, 4),
(20, 'Daniel', 'Allen', 57000, 4),
(21, 'Sandra', 'King', 59000, 5),
(22, 'Matthew', 'Wright', 60000, 5),
(23, 'Ashley', 'Scott', 62000, 5),
(24, 'Christopher', 'Green', 63000, 5),
(25, 'Patricia', 'Baker', 65000, 5),
(26, 'Andrew', 'Adams', 67000, 6),
(27, 'Jessica', 'Nelson', 69000, 6),
(28, 'Joshua', 'Carter', 71000, 6),
(29, 'Angela', 'Mitchell', 73000, 6),
(30, 'Ryan', 'Perez', 75000, 6),
(31, 'Nicholas', 'Roberts', 77000, 7),

(32, 'Kimberly', 'Phillips', 79000, 7),
(33, 'Brian', 'Evans', 81000, 7),
(34, 'Nancy', 'Turner', 83000, 7),
(35, 'Edward', 'Torres', 85000, 7),
(36, 'Steven', 'Parker', 87000, 8),
(37, 'Michelle', 'Collins', 89000, 8),
(38, 'Eric', 'Edwards', 91000, 8),
(39, 'Deborah', 'Stewart', 93000, 8),
(40, 'Kevin', 'Morris', 95000, 8);
select *from employees09
--Write a query to partition employees by DepartmentID and assign a row number within each department.

select employeeid, firstname, lastname, salary, departmentid , row_number() over(partition by departmentid
order by  employeeid) r from employees09
--task 10  Use DENSE_RANK() to rank products by Price in ascending order.
CREATE TABLE Products01(
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);


INSERT INTO Products01 (ProductName, Price) VALUES
('Product A', 10.00), ('Product B', 15.50), ('Product C', 12.75), ('Product D', 9.99), ('Product E', 20.00),
('Product F', 18.25), ('Product G', 11.50), ('Product H', 22.99), ('Product I', 17.75), ('Product J', 25.00),
('Product K', 30.00), ('Product L', 27.50), ('Product M', 16.00), ('Product N', 14.75), ('Product O', 23.50),
('Product P', 21.99), ('Product Q', 19.50), ('Product R', 24.99), ('Product S', 13.25), ('Product T', 29.99),
('Product U', 26.75), ('Product V', 28.25), ('Product W', 31.00), ('Product X', 34.50), ('Product Y', 33.75),
('Product Z', 35.99), ('Product AA', 38.25), ('Product AB', 40.00), ('Product AC', 42.99), ('Product AD', 45.50),
('Product AE', 50.00), ('Product AF', 55.25), ('Product AG', 60.00), ('Product AH', 65.99), ('Product AI', 70.50),
('Product AJ', 75.00), ('Product AK', 80.25), ('Product AL', 85.50), ('Product AM', 90.99), ('Product AN', 95.75);
select *from products01
--Use DENSE_RANK() to rank products by Price in ascending order.
select productid, productname, price, 
DENSE_RANK() over(order by price asc) as asc_price ,
           rank() over (order by price asc) as asc_price1,
row_number() over(order by price asc)as asc_price2
from products
--task 11 Write a query to calculate the moving average of Price in the Products table using window functions.
CREATE TABLE Products07 (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

INSERT INTO Products07 (ProductName, Price) VALUES
('Product A', 10.00), ('Product B', 15.50), ('Product C', 12.75), ('Product D', 9.99), ('Product E', 20.00),
('Product F', 18.25), ('Product G', 11.50), ('Product H', 22.99), ('Product I', 17.75), ('Product J', 25.00),
('Product K', 30.00), ('Product L', 27.50), ('Product M', 16.00), ('Product N', 14.75), ('Product O', 23.50),
('Product P', 21.99), ('Product Q', 19.50), ('Product R', 24.99), ('Product S', 13.25), ('Product T', 29.99),
('Product U', 26.75), ('Product V', 28.25), ('Product W', 31.00), ('Product X', 34.50), ('Product Y', 33.75),
('Product Z', 35.99), ('Product AA', 38.25), ('Product AB', 40.00), ('Product AC', 42.99), ('Product AD', 45.50),
('Product AE', 50.00), ('Product AF', 55.25), ('Product AG', 60.00), ('Product AH', 65.99), ('Product AI', 70.50),
('Product AJ', 75.00), ('Product AK', 80.25), ('Product AL', 85.50), ('Product AM', 90.99), ('Product AN', 95.75);
--task 11 Write a query to calculate the moving average of Price in the Products table using window functions.
select *from products07
select productid, productname, price, avg(price) over(order by price, productid rows  between 4 preceding 
and current row) avg_price from products07
--task 12 Use the LEAD() function to display the salary of the next employee for each row in the Employees table.
-- DDL: Employees jadvalini yaratish
CREATE TABLE Employees05 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- DML: 40 ta xodim ma'lumotlarini qo‘shish
INSERT INTO Employees05 (EmployeeID, EmployeeName, Position, Salary) VALUES
(1, 'Alice Johnson', 'Manager', 75000.00),
(2, 'Bob Smith', 'Developer', 65000.00),
(3, 'Charlie Brown', 'Analyst', 55000.00),
(4, 'David Wilson', 'Developer', 67000.00),
(5, 'Eve Adams', 'HR', 60000.00),
(6, 'Frank White', 'Designer', 58000.00),
(7, 'Grace Hall', 'Manager', 78000.00),
(8, 'Henry Young', 'Developer', 62000.00),
(9, 'Isla Scott', 'Analyst', 54000.00),
(10, 'Jack Turner', 'Designer', 59000.00),
(11, 'Katie Harris', 'HR', 61000.00),
(12, 'Leo Martin', 'Developer', 66000.00),
(13, 'Mia Lewis', 'Analyst', 53000.00),
(14, 'Noah Walker', 'Manager', 79000.00),
(15, 'Olivia King', 'Developer', 68000.00),
(16, 'Paul Allen', 'HR', 62000.00),
(17, 'Quinn Baker', 'Designer', 57000.00),
(18, 'Ryan Carter', 'Analyst', 51000.00),
(19, 'Sophia Evans', 'Manager', 80000.00),
(20, 'Thomas Hall', 'Developer', 64000.00),
(21, 'Uma Davis', 'HR', 63000.00),
(22, 'Victor Moore', 'Designer', 56000.00),
(23, 'Wendy Green', 'Analyst', 52000.00),
(24, 'Xander Collins', 'Manager', 81000.00),
(25, 'Yara Nelson', 'Developer', 70000.00),
(26, 'Zane Perry', 'HR', 65000.00),
(27, 'Adam Brooks', 'Developer', 69000.00),
(28, 'Bella Fisher', 'Analyst', 50000.00),
(29, 'Caleb Wright', 'Manager', 82000.00),
(30, 'Diana Foster', 'Developer', 71000.00),
(31, 'Ethan Simmons', 'HR', 64000.00),
(32, 'Fiona Bennett', 'Designer', 55000.00),
(33, 'George Reed', 'Analyst', 52000.00),
(34, 'Hannah Morris', 'Manager', 83000.00),
(35, 'Ian Rogers', 'Developer', 72000.00),
(36, 'Julia Stewart', 'HR', 66000.00),
(37, 'Kevin Barnes', 'Designer', 54000.00),
(38, 'Luna Ross', 'Analyst', 51000.00),
(39, 'Mason Griffin', 'Manager', 84000.00),
(40, 'Natalie Cooper', 'Developer', 73000.00);
select *from employees05
--Use the LEAD() function to display the salary of the next employee for each row in the Employees table.
select employeeid, employeename, position, salary ,
lead(salary ) over (order by salary desc )as next_person from  employees05

 --task 13 Create a query to compute the cumulative sum of SalesAmount in the Sales table.

 -- DDL: Sales jadvalini yaratish
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    SalesDate DATE,
    CustomerName VARCHAR(100),
    SalesAmount DECIMAL(10,2)
);

-- DML: 40 ta sotuv ma'lumotlarini qo‘shish
INSERT INTO Sales (SalesID, SalesDate, CustomerName, SalesAmount) VALUES
(1, '2024-01-01', 'Alice Johnson', 500.00),
(2, '2024-01-02', 'Bob Smith', 750.00),
(3, '2024-01-03', 'Charlie Brown', 200.00),
(4, '2024-01-04', 'David Wilson', 650.00),
(5, '2024-01-05', 'Eve Adams', 400.00),
(6, '2024-01-06', 'Frank White', 300.00),
(7, '2024-01-07', 'Grace Hall', 900.00),
(8, '2024-01-08', 'Henry Young', 450.00),
(9, '2024-01-09', 'Isla Scott', 700.00),
(10, '2024-01-10', 'Jack Turner', 600.00),
(11, '2024-01-11', 'Katie Harris', 550.00),
(12, '2024-01-12', 'Leo Martin', 800.00),
(13, '2024-01-13', 'Mia Lewis', 720.00),
(14, '2024-01-14', 'Noah Walker', 330.00),
(15, '2024-01-15', 'Olivia King', 900.00),
(16, '2024-01-16', 'Paul Allen', 620.00),
(17, '2024-01-17', 'Quinn Baker', 510.00),
(18, '2024-01-18', 'Ryan Carter', 290.00),
(19, '2024-01-19', 'Sophia Evans', 870.00),
(20, '2024-01-20', 'Thomas Hall', 390.00),
(21, '2024-01-21', 'Uma Davis', 680.00),
(22, '2024-01-22', 'Victor Moore', 570.00),
(23, '2024-01-23', 'Wendy Green', 530.00),
(24, '2024-01-24', 'Xander Collins', 950.00),
(25, '2024-01-25', 'Yara Nelson', 790.00),
(26, '2024-01-26', 'Zane Perry', 880.00),
(27, '2024-01-27', 'Adam Brooks', 410.00),
(28, '2024-01-28', 'Bella Fisher', 720.00),
(29, '2024-01-29', 'Caleb Wright', 920.00),
(30, '2024-01-30', 'Diana Foster', 610.00),
(31, '2024-01-31', 'Ethan Simmons', 560.00),
(32, '2024-02-01', 'Fiona Bennett', 780.00),
(33, '2024-02-02', 'George Reed', 620.00),
(34, '2024-02-03', 'Hannah Morris', 950.00),
(35, '2024-02-04', 'Ian Rogers', 870.00),
(36, '2024-02-05', 'Julia Stewart', 890.00),
(37, '2024-02-06', 'Kevin Barnes', 920.00),
(38, '2024-02-07', 'Luna Ross', 600.00),
(39, '2024-02-08', 'Mason Griffin', 740.00),
(40, '2024-02-09', 'Natalie Cooper', 830.00); 
select *from sales 
--Create a query to compute the cumulative sum of SalesAmount in the Sales table.
select salesid, salesdate, customername, salesamount, (select sum(salesamount) from sales) as total_sales, sum(salesamount) 
over(  order by salesid asc rows between 5 preceding and  current row) as sum_amount,sum(salesamount) 
over(  order by salesid asc rows between current row and  5 following ) as sum_amount from sales 
--task 14 Use ROW_NUMBER() to identify the top 5 most expensive products in the Products table.
-- Create Products table
CREATE TABLE Products03 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

-- Insert at least 40 rows into Products table
INSERT INTO Products03 (ProductID, ProductName, Price) VALUES
(1, 'Product A', 10.50),
(2, 'Product B', 15.75),
(3, 'Product C', 22.00),
(4, 'Product D', 18.25),
(5, 'Product E', 30.00),
(6, 'Product F', 12.40),
(7, 'Product G', 25.60),
(8, 'Product H', 35.90),
(9, 'Product I', 40.50),
(10, 'Product J', 27.80),
(11, 'Product K', 50.00),
(12, 'Product L', 55.25),
(13, 'Product M', 60.00),
(14, 'Product N', 65.99),
(15, 'Product O', 70.50),
(16, 'Product P', 80.25),
(17, 'Product Q', 85.00),
(18, 'Product R', 90.75),
(19, 'Product S', 95.50),
(20, 'Product T', 100.00),
(21, 'Product U', 105.75),
(22, 'Product V', 110.50),
(23, 'Product W', 115.25),
(24, 'Product X', 120.00),
(25, 'Product Y', 125.50),
(26, 'Product Z', 130.75),
(27, 'Product AA', 135.00),
(28, 'Product AB', 140.25),
(29, 'Product AC', 145.50),
(30, 'Product AD', 150.75),
(31, 'Product AE', 155.00),
(32, 'Product AF', 160.25),
(33, 'Product AG', 165.50),
(34, 'Product AH', 170.75),
(35, 'Product AI', 175.00),
(36, 'Product AJ', 180.25),
(37, 'Product AK', 185.50),
(38, 'Product AL', 190.75),
(39, 'Product AM', 195.00),
(40, 'Product AN', 200.00);
select *from products03 
 --Use ROW_NUMBER() to identify the top 5 most expensive products in the Products table.
 select* from(
 select productid, productname, price , row_number() over( order by price desc ) as expencive  from products03) as ranked
 where expencive <=5
 --task 15 Write a query to partition the Orders table by CustomerID and calculate the total OrderAmount per customer.
 -- Create Orders table
CREATE TABLE Orders02 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);

-- Insert at least 40 rows into Orders table
INSERT INTO Orders02 (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(1, 101, '2024-01-01', 250.00),
(2, 102, '2024-01-02', 300.00),
(3, 103, '2024-01-03', 150.00),
(4, 101, '2024-01-04', 500.00),
(5, 104, '2024-01-05', 220.00),
(6, 102, '2024-01-06', 330.00),
(7, 105, '2024-01-07', 410.00),
(8, 106, '2024-01-08', 290.00),
(9, 107, '2024-01-09', 350.00),
(10, 103, '2024-01-10', 270.00),
(11, 108, '2024-01-11', 400.00),
(12, 109, '2024-01-12', 360.00),
(13, 104, '2024-01-13', 280.00),
(14, 110, '2024-01-14', 340.00),
(15, 101, '2024-01-15', 230.00),
(16, 102, '2024-01-16', 490.00),
(17, 111, '2024-01-17', 310.00),
(18, 105, '2024-01-18', 250.00),
(19, 112, '2024-01-19', 440.00),
(20, 113, '2024-01-20', 380.00),
(21, 114, '2024-01-21', 420.00),
(22, 115, '2024-01-22', 500.00),
(23, 116, '2024-01-23', 390.00),
(24, 117, '2024-01-24', 320.00),
(25, 118, '2024-01-25', 470.00),
(26, 119, '2024-01-26', 280.00),
(27, 120, '2024-01-27', 360.00),
(28, 108, '2024-01-28', 410.00),
(29, 110, '2024-01-29', 450.00),
(30, 113, '2024-01-30', 490.00),
(31, 101, '2024-01-31', 510.00),
(32, 102, '2024-02-01', 270.00),
(33, 105, '2024-02-02', 420.00),
(34, 109, '2024-02-03', 330.00),
(35, 115, '2024-02-04', 380.00),
(36, 120, '2024-02-05', 500.00),
(37, 104, '2024-02-06', 460.00),
(38, 118, '2024-02-07', 490.00),
(39, 112, '2024-02-08', 430.00),
(40, 117, '2024-02-09', 510.00);
select  *from orders02
--Write a query to partition the Orders table by CustomerID and calculate the total OrderAmount per customer.
select o.orderid, o.customerid, o.orderdate, o.orderamount, a.total_1,
          sum(o.orderamount) over( partition by o.customerid order by o.orderid) as total
		  from  orders02 o
join(select customerid, sum(orderamount)as total_1 from orders02 group by customerid) a on a.customerid=o.customerid
 --task 16 Use RANK() to rank orders in the Orders table based on their OrderAmount.
-- DDL: Create Orders table
CREATE TABLE Orders04 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into the Orders table
INSERT INTO Orders04 (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(1, 101, '2024-03-01', 250.00),
(2, 102, '2024-03-02', 300.00),
(3, 103, '2024-03-03', 150.00),
(4, 104, '2024-03-04', 500.00),
(5, 105, '2024-03-05', 220.00),
(6, 101, '2024-03-06', 330.00),
(7, 102, '2024-03-07', 410.00),
(8, 103, '2024-03-08', 290.00),
(9, 104, '2024-03-09', 350.00),
(10, 105, '2024-03-10', 270.00),
(11, 101, '2024-03-11', 400.00),
(12, 102, '2024-03-12', 360.00),
(13, 103, '2024-03-13', 280.00),
(14, 104, '2024-03-14', 340.00),
(15, 105, '2024-03-15', 230.00),
(16, 101, '2024-03-16', 490.00),
(17, 102, '2024-03-17', 310.00),
(18, 103, '2024-03-18', 250.00),
(19, 104, '2024-03-19', 440.00),
(20, 105, '2024-03-20', 380.00),
(21, 101, '2024-03-21', 420.00),
(22, 102, '2024-03-22', 500.00),
(23, 103, '2024-03-23', 390.00),
(24, 104, '2024-03-24', 320.00),
(25, 105, '2024-03-25', 470.00),
(26, 101, '2024-03-26', 280.00),
(27, 102, '2024-03-27', 360.00),
(28, 103, '2024-03-28', 410.00),
(29, 104, '2024-03-29', 450.00),
(30, 105, '2024-03-30', 490.00),
(31, 101, '2024-03-31', 510.00),
(32, 102, '2024-04-01', 270.00),
(33, 103, '2024-04-02', 420.00),
(34, 104, '2024-04-03', 330.00),
(35, 105, '2024-04-04', 380.00),
(36, 101, '2024-04-05', 500.00),
(37, 102, '2024-04-06', 460.00),
(38, 103, '2024-04-07', 490.00),
(39, 104, '2024-04-08', 430.00),
(40, 105, '2024-04-09', 510.00);
select *from orders04
--Use RANK() to rank orders in the Orders table based on their OrderAmount.
select orderid, customerid, orderdate, orderamount ,rank() over( order by orderamount asc ) as rn from orders04

--task 17 Write a query to compute the percentage contribution of SalesAmount by ProductCategory in the Sales table.

-- DDL: Create Sales table with ProductCategory column
CREATE TABLE Sales05 (
    SalesID INT PRIMARY KEY,
    SalesDate DATE,
    CustomerName VARCHAR(100),
    SalesAmount DECIMAL(10,2),
    ProductCategory VARCHAR(50)
);

-- DML: Insert at least 40 rows into the Sales table
INSERT INTO Sales05 (SalesID, SalesDate, CustomerName, SalesAmount, ProductCategory) VALUES
(1, '2024-01-01', 'Alice Johnson', 500.00, 'Electronics'),
(2, '2024-01-02', 'Bob Smith', 750.00, 'Clothing'),
(3, '2024-01-03', 'Charlie Brown', 200.00, 'Home'),
(4, '2024-01-04', 'David Wilson', 650.00, 'Electronics'),
(5, '2024-01-05', 'Eve Adams', 400.00, 'Clothing'),
(6, '2024-01-06', 'Frank White', 300.00, 'Home'),
(7, '2024-01-07', 'Grace Hall', 900.00, 'Sports'),
(8, '2024-01-08', 'Henry Young', 450.00, 'Toys'),
(9, '2024-01-09', 'Isla Scott', 700.00, 'Electronics'),
(10, '2024-01-10', 'Jack Turner', 600.00, 'Clothing'),
(11, '2024-01-11', 'Katie Harris', 550.00, 'Home'),
(12, '2024-01-12', 'Leo Martin', 800.00, 'Sports'),
(13, '2024-01-13', 'Mia Lewis', 720.00, 'Toys'),
(14, '2024-01-14', 'Noah Walker', 330.00, 'Electronics'),
(15, '2024-01-15', 'Olivia King', 900.00, 'Clothing'),
(16, '2024-01-16', 'Paul Allen', 620.00, 'Home'),
(17, '2024-01-17', 'Quinn Baker', 510.00, 'Sports'),
(18, '2024-01-18', 'Ryan Carter', 290.00, 'Toys'),
(19, '2024-01-19', 'Sophia Evans', 870.00, 'Electronics'),
(20, '2024-01-20', 'Thomas Hall', 390.00, 'Clothing'),
(21, '2024-01-21', 'Uma Davis', 680.00, 'Home'),
(22, '2024-01-22', 'Victor Moore', 570.00, 'Sports'),
(23, '2024-01-23', 'Wendy Green', 530.00, 'Toys'),
(24, '2024-01-24', 'Xander Collins', 950.00, 'Electronics'),
(25, '2024-01-25', 'Yara Nelson', 790.00, 'Clothing'),
(26, '2024-01-26', 'Zane Perry', 880.00, 'Home'),
(27, '2024-01-27', 'Adam Brooks', 410.00, 'Sports'),
(28, '2024-01-28', 'Bella Fisher', 720.00, 'Toys'),
(29, '2024-01-29', 'Caleb Wright', 920.00, 'Electronics'),
(30, '2024-01-30', 'Diana Foster', 610.00, 'Clothing'),
(31, '2024-01-31', 'Ethan Simmons', 560.00, 'Home'),
(32, '2024-02-01', 'Fiona Bennett', 780.00, 'Sports'),
(33, '2024-02-02', 'George Reed', 620.00, 'Toys'),
(34, '2024-02-03', 'Hannah Morris', 950.00, 'Electronics'),
(35, '2024-02-04', 'Ian Rogers', 870.00, 'Clothing'),
(36, '2024-02-05', 'Julia Stewart', 890.00, 'Home'),
(37, '2024-02-06', 'Kevin Barnes', 920.00, 'Sports'),
(38, '2024-02-07', 'Luna Ross', 600.00, 'Toys'),
(39, '2024-02-08', 'Mason Griffin', 740.00, 'Electronics'),
(40, '2024-02-09', 'Natalie Cooper', 830.00, 'Clothing');
--Write a query to compute the percentage contribution of SalesAmount by ProductCategory in the Sales table.
select *from sales05
select a.salesid, a.salesdate, a.customername, a.salesamount, a.productcategory,  sum(salesamount)
over ( partition by a.productcategory order by a.salesid ) as total , b.total_1, 
 sum(a.salesamount)
over ( partition by a.productcategory order by a.salesid )/b.total_1*100 as differ from sales05 a
join (select productcategory  ,sum(salesamount) as total_1 from sales05 group by productcategory) as b on 
b.productcategory =a.productcategory
--task 18 Use the LEAD() function to retrieve the next order date for each order in the Orders table.
-- DDL: Create Orders table
CREATE TABLE Orders06 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into Orders table
INSERT INTO Orders06 (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(1, 101, '2024-01-01', 250.00),
(2, 102, '2024-01-02', 300.00),
(3, 103, '2024-01-03', 150.00),
(4, 104, '2024-01-04', 500.00),
(5, 105, '2024-01-05', 220.00),
(6, 101, '2024-01-06', 330.00),
(7, 102, '2024-01-07', 410.00),
(8, 103, '2024-01-08', 290.00),
(9, 104, '2024-01-09', 350.00),
(10, 105, '2024-01-10', 270.00),
(11, 101, '2024-01-11', 400.00),
(12, 102, '2024-01-12', 360.00),
(13, 103, '2024-01-13', 280.00),
(14, 104, '2024-01-14', 340.00),
(15, 105, '2024-01-15', 230.00),
(16, 101, '2024-01-16', 490.00),
(17, 102, '2024-01-17', 310.00),
(18, 103, '2024-01-18', 250.00),
(19, 104, '2024-01-19', 440.00),
(20, 105, '2024-01-20', 380.00),
(21, 101, '2024-01-21', 420.00),
(22, 102, '2024-01-22', 500.00),
(23, 103, '2024-01-23', 390.00),
(24, 104, '2024-01-24', 320.00),
(25, 105, '2024-01-25', 470.00),
(26, 101, '2024-01-26', 280.00),
(27, 102, '2024-01-27', 360.00),
(28, 103, '2024-01-28', 410.00),
(29, 104, '2024-01-29', 450.00),
(30, 105, '2024-01-30', 490.00),
(31, 101, '2024-01-31', 510.00),
(32, 102, '2024-02-01', 270.00),
(33, 103, '2024-02-02', 420.00),
(34, 104, '2024-02-03', 330.00),
(35, 105, '2024-02-04', 380.00),
(36, 101, '2024-02-05', 500.00),
(37, 102, '2024-02-06', 460.00),
(38, 103, '2024-02-07', 490.00),
(39, 104, '2024-02-08', 430.00),
(40, 105, '2024-02-09', 510.00);
select *from orders06
--Use the LEAD() function to retrieve the next order date for each order in the Orders table.
select orderid, customerid, orderdate, orderamount, lead(orderdate) 
over( order by orderid) as  running from orders06
--task 19 Write a query using NTILE(3) to divide employees into 3 groups based on their Age.

-- DDL: Create Employees table with Age column
CREATE TABLE Employees06 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Age INT,
    Position VARCHAR(50)
);

-- DML: Insert at least 40 rows into Employees table
INSERT INTO Employees06 (EmployeeID, EmployeeName, Age, Position) VALUES
(1, 'Employee 1', 28, 'Developer'),
(2, 'Employee 2', 35, 'Analyst'),
(3, 'Employee 3', 42, 'Manager'),
(4, 'Employee 4', 31, 'Developer'),
(5, 'Employee 5', 29, 'Designer'),
(6, 'Employee 6', 55, 'Manager'),
(7, 'Employee 7', 38, 'Developer'),
(8, 'Employee 8', 47, 'Analyst'),
(9, 'Employee 9', 33, 'Designer'),
(10, 'Employee 10', 26, 'Developer'),
(11, 'Employee 11', 39, 'Manager'),
(12, 'Employee 12', 45, 'Analyst'),
(13, 'Employee 13', 52, 'Developer'),
(14, 'Employee 14', 30, 'Designer'),
(15, 'Employee 15', 41, 'Manager'),
(16, 'Employee 16', 36, 'Developer'),
(17, 'Employee 17', 50, 'Analyst'),
(18, 'Employee 18', 27, 'Designer'),
(19, 'Employee 19', 44, 'Manager'),
(20, 'Employee 20', 32, 'Developer'),
(21, 'Employee 21', 48, 'Analyst'),
(22, 'Employee 22', 53, 'Manager'),
(23, 'Employee 23', 37, 'Developer'),
(24, 'Employee 24', 29, 'Designer'),
(25, 'Employee 25', 40, 'Analyst'),
(26, 'Employee 26', 46, 'Manager'),
(27, 'Employee 27', 34, 'Developer'),
(28, 'Employee 28', 51, 'Analyst'),
(29, 'Employee 29', 56, 'Manager'),
(30, 'Employee 30', 33, 'Developer'),
(31, 'Employee 31', 42, 'Designer'),
(32, 'Employee 32', 58, 'Manager'),
(33, 'Employee 33', 31, 'Developer'),
(34, 'Employee 34', 49, 'Analyst'),
(35, 'Employee 35', 54, 'Manager'),
(36, 'Employee 36', 27, 'Developer'),
(37, 'Employee 37', 43, 'Designer'),
(38, 'Employee 38', 38, 'Analyst'),
(39, 'Employee 39', 60, 'Manager'),
(40, 'Employee 40', 35, 'Developer');
--Write a query using NTILE(3) to divide employees into 3 groups based on their Age.
select *from employees06 
select employeeid, employeename, age, position , ntile(3) over ( order by age desc) as divided 
from employees06

--task 20 Use ROW_NUMBER() to list the most recently hired employees from the Employees table.

CREATE TABLE Employees08 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Position NVARCHAR(50),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2)
);
INSERT INTO Employees08 (Name, Position, HireDate, Salary) VALUES
('John Doe', 'Software Engineer', '2023-12-01', 75000),
('Alice Smith', 'Data Analyst', '2023-11-15', 68000),
('Bob Johnson', 'Project Manager', '2023-10-22', 90000),
('David White', 'QA Engineer', '2023-09-30', 65000),
('Emma Brown', 'HR Manager', '2023-08-19', 72000),
('Michael Green', 'Software Engineer', '2023-07-05', 77000),
('Sophia Clark', 'Business Analyst', '2023-06-25', 71000),
('Daniel Lewis', 'DevOps Engineer', '2023-05-14', 88000),
('Olivia Martin', 'Marketing Manager', '2023-04-20', 73000),
('William Scott', 'Accountant', '2023-03-12', 66000),
('James Hall', 'Database Administrator', '2023-02-28', 85000),
('Charlotte Turner', 'Software Engineer', '2023-01-10', 78000),
('Ethan Phillips', 'Network Administrator', '2022-12-15', 81000),
('Ava Adams', 'Legal Advisor', '2022-11-05', 92000),
('Mason Baker', 'System Analyst', '2022-10-29', 75000),
('Isabella Nelson', 'Finance Manager', '2022-09-18', 96000),
('Liam Carter', 'Customer Support', '2022-08-07', 62000),
('Harper Evans', 'Product Manager', '2022-07-30', 91000),
('Benjamin Foster', 'Security Specialist', '2022-06-22', 89000),
('Evelyn Parker', 'Data Scientist', '2022-05-11', 95000),
('Noah Collins', 'AI Engineer', '2022-04-15', 98000),
('Grace Bennett', 'UX Designer', '2022-03-27', 70000),
('Lucas Murphy', 'Frontend Developer', '2022-02-10', 73000),
('Amelia Richardson', 'Backend Developer', '2022-01-05', 77000),
('Henry Rogers', 'IT Manager', '2021-12-20', 92000),
('Mila Reed', 'Full Stack Developer', '2021-11-15', 88000),
('Elijah Cook', 'Cybersecurity Analyst', '2021-10-03', 86000),
('Scarlett Brooks', 'Data Engineer', '2021-09-20', 83000),
('Logan Price', 'Game Developer', '2021-08-14', 81000),
('Chloe Gray', 'Cloud Engineer', '2021-07-06', 94000),
('Alexander Hughes', 'Scrum Master', '2021-06-29', 88000),
('Zoe Peterson', 'SEO Specialist', '2021-05-12', 69000),
('Sebastian Morris', 'Content Writer', '2021-04-25', 67000),
('Lily Barnes', 'Social Media Manager', '2021-03-15', 72000),
('Jack Ross', 'IT Support', '2021-02-07', 62000),
('Madison Simmons', 'Mobile Developer', '2021-01-10', 76000),
('Carter Bryant', 'Blockchain Developer', '2020-12-23', 99000),
('Penelope Howard', 'Sales Executive', '2020-11-30', 75000),
('Owen Ward', 'Tech Lead', '2020-10-15', 104000),
('Ella Cooper', 'Game Designer', '2020-09-05', 78000),
('Luke Bell', 'ERP Consultant', '2020-08-20', 87000);
select *from employees08
--Use ROW_NUMBER() to list the most recently hired employees from the Employees table.
select employeeid, name, position, hiredate, salary , row_number() over(order by hiredate  desc) as last_hired from employees08
--medium tasks

--task 1
-- DDL: Create Employees table with Salary column
CREATE TABLE Employees99 (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into Employees table
INSERT INTO Employees99 (EmployeeID, EmployeeName, Salary) VALUES
(1, 'Employee 1', 35000.00),
(2, 'Employee 2', 40000.00),
(3, 'Employee 3', 42000.00),
(4, 'Employee 4', 38000.00),
(5, 'Employee 5', 45000.00),
(6, 'Employee 6', 47000.00),
(7, 'Employee 7', 39000.00),
(8, 'Employee 8', 51000.00),
(9, 'Employee 9', 53000.00),
(10, 'Employee 10', 55000.00),
(11, 'Employee 11', 36000.00),
(12, 'Employee 12', 58000.00),
(13, 'Employee 13', 60000.00),
(14, 'Employee 14', 62000.00),
(15, 'Employee 15', 64000.00),
(16, 'Employee 16', 66000.00),
(17, 'Employee 17', 68000.00),
(18, 'Employee 18', 70000.00),
(19, 'Employee 19', 72000.00),
(20, 'Employee 20', 74000.00),
(21, 'Employee 21', 76000.00),
(22, 'Employee 22', 78000.00),
(23, 'Employee 23', 80000.00),
(24, 'Employee 24', 82000.00),
(25, 'Employee 25', 84000.00),
(26, 'Employee 26', 86000.00),
(27, 'Employee 27', 88000.00),
(28, 'Employee 28', 90000.00),
(29, 'Employee 29', 92000.00),
(30, 'Employee 30', 94000.00),
(31, 'Employee 31', 96000.00),
(32, 'Employee 32', 98000.00),
(33, 'Employee 33', 100000.00),
(34, 'Employee 34', 102000.00),
(35, 'Employee 35', 104000.00),
(36, 'Employee 36', 106000.00),
(37, 'Employee 37', 108000.00),
(38, 'Employee 38', 110000.00),
(39, 'Employee 39', 112000.00),
(40, 'Employee 40', 114000.00);
select *from employees99
--Write a query to compute the cumulative average salary of employees, ordered by Salary.
select employeeid, employeename, salary ,avg(salary) over (order by salary asc 
rows between unbounded preceding and current row) as avg_salary from employees99
--task 2 Use RANK() to rank products by their total sales while handling ties appropriately.
-- DDL: Create Products table with TotalSales column
CREATE TABLE Products99 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    TotalSales DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into Products table
INSERT INTO Products99 (ProductID, ProductName, TotalSales) VALUES
(1, 'Product A', 100.00),
(2, 'Product B', 150.00),
(3, 'Product C', 150.00),
(4, 'Product D', 200.00),
(5, 'Product E', 100.00),
(6, 'Product F', 250.00),
(7, 'Product G', 300.00),
(8, 'Product H', 200.00),
(9, 'Product I', 350.00),
(10, 'Product J', 400.00),
(11, 'Product K', 150.00),
(12, 'Product L', 250.00),
(13, 'Product M', 300.00),
(14, 'Product N', 350.00),
(15, 'Product O', 400.00),
(16, 'Product P', 100.00),
(17, 'Product Q', 150.00),
(18, 'Product R', 200.00),
(19, 'Product S', 250.00),
(20, 'Product T', 300.00),
(21, 'Product U', 350.00),
(22, 'Product V', 400.00),
(23, 'Product W', 450.00),
(24, 'Product X', 500.00),
(25, 'Product Y', 150.00),
(26, 'Product Z', 200.00),
(27, 'Product AA', 250.00),
(28, 'Product AB', 300.00),
(29, 'Product AC', 350.00),
(30, 'Product AD', 400.00),
(31, 'Product AE', 450.00),
(32, 'Product AF', 500.00),
(33, 'Product AG', 550.00),
(34, 'Product AH', 600.00),
(35, 'Product AI', 650.00),
(36, 'Product AJ', 700.00),
(37, 'Product AK', 750.00),
(38, 'Product AL', 800.00),
(39, 'Product AM', 850.00),
(40, 'Product AN', 900.00);
select *from products99
--Use RANK() to rank products by their total sales while handling ties appropriately.
select productid, productname, totalsales, rank() over( order by totalsales desc) from products99
--task 3 Create a query to retrieve the previous order's date for each order in the Orders table using the LAG() function.
-- DDL: Create Orders table
CREATE TABLE Orders99 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into Orders table
INSERT INTO Orders99 (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(1, 101, '2024-01-01', 250.00),
(2, 102, '2024-01-02', 300.00),
(3, 103, '2024-01-03', 150.00),
(4, 104, '2024-01-04', 500.00),
(5, 105, '2024-01-05', 220.00),
(6, 106, '2024-01-06', 330.00),
(7, 107, '2024-01-07', 410.00),
(8, 108, '2024-01-08', 290.00),
(9, 109, '2024-01-09', 350.00),
(10, 110, '2024-01-10', 270.00),
(11, 111, '2024-01-11', 400.00),
(12, 112, '2024-01-12', 360.00),
(13, 113, '2024-01-13', 280.00),
(14, 114, '2024-01-14', 340.00),
(15, 115, '2024-01-15', 230.00),
(16, 116, '2024-01-16', 490.00),
(17, 117, '2024-01-17', 310.00),
(18, 118, '2024-01-18', 250.00),
(19, 119, '2024-01-19', 440.00),
(20, 120, '2024-01-20', 380.00),
(21, 121, '2024-01-21', 420.00),
(22, 122, '2024-01-22', 500.00),
(23, 123, '2024-01-23', 390.00),
(24, 124, '2024-01-24', 320.00),
(25, 125, '2024-01-25', 470.00),
(26, 126, '2024-01-26', 280.00),
(27, 127, '2024-01-27', 360.00),
(28, 128, '2024-01-28', 410.00),
(29, 129, '2024-01-29', 450.00),
(30, 130, '2024-01-30', 490.00),
(31, 131, '2024-01-31', 510.00),
(32, 132, '2024-02-01', 270.00),
(33, 133, '2024-02-02', 420.00),
(34, 134, '2024-02-03', 330.00),
(35, 135, '2024-02-04', 380.00),
(36, 136, '2024-02-05', 500.00),
(37, 137, '2024-02-06', 460.00),
(38, 138, '2024-02-07', 490.00),
(39, 139, '2024-02-08', 430.00),
(40, 140, '2024-02-09', 510.00);
select *from orders99
--Create a query to retrieve the previous order's date for each order in the Orders table using the LAG() function.
select orderid, customerid, orderdate, orderamount, lag(orderdate) over(order by orderdate desc)as orderdate1 from orders99
--task 4
--Write a query to calculate the moving sum of Price for products with a window frame of 3 rows.
-- DDL: Create Products table with Price column
CREATE TABLE Products98 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

-- DML: Insert at least 40 rows into Products table
INSERT INTO Products98 (ProductID, ProductName, Price) VALUES
(1, 'Product A', 10.00),
(2, 'Product B', 12.50),
(3, 'Product C', 15.00),
(4, 'Product D', 20.00),
(5, 'Product E', 25.00),
(6, 'Product F', 30.00),
(7, 'Product G', 35.00),
(8, 'Product H', 40.00),
(9, 'Product I', 45.00),
(10, 'Product J', 50.00),
(11, 'Product K', 55.00),
(12, 'Product L', 60.00),
(13, 'Product M', 65.00),
(14, 'Product N', 70.00),
(15, 'Product O', 75.00),
(16, 'Product P', 80.00),
(17, 'Product Q', 85.00),
(18, 'Product R', 90.00),
(19, 'Product S', 95.00),
(20, 'Product T', 100.00),
(21, 'Product U', 105.00),
(22, 'Product V', 110.00),
(23, 'Product W', 115.00),
(24, 'Product X', 120.00),
(25, 'Product Y', 125.00),
(26, 'Product Z', 130.00),
(27, 'Product AA', 135.00),
(28, 'Product AB', 140.00),
(29, 'Product AC', 145.00),
(30, 'Product AD', 150.00),
(31, 'Product AE', 155.00),
(32, 'Product AF', 160.00),
(33, 'Product AG', 165.00),
(34, 'Product AH', 170.00),
(35, 'Product AI', 175.00),
(36, 'Product AJ', 180.00),
(37, 'Product AK', 185.00),
(38, 'Product AL', 190.00),
(39, 'Product AM', 195.00),
(40, 'Product AN', 200.00);
select *from products98
--Write a query to calculate the moving sum of Price for products with a window frame of 3 rows.
select productid, productname, price, sum(price)over( order by productname desc  
rows between 3 preceding and current row) as price_moving from products98
--task 5 Use NTILE(4) to assign employees to four salary ranges and display each employee's salary range.
CREATE TABLE Employees97 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Position NVARCHAR(50),
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Employees97 (Name, Position, Salary) VALUES
('John Doe', 'Software Engineer', 75000),
('Alice Smith', 'Data Analyst', 68000),
('Bob Johnson', 'Project Manager', 90000),
('David White', 'QA Engineer', 65000),
('Emma Brown', 'HR Manager', 72000),
('Michael Green', 'Software Engineer', 77000),
('Sophia Clark', 'Business Analyst', 71000),
('Daniel Lewis', 'DevOps Engineer', 88000),
('Olivia Martin', 'Marketing Manager', 73000),
('William Scott', 'Accountant', 66000),
('James Hall', 'Database Administrator', 85000),
('Charlotte Turner', 'Software Engineer', 78000),
('Ethan Phillips', 'Network Administrator', 81000),
('Ava Adams', 'Legal Advisor', 92000),
('Mason Baker', 'System Analyst', 75000),
('Isabella Nelson', 'Finance Manager', 96000),
('Liam Carter', 'Customer Support', 62000),
('Harper Evans', 'Product Manager', 91000),
('Benjamin Foster', 'Security Specialist', 89000),
('Evelyn Parker', 'Data Scientist', 95000),
('Noah Collins', 'AI Engineer', 98000),
('Grace Bennett', 'UX Designer', 70000),
('Lucas Murphy', 'Frontend Developer', 73000),
('Amelia Richardson', 'Backend Developer', 77000),
('Henry Rogers', 'IT Manager', 92000),
('Mila Reed', 'Full Stack Developer', 88000),
('Elijah Cook', 'Cybersecurity Analyst', 86000),
('Scarlett Brooks', 'Data Engineer', 83000),
('Logan Price', 'Game Developer', 81000),
('Chloe Gray', 'Cloud Engineer', 94000),
('Alexander Hughes', 'Scrum Master', 88000),
('Zoe Peterson', 'SEO Specialist', 69000),
('Sebastian Morris', 'Content Writer', 67000),
('Lily Barnes', 'Social Media Manager', 72000),
('Jack Ross', 'IT Support', 62000),
('Madison Simmons', 'Mobile Developer', 76000),
('Carter Bryant', 'Blockchain Developer', 99000),
('Penelope Howard', 'Sales Executive', 75000),
('Owen Ward', 'Tech Lead', 104000),
('Ella Cooper', 'Game Designer', 78000),
('Luke Bell', 'ERP Consultant', 87000);
select *from employees97
--Use NTILE(4) to assign employees to four salary ranges and display each employee's salary range.
select employeeid, name, position, salary,  ntile(4) over (order by salary ) as a,
row_number() over(order by salary) as b from employees97
----task 6 Write a query to partition the Sales table by ProductID and calculate the total SalesAmount per product.
CREATE TABLE Sales96 (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    SalesAmount DECIMAL(10,2) NOT NULL
);
INSERT INTO Sales96(ProductID, SalesAmount) VALUES
(1, 150.00), (1, 200.00), (1, 250.00), (1, 180.00), (1, 220.00),
(2, 300.00), (2, 350.00), (2, 330.00), (2, 370.00), (2, 400.00),
(3, 500.00), (3, 520.00), (3, 540.00), (3, 560.00), (3, 580.00),
(4, 600.00), (4, 620.00), (4, 640.00), (4, 660.00), (4, 680.00),
(5, 700.00), (5, 720.00), (5, 740.00), (5, 760.00), (5, 780.00),
(6, 800.00), (6, 820.00), (6, 840.00), (6, 860.00), (6, 880.00),
(7, 900.00), (7, 920.00), (7, 940.00), (7, 960.00), (7, 980.00),
(8, 1000.00), (8, 1020.00), (8, 1040.00), (8, 1060.00), (8, 1080.00);
select *from sales96
--Write a query to partition the Sales table by ProductID and calculate the total SalesAmount per product.
select a.saleid, a.productid, a.salesamount, sum (a.salesamount) over(partition by a.productid order by a.saleid ) as total1, 
sum(salesamount) over() as total, b.totalproduct from sales96 a
join (select productid, sum (salesamount) as totalproduct
from sales96  group by productid) b on b.productid=a.productid 
--task 7Use DENSE_RANK() to rank products by StockQuantity without gaps in the ranking.
CREATE TABLE Products95 (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    StockQuantity INT NOT NULL
);
INSERT INTO Products95 (ProductName, StockQuantity) VALUES
('Product A', 50), ('Product B', 60), ('Product C', 70), ('Product D', 80), ('Product E', 90),
('Product F', 50), ('Product G', 60), ('Product H', 70), ('Product I', 80), ('Product J', 90),
('Product K', 100), ('Product L', 110), ('Product M', 120), ('Product N', 130), ('Product O', 140),
('Product P', 100), ('Product Q', 110), ('Product R', 120), ('Product S', 130), ('Product T', 140),
('Product U', 150), ('Product V', 160), ('Product W', 170), ('Product X', 180), ('Product Y', 190),
('Product Z', 150), ('Product AA', 160), ('Product BB', 170), ('Product CC', 180), ('Product DD', 190),
('Product EE', 200), ('Product FF', 210), ('Product GG', 220), ('Product HH', 230), ('Product II', 240),
('Product JJ', 200), ('Product KK', 210), ('Product LL', 220), ('Product MM', 230), ('Product NN', 240);
select *from products95
--Use DENSE_RANK() to rank products by StockQuantity without gaps in the ranking.
select productid, productname, stockquantity, dense_rank() over(order by stockquantity) as ranking from products95
--task 8
--Create a query using ROW_NUMBER() to identify the second highest salary in each department.
CREATE TABLE Employees94 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Employees94 (Name, DepartmentID, Salary) VALUES
('Alice', 1, 5000.00), ('Bob', 1, 6000.00), ('Charlie', 1, 7000.00), ('David', 1, 8000.00), ('Eve', 1, 9000.00),
('Frank', 2, 5500.00), ('Grace', 2, 6500.00), ('Hank', 2, 7500.00), ('Ivy', 2, 8500.00), ('Jack', 2, 9500.00),
('Kim', 3, 5200.00), ('Liam', 3, 6200.00), ('Mia', 3, 7200.00), ('Noah', 3, 8200.00), ('Olivia', 3, 9200.00),
('Paul', 4, 5300.00), ('Quinn', 4, 6300.00), ('Ryan', 4, 7300.00), ('Sophia', 4, 8300.00), ('Tom', 4, 9300.00),
('Uma', 5, 5100.00), ('Victor', 5, 6100.00), ('Wendy', 5, 7100.00), ('Xander', 5, 8100.00), ('Yara', 5, 9100.00),
('Zane', 6, 5600.00), ('Amy', 6, 6600.00), ('Brian', 6, 7600.00), ('Clara', 6, 8600.00), ('Derek', 6, 9600.00),
('Eva', 7, 5700.00), ('Finn', 7, 6700.00), ('Gina', 7, 7700.00), ('Henry', 7, 8700.00), ('Iris', 7, 9700.00),
('James', 8, 5800.00), ('Kelly', 8, 6800.00), ('Leo', 8, 7800.00), ('Mona', 8, 8800.00), ('Nate', 8, 9800.00);
select*from employees94 
--Create a query using ROW_NUMBER() to identify the second highest salary in each department.
select *from(select employeeid, name, departmentid, salary,  row_number() over(partition by 
departmentid order by salary desc) as ordered from employees94 ) as ranked
where ordered=2
 --task 9 Write a query to calculate the running total of sales for each product in the Sales table.
 CREATE TABLE Sales93 (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    SalesAmount DECIMAL(10,2) NOT NULL
); 
INSERT INTO Sales93 (ProductID, SalesAmount) VALUES
(1, 150.00), (1, 200.00), (1, 250.00), (1, 180.00), (1, 220.00),
(2, 300.00), (2, 350.00), (2, 330.00), (2, 370.00), (2, 400.00),
(3, 500.00), (3, 520.00), (3, 540.00), (3, 560.00), (3, 580.00),
(4, 600.00), (4, 620.00), (4, 640.00), (4, 660.00), (4, 680.00),
(5, 700.00), (5, 720.00), (5, 740.00), (5, 760.00), (5, 780.00),
(6, 800.00), (6, 820.00), (6, 840.00), (6, 860.00), (6, 880.00),
(7, 900.00), (7, 920.00), (7, 940.00), (7, 960.00), (7, 980.00),
(8, 1000.00), (8, 1020.00), (8, 1040.00), (8, 1060.00), (8, 1080.00);
select *from sales93
--Write a query to calculate the running total of sales for each product in the Sales table.
select saleid, productid, salesamount, sum(salesamount) over(partition by productid order by saleid) as calculation from sales93

--task 10 Use LEAD() to display the SalesAmount of the next row for each employee’s sale in the Sales table. 
CREATE TABLE Sales92 (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT NOT NULL,
    SalesAmount DECIMAL(10,2) NOT NULL
);
INSERT INTO Sales92 (EmployeeID, SalesAmount) VALUES
(1, 150.00), (1, 200.00), (1, 250.00), (1, 180.00), (1, 220.00),
(2, 300.00), (2, 350.00), (2, 330.00), (2, 370.00), (2, 400.00),
(3, 500.00), (3, 520.00), (3, 540.00), (3, 560.00), (3, 580.00),
(4, 600.00), (4, 620.00), (4, 640.00), (4, 660.00), (4, 680.00),
(5, 700.00), (5, 720.00), (5, 740.00), (5, 760.00), (5, 780.00),
(6, 800.00), (6, 820.00), (6, 840.00), (6, 860.00), (6, 880.00),
(7, 900.00), (7, 920.00), (7, 940.00), (7, 960.00), (7, 980.00),
(8, 1000.00), (8, 1020.00), (8, 1040.00), (8, 1060.00), (8, 1080.00);
select * from sales92
--Use LEAD() to display the SalesAmount of the next row for each employee’s sale in the Sales table.
select saleid, employeeid, salesamount , lead(salesamount) over( partition by employeeid order by saleid)
as lead_f from sales92
--task 12 Use RANK() to determine the highest earners within each department.

CREATE TABLE Employees92 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Employees92 (Name, DepartmentID, Salary) VALUES
('Alice', 1, 5000.00), ('Bob', 1, 6000.00), ('Charlie', 1, 7000.00), ('David', 1, 8000.00), ('Emma', 1, 9000.00),
('Frank', 2, 5500.00), ('Grace', 2, 6500.00), ('Hannah', 2, 7500.00), ('Isaac', 2, 8500.00), ('Jack', 2, 9500.00),
('Karen', 3, 5200.00), ('Liam', 3, 6200.00), ('Mia', 3, 7200.00), ('Noah', 3, 8200.00), ('Olivia', 3, 9200.00),
('Paul', 4, 5100.00), ('Quinn', 4, 6100.00), ('Ryan', 4, 7100.00), ('Sophia', 4, 8100.00), ('Thomas', 4, 9100.00),
('Uma', 5, 5050.00), ('Victor', 5, 6050.00), ('Wendy', 5, 7050.00), ('Xavier', 5, 8050.00), ('Yvonne', 5, 9050.00),
('Zane', 6, 5300.00), ('Amy', 6, 6300.00), ('Brian', 6, 7300.00), ('Cathy', 6, 8300.00), ('Derek', 6, 9300.00),
('Ethan', 7, 5400.00), ('Fiona', 7, 6400.00), ('George', 7, 7400.00), ('Helen', 7, 8400.00), ('Ian', 7, 9400.00),
('Jane', 8, 5600.00), ('Kyle', 8, 6600.00), ('Laura', 8, 7600.00), ('Mike', 8, 8600.00), ('Nancy', 8, 9600.00);
select *from employees92
--Use RANK() to determine the highest earners within each department.
  With A as 
       (select employeeid, name, departmentid, salary , 
	   rank() over(partition by departmentid order by salary desc) as d
       , max(salary) over (partition by departmentid ) as e
from employees92 ) select *from A where d=1
--task 12  Write a query to partition employees by DepartmentID and rank them by salary.
CREATE TABLE Employees91 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Employees91 (Name, DepartmentID, Salary) VALUES
('John Doe', 1, 5000.00), ('Jane Smith', 1, 6000.00), ('Alice Johnson', 1, 5500.00), 
('Bob Brown', 1, 7000.00), ('Charlie Davis', 1, 7200.00), 

('David White', 2, 8000.00), ('Emma Thomas', 2, 7500.00), ('Olivia Harris', 2, 7800.00), 
('William Martin', 2, 9000.00), ('Sophia Lee', 2, 8800.00), 

('James Walker', 3, 6200.00), ('Mia Allen', 3, 6600.00), ('Ethan Young', 3, 7100.00), 
('Amelia Scott', 3, 7400.00), ('Benjamin Adams', 3, 7700.00), 

('Henry King', 4, 6800.00), ('Lucas Wright', 4, 7300.00), ('Charlotte Baker', 4, 7600.00), 
('Liam Green', 4, 8100.00), ('Isabella Hall', 4, 8300.00), 

('Mason Nelson', 5, 6900.00), ('Harper Carter', 5, 7200.00), ('Evelyn Mitchell', 5, 7600.00), 
('Alexander Perez', 5, 8000.00), ('Daniel Roberts', 5, 8500.00), 

('Sebastian Phillips', 6, 7200.00), ('Victoria Campbell', 6, 7500.00), ('Matthew Evans', 6, 7900.00), 
('Avery Edwards', 6, 8100.00), ('Elijah Turner', 6, 8700.00), 

('Scarlett Parker', 7, 7300.00), ('Jack Collins', 7, 7700.00), ('Madison Stewart', 7, 8200.00), 
('Daniel Sanchez', 7, 8600.00), ('Samuel Morris', 7, 8800.00), 

('Chloe Reed', 8, 7400.00), ('Gabriel Cook', 8, 7800.00), ('Penelope Bell', 8, 8300.00), 
('Aiden Ward', 8, 8700.00), ('Grayson Hughes', 8, 9000.00);
select *from employees91
--Write a query to partition employees by DepartmentID and rank them by salary.
select 
employeeid, name, departmentid, salary, 
rank() over (partition by departmentid order by salary desc) a
from employees91
--task 13 Use NTILE(5) to divide products into five groups based on their Price.
CREATE TABLE Products101 (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
INSERT INTO Products101 (ProductName, Price) VALUES
('Product A', 10.00), ('Product B', 15.00), ('Product C', 20.00), ('Product D', 25.00), ('Product E', 30.00),
('Product F', 35.00), ('Product G', 40.00), ('Product H', 45.00), ('Product I', 50.00), ('Product J', 55.00),
('Product K', 60.00), ('Product L', 65.00), ('Product M', 70.00), ('Product N', 75.00), ('Product O', 80.00),
('Product P', 85.00), ('Product Q', 90.00), ('Product R', 95.00), ('Product S', 100.00), ('Product T', 105.00),
('Product U', 110.00), ('Product V', 115.00), ('Product W', 120.00), ('Product X', 125.00), ('Product Y', 130.00),
('Product Z', 135.00), ('Product AA', 140.00), ('Product AB', 145.00), ('Product AC', 150.00), ('Product AD', 155.00),
('Product AE', 160.00), ('Product AF', 165.00), ('Product AG', 170.00), ('Product AH', 175.00), ('Product AI', 180.00),
('Product AJ', 185.00), ('Product AK', 190.00), ('Product AL', 195.00), ('Product AM', 200.00), ('Product AN', 205.00);
select*from products101
--Use NTILE(5) to divide products into five groups based on their Price.
select productid, productname, price, ntile(5) over (  order by price) from products101
----task 14 Write a query to calculate the difference between each employee's salary and
--the highest salary in their department.

CREATE TABLE Employees102 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Employees102 (Name, DepartmentID, Salary) VALUES
('John Doe', 1, 5000.00), ('Jane Smith', 1, 6000.00), ('Alice Johnson', 1, 5500.00), 
('Bob Brown', 1, 7000.00), ('Charlie Davis', 1, 7200.00), 

('David White', 2, 8000.00), ('Emma Thomas', 2, 7500.00), ('Olivia Harris', 2, 7800.00), 
('William Martin', 2, 9000.00), ('Sophia Lee', 2, 8800.00), 

('James Walker', 3, 6200.00), ('Mia Allen', 3, 6600.00), ('Ethan Young', 3, 7100.00), 
('Amelia Scott', 3, 7400.00), ('Benjamin Adams', 3, 7700.00), 

('Henry King', 4, 6800.00), ('Lucas Wright', 4, 7300.00), ('Charlotte Baker', 4, 7600.00), 
('Liam Green', 4, 8100.00), ('Isabella Hall', 4, 8300.00), 

('Mason Nelson', 5, 6900.00), ('Harper Carter', 5, 7200.00), ('Evelyn Mitchell', 5, 7600.00), 
('Alexander Perez', 5, 8000.00), ('Daniel Roberts', 5, 8500.00), 

('Sebastian Phillips', 6, 7200.00), ('Victoria Campbell', 6, 7500.00), ('Matthew Evans', 6, 7900.00), 
('Avery Edwards', 6, 8100.00), ('Elijah Turner', 6, 8700.00), 

('Scarlett Parker', 7, 7300.00), ('Jack Collins', 7, 7700.00), ('Madison Stewart', 7, 8200.00), 
('Daniel Sanchez', 7, 8600.00), ('Samuel Morris', 7, 8800.00), 

('Chloe Reed', 8, 7400.00), ('Gabriel Cook', 8, 7800.00), ('Penelope Bell', 8, 8300.00), 
('Aiden Ward', 8, 8700.00), ('Grayson Hughes', 8, 9000.00);
select *from employees102
--Write a query to calculate the difference between each employee's salary and the highest salary in their department.
select employeeid, name, departmentid, salary, max(salary) over ( partition  by departmentid) as max_salary, 
max(salary) over ( partition  by departmentid)-salary as differ from employees102
 --task 15  Use LAG() to display the previous product's SalesAmount for each sale.
 CREATE TABLE Sales103 (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    SalesAmount DECIMAL(10,2) NOT NULL
);
INSERT INTO Sales103 (ProductID, SalesAmount) VALUES
(1, 150.00), (1, 180.00), (1, 200.00), (1, 220.00), (1, 250.00),
(2, 300.00), (2, 320.00), (2, 350.00), (2, 370.00), (2, 400.00),
(3, 500.00), (3, 520.00), (3, 540.00), (3, 560.00), (3, 580.00),
(4, 600.00), (4, 620.00), (4, 640.00), (4, 660.00), (4, 680.00),
(5, 700.00), (5, 720.00), (5, 740.00), (5, 760.00), (5, 780.00),
(6, 800.00), (6, 820.00), (6, 840.00), (6, 860.00), (6, 880.00),
(7, 900.00), (7, 920.00), (7, 940.00), (7, 960.00), (7, 980.00),
(8, 1000.00), (8, 1020.00), (8, 1040.00), (8, 1060.00), (8, 1080.00);
select *from sales103
--Use LAG() to display the previous product's SalesAmount for each sale.
select saleid, productid, salesamount, lag(salesamount) over (order by saleid desc) from sales103
--task16 Write a query to calculate the cumulative sum of OrderAmount for each customer in the Orders table.
CREATE TABLE Orders104 (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    OrderAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATE NOT NULL
);
INSERT INTO Orders104 (CustomerID, OrderAmount, OrderDate) VALUES
(1, 150.00, '2024-01-10'), (1, 200.00, '2024-01-15'), (1, 250.00, '2024-01-20'), 
(1, 180.00, '2024-01-25'), (1, 220.00, '2024-01-30'),

(2, 300.00, '2024-02-05'), (2, 350.00, '2024-02-10'), (2, 330.00, '2024-02-15'), 
(2, 370.00, '2024-02-20'), (2, 400.00, '2024-02-25'),

(3, 500.00, '2024-03-01'), (3, 520.00, '2024-03-05'), (3, 540.00, '2024-03-10'), 
(3, 560.00, '2024-03-15'), (3, 580.00, '2024-03-20'),

(4, 600.00, '2024-04-01'), (4, 620.00, '2024-04-05'), (4, 640.00, '2024-04-10'), 
(4, 660.00, '2024-04-15'), (4, 680.00, '2024-04-20'),

(5, 700.00, '2024-05-01'), (5, 720.00, '2024-05-05'), (5, 740.00, '2024-05-10'), 
(5, 760.00, '2024-05-15'), (5, 780.00, '2024-05-20'),

(6, 800.00, '2024-06-01'), (6, 820.00, '2024-06-05'), (6, 840.00, '2024-06-10'), 
(6, 860.00, '2024-06-15'), (6, 880.00, '2024-06-20'),

(7, 900.00, '2024-07-01'), (7, 920.00, '2024-07-05'), (7, 940.00, '2024-07-10'), 
(7, 960.00, '2024-07-15'), (7, 980.00, '2024-07-20'),

(8, 1000.00, '2024-08-01'), (8, 1020.00, '2024-08-05'), (8, 1040.00, '2024-08-10'), 
(8, 1060.00, '2024-08-15'), (8, 1080.00, '2024-08-20');
select *from orders104
--Write a query to calculate the cumulative sum of OrderAmount for each customer in the Orders table.
select orderid, customerid, orderamount, orderdate , sum(orderamount) over ( partition by customerid order by
orderdate) from orders104
--task 17 Use ROW_NUMBER() to identify the 3rd most recent order for each customer in the Orders table.
CREATE TABLE Orders105 (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    OrderAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATE NOT NULL
);
INSERT INTO Orders104 (CustomerID, OrderAmount, OrderDate) VALUES
(1, 150.00, '2024-01-10'), (1, 200.00, '2024-01-15'), (1, 250.00, '2024-01-20'), 
(1, 180.00, '2024-01-25'), (1, 220.00, '2024-01-30'),

(2, 300.00, '2024-02-05'), (2, 350.00, '2024-02-10'), (2, 330.00, '2024-02-15'), 
(2, 370.00, '2024-02-20'), (2, 400.00, '2024-02-25'),

(3, 500.00, '2024-03-01'), (3, 520.00, '2024-03-05'), (3, 540.00, '2024-03-10'), 
(3, 560.00, '2024-03-15'), (3, 580.00, '2024-03-20'),

(4, 600.00, '2024-04-01'), (4, 620.00, '2024-04-05'), (4, 640.00, '2024-04-10'), 
(4, 660.00, '2024-04-15'), (4, 680.00, '2024-04-20'),

(5, 700.00, '2024-05-01'), (5, 720.00, '2024-05-05'), (5, 740.00, '2024-05-10'), 
(5, 760.00, '2024-05-15'), (5, 780.00, '2024-05-20'),

(6, 800.00, '2024-06-01'), (6, 820.00, '2024-06-05'), (6, 840.00, '2024-06-10'), 
(6, 860.00, '2024-06-15'), (6, 880.00, '2024-06-20'),

(7, 900.00, '2024-07-01'), (7, 920.00, '2024-07-05'), (7, 940.00, '2024-07-10'), 
(7, 960.00, '2024-07-15'), (7, 980.00, '2024-07-20'),

(8, 1000.00, '2024-08-01'), (8, 1020.00, '2024-08-05'), (8, 1040.00, '2024-08-10'), 
(8, 1060.00, '2024-08-15'), (8, 1080.00, '2024-08-20');
select *from orders104
--Use ROW_NUMBER() to identify the 3rd most recent order for each customer in the Orders table.
with s as (select orderid, customerid, orderamount, orderdate , row_number() 
over (partition by customerid order by orderdate desc) as d from orders104) select *from s 
where d=3
--task 18 Write a query to partition employees by DepartmentID and rank them by their HireDate within each department.
-- Create Employees Table
CREATE TABLE Employees105 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    HireDate DATE NOT NULL
);

-- Insert at least 40 rows into Employees105
INSERT INTO Employees105 (Name, DepartmentID, HireDate) VALUES
('Alice', 1, '2020-01-15'), ('Bob', 1, '2019-03-22'), ('Charlie', 1, '2021-06-10'), 
('David', 1, '2018-07-30'), ('Eve', 1, '2022-05-12'),

('Frank', 2, '2021-09-18'), ('Grace', 2, '2019-11-25'), ('Hank', 2, '2023-02-17'), 
('Ivy', 2, '2018-12-10'), ('Jack', 2, '2020-04-05'),

('Karen', 3, '2017-08-23'), ('Leo', 3, '2019-10-30'), ('Mona', 3, '2021-01-14'), 
('Nina', 3, '2016-06-25'), ('Oscar', 3, '2023-07-19'),

('Paul', 4, '2022-03-11'), ('Quinn', 4, '2018-02-28'), ('Rita', 4, '2020-09-09'), 
('Steve', 4, '2019-07-04'), ('Tina', 4, '2021-12-20'),

('Uma', 5, '2017-05-15'), ('Victor', 5, '2020-11-30'), ('Wendy', 5, '2019-08-08'), 
('Xander', 5, '2023-06-22'), ('Yara', 5, '2021-04-17'),

('Zane', 6, '2022-01-01'), ('Amy', 6, '2019-05-05'), ('Brian', 6, '2018-09-12'), 
('Chloe', 6, '2020-07-29'), ('Derek', 6, '2023-10-14'),

('Ella', 7, '2016-12-21'), ('Finn', 7, '2018-03-03'), ('Gina', 7, '2019-06-18'), 
('Harry', 7, '2021-08-09'), ('Iris', 7, '2023-01-27'),

('James', 8, '2015-11-11'), ('Kelly', 8, '2017-09-14'), ('Liam', 8, '2020-02-22'), 
('Mia', 8, '2022-06-06'), ('Noah', 8, '2019-04-30');

select *from employees105
--Write a query to partition employees by DepartmentID and rank them by their HireDate within each department.
select employeeid, name, departmentid, hiredate, rank() over( partition by departmentid 
order by hiredate) as f from employees105
 --task 19 
 -- Create Employees Table
CREATE TABLE Employees108 (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- Insert at least 40 rows into Employees107
INSERT INTO Employees108 (Name, DepartmentID, Salary) VALUES
('Alice', 1, 5000.00), ('Bob', 1, 6000.00), ('Charlie', 1, 5500.00), 
('David', 1, 7000.00), ('Eve', 1, 7500.00),

('Frank', 2, 8000.00), ('Grace', 2, 7200.00), ('Hank', 2, 6500.00), 
('Ivy', 2, 6800.00), ('Jack', 2, 9000.00),

('Karen', 3, 4800.00), ('Leo', 3, 5200.00), ('Mona', 3, 5300.00), 
('Nina', 3, 5500.00), ('Oscar', 3, 6000.00),

('Paul', 4, 6200.00), ('Quinn', 4, 6400.00), ('Rita', 4, 6600.00), 
('Steve', 4, 6800.00), ('Tina', 4, 7000.00),

('Uma', 5, 7100.00), ('Victor', 5, 7200.00), ('Wendy', 5, 7300.00), 
('Xander', 5, 7400.00), ('Yara', 5, 7500.00),

('Zane', 6, 7600.00), ('Amy', 6, 7700.00), ('Brian', 6, 7800.00), 
('Chloe', 6, 7900.00), ('Derek', 6, 8000.00),

('Ella', 7, 8100.00), ('Finn', 7, 8200.00), ('Gina', 7, 8300.00), 
('Harry', 7, 8400.00), ('Iris', 7, 8500.00),

('James', 8, 8600.00), ('Kelly', 8, 8700.00), ('Liam', 8, 8800.00), 
('Mia', 8, 8900.00), ('Noah', 8, 9000.00);
select *from employees108
--Use DENSE_RANK() to find the 3rd highest Salary in each department from the Employees table.
with A as (select employeeid, name, departmentid, salary, dense_rank() 
over (partition by departmentid order by salary desc) as d from employees108 ) select *from A 
where d=3
--task 20 
-- Create Orders Table
CREATE TABLE Orders108 (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    OrderAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATE NOT NULL
);

-- Insert at least 40 rows into Orders108
INSERT INTO Orders108 (CustomerID, OrderAmount, OrderDate) VALUES
(1, 100.00, '2024-01-01'), (1, 150.00, '2024-01-05'), (1, 200.00, '2024-01-10'),
(2, 250.00, '2024-02-01'), (2, 300.00, '2024-02-03'), (2, 350.00, '2024-02-07'),
(3, 400.00, '2024-03-01'), (3, 450.00, '2024-03-04'), (3, 500.00, '2024-03-08'),
(4, 550.00, '2024-04-01'), (4, 600.00, '2024-04-06'), (4, 650.00, '2024-04-10'),
(5, 700.00, '2024-05-01'), (5, 750.00, '2024-05-05'), (5, 800.00, '2024-05-09'),
(6, 850.00, '2024-06-01'), (6, 900.00, '2024-06-07'), (6, 950.00, '2024-06-10'),
(7, 1000.00, '2024-07-01'), (7, 1050.00, '2024-07-04'), (7, 1100.00, '2024-07-09'),
(8, 1150.00, '2024-08-01'), (8, 1200.00, '2024-08-05'), (8, 1250.00, '2024-08-10'),
(9, 1300.00, '2024-09-01'), (9, 1350.00, '2024-09-06'), (9, 1400.00, '2024-09-11'),
(10, 1450.00, '2024-10-01'), (10, 1500.00, '2024-10-05'), (10, 1550.00, '2024-10-09'),
(11, 1600.00, '2024-11-01'), (11, 1650.00, '2024-11-06'), (11, 1700.00, '2024-11-10'),
(12, 1750.00, '2024-12-01'), (12, 1800.00, '2024-12-05'), (12, 1850.00, '2024-12-10');
--Create a query using LEAD() to calculate the difference in OrderDate between consecutive orders.

select *from orders108 
select orderid, customerid, orderamount, orderdate, lead(orderdate) 
over (partition by customerid order by orderdate) s, datediff(day, orderdate, lead(orderdate) 
over (partition by customerid order by orderdate)) as differ   from orders108 
