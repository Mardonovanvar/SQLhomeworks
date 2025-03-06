create database lesson_17
use lesson_17
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    client_id INT REFERENCES clients(client_id),
    order_date DATE NOT NULL,
    item_count INT NOT NULL CHECK (item_count > 0)
);
-- Mijozlarni qo'shish
INSERT INTO clients (client_id, client_name) VALUES 
(101, 'Aliyev Alisher'), 
(102, 'Karimova Madina'), 
(103, 'Rustamov Shavkat'),
(104, 'Sobirov Dilshod'), 
(105, 'Turg‘unova Shaxnoza'), 
(106, 'Normatov Umid'),
(107, 'Yusupova Aziza'), 
(108, 'Mahmudov Sherzod'), 
(109, 'Ergashov Anvar'),
(110, 'Davronov Jasur');

-- Buyurtmalarni qo'shish
INSERT INTO orders (order_id, client_id, order_date, item_count) VALUES
(1, 101, '2025-02-20', 5),
(2, 102, '2025-02-25', 8),
(3, 103, '2025-02-10', 2),
(4, 104, '2025-01-21', 10),
(5, 105, '2025-02-02', 3),
(6, 106, '2025-02-22', 6),
(7, 107, '2025-02-15', 4),
(8, 108, '2025-02-06', 7),
(9, 109, '2025-01-28', 9),
(10, 110, '2025-02-04', 12),
(11, 101, '2025-02-18', 1),
(12, 102, '2025-02-12', 3),
(13, 103, '2025-02-06', 5),
(14, 104, '2025-02-01', 6),
(15, 105, '2025-02-17', 8),
(16, 106, '2025-02-26', 4),
(17, 107, '2025-02-02', 10),
(18, 108, '2025-02-27', 2),
(19, 109, '2025-02-21', 7),
(20, 110, '2025-02-23', 5),
(21, 101, '2025-02-08', 4),
(22, 102, '2025-02-20', 6),
(23, 103, '2025-02-02', 3),
(24, 104, '2025-02-19', 8),
(25, 105, '2025-02-11', 5),
(26, 106, '2025-02-08', 9),
(27, 107, '2025-02-16', 3),
(28, 108, '2025-02-25', 7),
(29, 109, '2025-02-16', 6),
(30, 110, '2025-02-11', 10),
(31, 101, '2025-02-27', 2),
(32, 102, '2025-02-14', 4),
(33, 103, '2025-02-03', 9),
(34, 104, '2025-02-02', 3),
(35, 105, '2025-02-23', 2),
(36, 106, '2025-02-16', 6),
(37, 107, '2025-02-15', 8),
(38, 108, '2025-02-20', 3),
(39, 109, '2025-02-27', 4),
(40, 110, '2025-02-26', 5);
select *from clients
select *from orders
--task 6 Use a subquery to calculate the number of items ordered in the last 30 days by each client.

select a.*, (select sum(b.item_count) from orders b where b.client_id=a.client_id and  
b.order_date>= dateadd( day ,-30, (select max(order_date) from orders ))) as total_amount from clients a

--task 7
CREATE TABLE divisions (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(100) NOT NULL
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    division_id INT FOREIGN KEY REFERENCES divisions(division_id)
);

-- Bo'limlarni kiritish
INSERT INTO divisions (division_id, division_name) VALUES 
(1, 'HR'), 
(2, 'Finance'), 
(3, 'IT'), 
(4, 'Marketing');

-- Xodimlarni kiritish (40 ta qator)
INSERT INTO staff (staff_id, staff_name, salary, division_id) VALUES 
(1, 'John Doe', 60000, 1),
(2, 'Jane Smith', 75000, 1),
(3, 'Alice Johnson', 50000, 1),
(4, 'Bob Brown', 55000, 1),
(5, 'Charlie White', 70000, 1),
(6, 'Daniel Green', 80000, 2),
(7, 'Eve Black', 65000, 2),
(8, 'Frank Silver', 62000, 2),
(9, 'Grace Blue', 71000, 2),
(10, 'Hank Yellow', 73000, 2),
(11, 'Ian Orange', 90000, 3),
(12, 'Jack Red', 95000, 3),
(13, 'Karen Purple', 87000, 3),
(14, 'Leo Gold', 91000, 3),
(15, 'Mona Cyan', 89000, 3),
(16, 'Nancy Brown', 72000, 4),
(17, 'Oscar Green', 76000, 4),
(18, 'Paul Gray', 78000, 4),
(19, 'Quinn Silver', 74000, 4),
(20, 'Rachel White', 79000, 4),
(21, 'Steve Harris', 58000, 1),
(22, 'Tom Clark', 69000, 1),
(23, 'Uma Wilson', 73000, 1),
(24, 'Victor Adams', 75000, 1),
(25, 'Wendy Scott', 60000, 1),
(26, 'Xavier Lee', 82000, 2),
(27, 'Yasmine Patel', 83000, 2),
(28, 'Zack Turner', 81000, 2),
(29, 'Abigail Thomas', 86000, 2),
(30, 'Bruce Wayne', 88000, 2),
(31, 'Clark Kent', 97000, 3),
(32, 'Diana Prince', 99000, 3),
(33, 'Edward Cullen', 91000, 3),
(34, 'Frodo Baggins', 92000, 3),
(35, 'Gandalf Grey', 94000, 3),
(36, 'Hermione Granger', 77000, 4),
(37, 'Indiana Jones', 80000, 4),
(38, 'Jack Sparrow', 81000, 4),
(39, 'Katniss Everdeen', 78000, 4),
(40, 'Lara Croft', 83000, 4);
select *from divisions
select *from staff
--Create a correlated subquery to list staff whose salary exceeds the average salary of all staff in their division.

 select a.*, (select avg(d.salary) from staff d) as avg, (select b.division_name from divisions b where a.division_id=b.division_id) as [division name]  from staff a where 
 salary >(select avg(d.salary) from staff d where d.division_id=a.division_id)

--task 8 Write a query that uses a subquery to list items that have never been ordered.

-- Mahsulotlar jadvali
CREATE TABLE items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Buyurtmalar jadvali
CREATE TABLE orders01 (
    order_id INT PRIMARY KEY,
    item_id INT FOREIGN KEY REFERENCES items(item_id),
    order_date DATE NOT NULL,
    quantity INT NOT NULL
);
-- Mahsulotlar jadvaliga ma'lumotlar qo‘shish
INSERT INTO items (item_id, item_name, price) VALUES 
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 500.00),
(4, 'Headphones', 150.00),
(5, 'Smartwatch', 200.00),
(6, 'Monitor', 300.00),
(7, 'Keyboard', 50.00),
(8, 'Mouse', 40.00),
(9, 'Speaker', 100.00),
(10, 'Printer', 250.00),
(11, 'Router', 90.00),
(12, 'External HDD', 130.00),
(13, 'USB Flash Drive', 20.00),
(14, 'Microphone', 70.00),
(15, 'Webcam', 85.00),
(16, 'Game Console', 500.00),
(17, 'Graphics Card', 700.00),
(18, 'Processor', 400.00),
(19, 'RAM 16GB', 120.00),
(20, 'SSD 1TB', 180.00);

-- Buyurtmalar jadvaliga ma'lumotlar qo‘shish (faqat ayrim mahsulotlar buyurtma qilingan)
INSERT INTO orders01 (order_id, item_id, order_date, quantity) VALUES
(1, 1, '2024-02-15', 2),
(2, 2, '2024-02-18', 1),
(3, 3, '2024-02-20', 3),
(4, 5, '2024-02-22', 2),
(5, 7, '2024-02-25', 1),
(6, 10, '2024-02-27', 4),
(7, 12, '2024-03-01', 1),
(8, 14, '2024-03-03', 3),
(9, 16, '2024-03-05', 2),
(10, 18, '2024-03-06', 1);
--Write a query that uses a subquery to list items that have never been ordered.
select *from items 
select *from orders01
select a.item_name from items a where not exists (select 1 from orders01 b where a.item_id=b.item_id)
--task 9 Create a subquery to list all vendors who supply items priced above the average price of items.
-- Yetkazib beruvchilar jadvali
CREATE TABLE vendors (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL
);

-- Mahsulotlar jadvali
CREATE TABLE items01 (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    vendor_id INT FOREIGN KEY REFERENCES vendors(vendor_id)
);
-- Yetkazib beruvchilarni qo‘shish
INSERT INTO vendors (vendor_id, vendor_name) VALUES 
(1, 'Tech Supplies Co.'),
(2, 'Gadget Distributors'),
(3, 'Office Essentials Ltd.'),
(4, 'Hardware Solutions'),
(5, 'Electro World');

-- Mahsulotlarni qo‘shish
INSERT INTO items01 (item_id, item_name, price, vendor_id) VALUES 
(1, 'Laptop', 1200.00, 1),
(2, 'Smartphone', 800.00, 1),
(3, 'Tablet', 500.00, 2),
(4, 'Headphones', 150.00, 2),
(5, 'Smartwatch', 200.00, 3),
(6, 'Monitor', 300.00, 3),
(7, 'Keyboard', 50.00, 3),
(8, 'Mouse', 40.00, 3),
(9, 'Speaker', 100.00, 4),
(10, 'Printer', 250.00, 4),
(11, 'Router', 90.00, 4),
(12, 'External HDD', 130.00, 4),
(13, 'USB Flash Drive', 20.00, 5),
(14, 'Microphone', 70.00, 5),
(15, 'Webcam', 85.00, 5),
(16, 'Game Console', 500.00, 5),
(17, 'Graphics Card', 700.00, 1),
(18, 'Processor', 400.00, 1),
(19, 'RAM 16GB', 120.00, 2),
(20, 'SSD 1TB', 180.00, 2);
select *from vendors 
select *from items01
--Create a subquery to list all vendors who supply items priced above the average price of items.

select a.vendor_name ,(select avg(c.price) from items c) ,(select b.item_name, b.price,b.item_id from items01 b where a.vendor_id=b.vendor_id
and b.price> (select avg(c.price) from items c))
from vendors a 
SELECT a.vendor_name, 
       (SELECT AVG(c.price) FROM items01 c) AS avg_price,
       (SELECT TOP 1 b.item_name 
        FROM items01 b 
        WHERE a.vendor_id = b.vendor_id 
        AND b.price > (SELECT AVG(price) FROM items)
       ) AS expensive_item
FROM vendors a  
WHERE a.vendor_id IN (
    SELECT DISTINCT vendor_id 
    FROM items01 
    WHERE price > (SELECT AVG(price) FROM items)
);
