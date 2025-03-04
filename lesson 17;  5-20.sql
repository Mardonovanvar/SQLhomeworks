CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY,
    PurchaseDate DATE NOT NULL,
    CustomerName VARCHAR(100) NOT NULL
);
CREATE TABLE PurchaseDetails (
    DetailID INT PRIMARY KEY,
    PurchaseID INT,
    ProductName VARCHAR(100) NOT NULL,
    Quantity INT CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) CHECK (UnitPrice > 0),
    FOREIGN KEY (PurchaseID) REFERENCES Purchases(PurchaseID)
);
-- Purchases jadvali uchun ma'lumotlar
INSERT INTO Purchases (PurchaseID, PurchaseDate, CustomerName)
VALUES 
(1, '2025-02-01', 'Ali'),
(2, '2025-02-02', 'Bobur'),
(3, '2025-02-03', 'Zaynab'),
(4, '2025-02-04', 'Murod'),
(5, '2025-02-05', 'Oygul'),
(6, '2025-02-06', 'Javohir'),
(7, '2025-02-07', 'Nodir'),
(8, '2025-02-08', 'Sabrina'),
(9, '2025-02-09', 'Rustam'),
(10, '2025-02-10', 'Dilnoza');

-- PurchaseDetails jadvali uchun ma'lumotlar (40 ta satr)
INSERT INTO PurchaseDetails (DetailID, PurchaseID, ProductName, Quantity, UnitPrice)
VALUES
(1, 1, 'Laptop', 1, 1200.00),
(2, 1, 'Mouse', 2, 25.00),
(3, 2, 'Keyboard', 1, 45.00),
(4, 2, 'Monitor', 1, 300.00),
(5, 3, 'USB Cable', 3, 10.00),
(6, 3, 'External HDD', 1, 150.00),
(7, 4, 'Tablet', 1, 500.00),
(8, 4, 'Headphones', 2, 75.00),
(9, 5, 'Smartphone', 1, 900.00),
(10, 5, 'Charger', 1, 30.00),
(11, 6, 'Printer', 1, 200.00),
(12, 6, 'Toner', 1, 60.00),
(13, 7, 'Graphics Card', 1, 400.00),
(14, 7, 'Cooling Pad', 1, 40.00),
(15, 8, 'Router', 1, 120.00),
(16, 8, 'Ethernet Cable', 2, 15.00),
(17, 9, 'Webcam', 1, 80.00),
(18, 9, 'Microphone', 1, 50.00),
(19, 10, 'Smartwatch', 1, 250.00),
(20, 10, 'Fitness Band', 1, 90.00),
(21, 1, 'Laptop Bag', 1, 40.00),
(22, 2, 'Mouse Pad', 1, 10.00),
(23, 3, 'Portable SSD', 1, 200.00),
(24, 4, 'Smart TV', 1, 700.00),
(25, 5, 'Wireless Earbuds', 1, 130.00),
(26, 6, 'Projector', 1, 500.00),
(27, 7, 'Gaming Console', 1, 450.00),
(28, 8, 'VR Headset', 1, 350.00),
(29, 9, 'Desktop PC', 1, 1000.00),
(30, 10, 'E-Reader', 1, 120.00),
(31, 1, 'Mechanical Keyboard', 1, 80.00),
(32, 2, 'Gaming Mouse', 1, 70.00),
(33, 3, 'Wireless Speaker', 1, 100.00),
(34, 4, 'Bluetooth Adapter', 1, 20.00),
(35, 5, 'Drawing Tablet', 1, 300.00),
(36, 6, 'Soundbar', 1, 250.00),
(37, 7, 'Action Camera', 1, 200.00),
(38, 8, 'USB Hub', 1, 25.00),
(39, 9, 'Wireless Charger', 1, 45.00),
(40, 10, 'Smart Light Bulb', 1, 35.00);
select *from purchases
select *from purchasedetails
---task 5Write a query that uses the EXISTS operator to retrieve all purchases that include at least one detail in the PurchaseDetails table.
select p.purchaseid, p.customername, p.purchasedate from purchases p 
where exists (select 1 from purchasedetails p2  where p.purchaseid=p2.purchaseid)

  ----task 6 Create a subquery to list all items that have been sold more than 100 times according to the PurchaseDetails table.
  select distinct p.productname from purchasedetails p where (select sum(p2.quantity) from purchasedetails p2 where p2.productname=p.productname)>1
 ---task 7 
 CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10,2) CHECK (Salary > 0)
);
INSERT INTO Staff (StaffID, StaffName, Position, Salary)
VALUES
(1, 'Ali Hasanov', 'Manager', 4500.00),
(2, 'Laylo Karimova', 'Engineer', 3800.00),
(3, 'Azizbek Hamidov', 'Technician', 3200.00),
(4, 'Olimbek Sodiqov', 'Engineer', 4000.00),
(5, 'Madina Usmonova', 'HR', 3500.00),
(6, 'Shahboz Murodov', 'Accountant', 3700.00),
(7, 'Ziyoda Yuldasheva', 'Manager', 4700.00),
(8, 'Doston Yusupov', 'Sales', 3400.00),
(9, 'Umid Rajabov', 'IT Support', 3600.00),
(10, 'Sarvar Jalilov', 'Developer', 5000.00),
(11, 'Nodira Qosimova', 'Technician', 3100.00),
(12, 'Anvarbek Oripov', 'Designer', 3300.00),
(13, 'Dilshod Yoqubov', 'Developer', 4900.00),
(14, 'Gulnora Raximova', 'HR', 3550.00),
(15, 'Shoxrux Toirov', 'Manager', 4600.00),
(16, 'Shahzoda Ermatova', 'Engineer', 4200.00),
(17, 'Komilbek Shomurodov', 'Sales', 3450.00),
(18, 'Xurshid Nazarov', 'Technician', 3150.00),
(19, 'Aziza Soliyeva', 'IT Support', 3650.00),
(20, 'Otabek Musayev', 'Accountant', 3750.00),
(21, 'Munisa Abdullayeva', 'Developer', 5100.00),
(22, 'Rustambek Yigitaliyev', 'Engineer', 4050.00),
(23, 'Dilnoza Jo‘raboyeva', 'Technician', 3250.00),
(24, 'Abdulaziz Qudratov', 'Designer', 3350.00),
(25, 'Lazizbek Fayziyev', 'Developer', 4800.00),
(26, 'Oydinbek Abdullaev', 'HR', 3600.00),
(27, 'Saida Nishanova', 'Sales', 3550.00),
(28, 'Ravshanbek Bo‘ronov', 'Manager', 4550.00),
(29, 'Zafarbek Shokirov', 'IT Support', 3750.00),
(30, 'Muhammadamin Qodirov', 'Technician', 3300.00),
(31, 'Dilfuza Turg‘unova', 'Accountant', 3800.00),
(32, 'Rustambek Xudoyqulov', 'Developer', 4700.00),
(33, 'Akrombek Mamatqulov', 'Engineer', 3900.00),
(34, 'Shohista Xudoyberdiyeva', 'Sales', 3650.00),
(35, 'Javlonbek Rahmonov', 'Technician', 3450.00),
(36, 'Shohruxbek Sodiqov', 'IT Support', 3850.00),
(37, 'Sarvinoz To‘xtayeva', 'HR', 3700.00),
(38, 'Sherzodbek Turg‘unov', 'Manager', 4400.00),
(39, 'Abdulaziz Musayev', 'Designer', 3400.00),
(40, 'Zubayda O‘rozaliyeva', 'Technician', 3500.00);
 select *from Staff
 ---task 7 Use a subquery to list all staff members who earn more than the overall company’s average salary
 select s.staffname, s.salary, (select avg(s3.salary) from staff s3) as avg_salary from staff s where s.salary> (select avg(s2.salary)  from staff s2) 
 select s.staffname, s.salary, avg_salary from staff s , (select avg( salary) as avg_salary from staff) as sub 
 where s.salary>sub.avg_salary
  --task 8  
  CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100) NOT NULL
);

CREATE TABLE Items (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    VendorID INT,
    Price DECIMAL(10,2) CHECK (Price > 0),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);
INSERT INTO Vendors (VendorID, VendorName)
VALUES
(1, 'ABC Supplies'),
(2, 'Best Tech'),
(3, 'Quick Mart'),
(4, 'Elite Distributors'),
(5, 'Smart Traders');

INSERT INTO Items (ItemID, ItemName, VendorID, Price)
VALUES
(1, 'Wireless Mouse', 1, 45.00),
(2, 'Laptop Stand', 1, 55.00),
(3, 'USB-C Cable', 2, 20.00),
(4, 'Mechanical Keyboard', 2, 70.00),
(5, 'Bluetooth Speaker', 3, 49.99),
(6, 'Phone Holder', 3, 15.00),
(7, 'Gaming Headset', 4, 85.00),
(8, 'Power Bank', 4, 40.00),
(9, 'Monitor Stand', 5, 60.00),
(10, 'LED Desk Lamp', 5, 35.00),
(11, 'Mouse Pad', 1, 12.00),
(12, 'External SSD', 2, 110.00),
(13, 'Smartwatch Strap', 3, 18.00),
(14, 'Wireless Earbuds', 4, 99.00),
(15, 'USB Hub', 5, 25.00),
(16, 'Gaming Chair', 1, 250.00),
(17, 'Keyboard Cover', 2, 10.00),
(18, 'Portable SSD', 3, 120.00),
(19, 'Laptop Cooling Pad', 4, 48.00),
(20, 'Ergonomic Chair', 5, 299.00),
(21, 'Stylus Pen', 1, 30.00),
(22, 'VR Headset', 2, 199.00),
(23, 'Wireless Charger', 3, 28.00),
(24, 'Desk Organizer', 4, 42.00),
(25, 'Noise Cancelling Headphones', 5, 150.00),
(26, 'Portable Projector', 1, 180.00),
(27, 'Fitness Tracker', 2, 89.00),
(28, 'Tablet Stand', 3, 40.00),
(29, 'Laptop Bag', 4, 45.00),
(30, 'USB Flash Drive', 5, 15.00),
(31, 'Cooling Fan', 1, 38.00),
(32, 'Graphic Tablet', 2, 140.00),
(33, 'Monitor Riser', 3, 50.00),
(34, 'Desk Mat', 4, 22.00),
(35, 'Laptop Sleeve', 5, 30.00),
(36, 'Mechanical Pencil', 1, 8.00),
(37, 'Ergonomic Mouse', 2, 65.00),
(38, 'Portable Bluetooth Keyboard', 3, 78.00),
(39, 'Smartphone Tripod', 4, 47.00),
(40, 'Adjustable Laptop Stand', 5, 33.00);
--  task 8 , Write a subquery to find all vendors that supply items with a price below $50.
select *from vendors
select *from items
select distinct v.vendorname ,max( i.price) as max_price from vendors v
join items i on i.vendorid=v.vendorid and i.price<50
group by v.vendorname 
 select distinct v.vendorname  from vendors v where v.vendorid in (select distinct i.vendorid from items i where i.price>50)

 --task 9 Use a subquery to determine the maximum item price in the Items table.
 select * from items 
select p.price  from items p where p.price in( select max(p2.price) from items p2)
select distinct i.itemname, (select distinct max(i.price) from items i) as max_price from items i  where i.price=(select max(i.price) from items i)
--task 10
  --Write a query using an independent subquery to find the highest total purchase value in the Purchases table.
  CREATE TABLE Purchases1 (
    PurchaseID INT PRIMARY KEY,
    CustomerID INT,
    PurchaseDate DATE,
    TotalAmount DECIMAL(10,2)
);
INSERT INTO Purchases1 (PurchaseID, CustomerID, PurchaseDate, TotalAmount) VALUES
(1, 101, '2024-01-01', 150.00),
(2, 102, '2024-01-02', 200.50),
(3, 103, '2024-01-03', 99.99),
(4, 104, '2024-01-04', 300.00),
(5, 105, '2024-01-05', 450.75),
(6, 106, '2024-01-06', 500.00),
(7, 107, '2024-01-07', 250.60),
(8, 108, '2024-01-08', 100.10),
(9, 109, '2024-01-09', 600.00),
(10, 110, '2024-01-10', 700.30),
(11, 111, '2024-01-11', 120.25),
(12, 112, '2024-01-12', 320.40),
(13, 113, '2024-01-13', 400.50),
(14, 114, '2024-01-14', 250.00),
(15, 115, '2024-01-15', 800.00),
(16, 116, '2024-01-16', 99.50),
(17, 117, '2024-01-17', 750.75),
(18, 118, '2024-01-18', 85.00),
(19, 119, '2024-01-19', 920.90),
(20, 120, '2024-01-20', 1020.00),
(21, 121, '2024-01-21', 500.20),
(22, 122, '2024-01-22', 350.30),
(23, 123, '2024-01-23', 630.40),
(24, 124, '2024-01-24', 100.00),
(25, 125, '2024-01-25', 450.25),
(26, 126, '2024-01-26', 720.10),
(27, 127, '2024-01-27', 310.50),
(28, 128, '2024-01-28', 825.60),
(29, 129, '2024-01-29', 99.90),
(30, 130, '2024-01-30', 400.00),
(31, 131, '2024-01-31', 250.75),
(32, 132, '2024-02-01', 650.90),
(33, 133, '2024-02-02', 480.00),
(34, 134, '2024-02-03', 520.50),
(35, 135, '2024-02-04', 290.20),
(36, 136, '2024-02-05', 810.30),
(37, 137, '2024-02-06', 730.40),
(38, 138, '2024-02-07', 999.99),
(39, 139, '2024-02-08', 860.80),
(40, 140, '2024-02-09', 1100.00);
select *from purchases1
--Write a query using an independent subquery to find the highest total purchase value in the Purchases table.
select p.totalamount as max_total from purchases1 p where  p.totalamount in ( select max(p2.totalamount) as max_total from purchases1 p2) 
--task 11
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100)
);

CREATE TABLE Purchases2 (
    PurchaseID INT PRIMARY KEY,
    ClientID INT,
    PurchaseDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);
INSERT INTO Clients (ClientID, ClientName) VALUES
(1, 'Ali'), (2, 'Bobur'), (3, 'Chingiz'), (4, 'Dilnoza'), (5, 'Elbek'),
(6, 'Farhod'), (7, 'Gulnoza'), (8, 'Hasan'), (9, 'Ibrohim'), (10, 'Jamshid'),
(11, 'Kamila'), (12, 'Laziz'), (13, 'Malika'), (14, 'Nodir'), (15, 'Olim'),
(16, 'Parvina'), (17, 'Qo‘chqor'), (18, 'Ravshan'), (19, 'Sardor'), (20, 'Tursun'),
(21, 'Umar'), (22, 'Vohid'), (23, 'Xurshid'), (24, 'Yoqub'), (25, 'Zaynab'),
(26, 'Akmal'), (27, 'Bahodir'), (28, 'Doston'), (29, 'Elmira'), (30, 'Fayzullo'),
(31, 'G‘ayrat'), (32, 'Hilola'), (33, 'Islom'), (34, 'Jasur'), (35, 'Karima'),
(36, 'Lola'), (37, 'Murod'), (38, 'Nozima'), (39, 'O‘ktam'), (40, 'Pahlavon');

INSERT INTO Purchases2 (PurchaseID, ClientID, PurchaseDate, TotalAmount) VALUES
(1, 2, '2024-01-01', 150.00), (2, 3, '2024-01-02', 200.50), (3, 5, '2024-01-03', 99.99),
(4, 8, '2024-01-04', 300.00), (5, 10, '2024-01-05', 450.75), (6, 12, '2024-01-06', 500.00),
(7, 15, '2024-01-07', 250.60), (8, 18, '2024-01-08', 100.10), (9, 21, '2024-01-09', 600.00),
(10, 24, '2024-01-10', 700.30), (11, 27, '2024-01-11', 120.25), (12, 30, '2024-01-12', 320.40),
(13, 32, '2024-01-13', 400.50), (14, 35, '2024-01-14', 250.00), (15, 38, '2024-01-15', 800.00);
select *from Clients
select *from  Purchases2

--task 11 Write a subquery to list clients who have never made a purchase.
select c.clientname, p.purchasedate from clients c 
left join purchases2 p on c.clientid=p.clientid 
where p.clientid is null 
select c.clientname from clients c where c.clientid not in (select p.clientid from purchases2 p )
--task 12 Use a subquery to list all items that belong to the category "Electronics."


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Items1 (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Electronics'), (2, 'Clothing'), (3, 'Furniture'), (4, 'Toys'), (5, 'Books');

INSERT INTO Items1 (ItemID, ItemName, CategoryID, Price) VALUES
(1, 'Laptop', 1, 1000.00), (2, 'Smartphone', 1, 800.00), (3, 'Tablet', 1, 500.00),
(4, 'TV', 1, 1200.00), (5, 'Headphones', 1, 150.00), (6, 'Refrigerator', 1, 1300.00),
(7, 'Microwave', 1, 400.00), (8, 'Smartwatch', 1, 250.00), (9, 'Camera', 1, 900.00),
(10, 'Keyboard', 1, 100.00), (11, 'Jeans', 2, 50.00), (12, 'T-shirt', 2, 20.00),
(13, 'Sofa', 3, 500.00), (14, 'Chair', 3, 200.00), (15, 'Doll', 4, 30.00),
(16, 'Puzzle', 4, 25.00), (17, 'Novel', 5, 15.00), (18, 'Biography', 5, 18.00),
(19, 'Monitor', 1, 600.00), (20, 'Speaker', 1, 300.00);
select *from categories
select *from items1
--task 12 Use a subquery to list all items that belong to the category "Electronics."
select c.categoryname, i.itemname from categories c
join items1 i on c.categoryid=i.categoryid
where c.categoryid=1
select i.itemname from items1 i  where i.categoryid in ( select c.categoryid from categories c  where c.categoryname='electronics')
---task 13 

CREATE TABLE Purchases3 (
    PurchaseID INT PRIMARY KEY,
    ClientID INT,
    PurchaseDate DATE,
    TotalAmount DECIMAL(10,2)

);
INSERT INTO Purchases3 (PurchaseID, ClientID, PurchaseDate, TotalAmount) VALUES
(1, 2, '2024-01-01', 150.00), (2, 3, '2024-01-05', 200.50), (3, 5, '2024-01-10', 99.99),
(4, 8, '2024-01-12', 300.00), (5, 10, '2024-01-15', 450.75), (6, 12, '2024-01-18', 500.00),
(7, 15, '2024-01-20', 250.60), (8, 18, '2024-01-22', 100.10), (9, 21, '2024-01-25', 600.00),
(10, 24, '2024-01-28', 700.30), (11, 27, '2024-02-01', 120.25), (12, 30, '2024-02-05', 320.40),
(13, 32, '2024-02-10', 400.50), (14, 35, '2024-02-15', 250.00), (15, 38, '2024-02-20', 800.00),
(16, 3, '2024-02-25', 150.00), (17, 5, '2024-03-01', 200.50), (18, 8, '2024-03-05', 99.99),
(19, 10, '2024-03-10', 300.00), (20, 12, '2024-03-12', 450.75), (21, 15, '2024-03-15', 500.00),
(22, 18, '2024-03-18', 250.60), (23, 21, '2024-03-20', 100.10), (24, 24, '2024-03-22', 600.00),
(25, 27, '2024-03-25', 700.30), (26, 30, '2024-03-28', 120.25), (27, 32, '2024-04-01', 320.40),
(28, 35, '2024-04-05', 400.50), (29, 38, '2024-04-10', 250.00), (30, 2, '2024-04-15', 800.00),
(31, 3, '2024-04-20', 150.00), (32, 5, '2024-04-25', 200.50), (33, 8, '2024-05-01', 99.99),
(34, 10, '2024-05-05', 300.00), (35, 12, '2024-05-10', 450.75), (36, 15, '2024-05-15', 500.00),
(37, 18, '2024-05-20', 250.60), (38, 21, '2024-05-25', 100.10), (39, 24, '2024-05-28', 600.00),
(40, 27, '2024-06-01', 700.30);
select *from purchases3
--Write a subquery to list all purchases that were made after a specified date.
select p.* from purchases3 p where p.purchasedate >( select min(p2.purchasedate) from purchases3 p2 )

 --task 14
 --Create a subquery to calculate the total number of items sold in a particular purchase.
 CREATE TABLE Purchases4 (
    PurchaseID INT PRIMARY KEY,
    ClientID INT,
    PurchaseDate DATE,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE PurchaseDetails4 (
    DetailID INT PRIMARY KEY,
    PurchaseID INT,
    ItemID INT,
    Quantity INT,
    FOREIGN KEY (PurchaseID) REFERENCES Purchases(PurchaseID)
);
INSERT INTO Purchases4 (PurchaseID, ClientID, PurchaseDate, TotalAmount) VALUES
(1, 2, '2024-01-01', 150.00), (2, 3, '2024-01-05', 200.50), (3, 5, '2024-01-10', 99.99),
(4, 8, '2024-01-12', 300.00), (5, 10, '2024-01-15', 450.75), (6, 12, '2024-01-18', 500.00),
(7, 15, '2024-01-20', 250.60), (8, 18, '2024-01-22', 100.10), (9, 21, '2024-01-25', 600.00),
(10, 24, '2024-01-28', 700.30);

INSERT INTO PurchaseDetails4 (DetailID, PurchaseID, ItemID, Quantity) VALUES
(1, 1, 101, 2), (2, 1, 102, 1), (3, 2, 103, 5), (4, 2, 104, 2), (5, 3, 105, 3),
(6, 3, 106, 1), (7, 4, 107, 4), (8, 4, 108, 2), (9, 5, 109, 1), (10, 5, 110, 3),
(11, 6, 111, 2), (12, 6, 112, 5), (13, 7, 113, 1), (14, 7, 114, 2), (15, 8, 115, 4),
(16, 8, 116, 3), (17, 9, 117, 2), (18, 9, 118, 1), (19, 10, 119, 5), (20, 10, 120, 2);
select *from purchases4
select *from PurchaseDetails4
--Create a subquery to calculate the total number of items sold in a particular purchase.
select p.purchaseid, sum(d.quantity)as total_quantity from purchases4 p
join purchasedetails4 d on d.purchaseid=p.purchaseid 
group by p.purchaseid

select sum(p.quantity) as total from purchasedetails4 p where exists (select 1  from purchases4 d where d.purchaseid=p.purchaseid)
select p.purchaseid, (select sum(d.quantity) from purchasedetails4 d where d.purchaseid=p.purchaseid ) as total_sold  from purchases p
 --task 15   Write a query to list staff members who have been employed for more than 5 years.
 CREATE TABLE Staff1 (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(100),
    EmploymentDate DATE,
    Salary DECIMAL(10,2)
);
INSERT INTO Staff1 (StaffID, StaffName, EmploymentDate, Salary) VALUES
(1, 'Ali Hasanov', '2015-06-10', 5000.00),
(2, 'Dilnoza Karimova', '2017-09-20', 4500.00),
(3, 'Jasur Bekmurodov', '2018-03-15', 4800.00),
(4, 'Shahnoza Salimova', '2016-07-01', 5200.00),
(5, 'Otabek Oripov', '2019-11-30', 4300.00),
(6, 'Gulnora Sodiqova', '2020-05-12', 3900.00),
(7, 'Kamol G‘ulomov', '2014-01-25', 5500.00),
(8, 'Madina Hamidova', '2013-08-17', 6000.00),
(9, 'Sarvar Akramov', '2022-10-05', 4100.00),
(10, 'Laziz Rustamov', '2012-12-01', 6500.00);

select *from staff1
 --Write a query to list staff members who have been employed for more than 5 years.

 select a.staffname, a.employmentdate  from staff1 a where a.employmentdate<dateadd(year, -5 , (select max(b.employmentdate) from staff1 b)) 
 --task 16--Use a correlated subquery to list staff members who earn more than the average salary in their division.
 CREATE TABLE staff2 (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    division VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO staff2 (staff_id, full_name, division, salary) VALUES 
(1, 'Ali Valiyev', 'IT', 5000),
(2, 'Hasan Karimov', 'IT', 6000),
(3, 'Olim Xolmatov', 'IT', 4500),
(4, 'Dilshod Rustamov', 'IT', 7000),
(5, 'Rustam Zokirov', 'IT', 5500),
(6, 'Nodir Ergashev', 'Marketing', 4000),
(7, 'Gulnoza Yuldasheva', 'Marketing', 4200),
(8, 'Sherzod Xudoyberdiyev', 'Marketing', 4300),
(9, 'Kamola Ermatova', 'Marketing', 3800),
(10, 'Zarina Sobirova', 'Marketing', 4500),
(11, 'Javlon Yusupov', 'Finance', 5500),
(12, 'Murod G‘aniyev', 'Finance', 6000),
(13, 'Diyor Abdullayev', 'Finance', 5200),
(14, 'Shahzod Ismoilov', 'Finance', 5700),
(15, 'Malika Qodirova', 'Finance', 5900),
(16, 'Aziz Mamatov', 'HR', 4600),
(17, 'Saida Normurodova', 'HR', 4800),
(18, 'Shoxrux Akbarov', 'HR', 5000),
(19, 'Nilufar O‘razboeva', 'HR', 4700),
(20, 'Bobur Xamdamov', 'HR', 4900),
(21, 'Toxir Abdurahmonov', 'Sales', 7000),
(22, 'Madina Jalilova', 'Sales', 7500),
(23, 'Doniyor Bekmurodov', 'Sales', 6800),
(24, 'Ravshan Maxmudov', 'Sales', 7200),
(25, 'Oydin Norqulova', 'Sales', 7100),
(26, 'Jasur Rajabov', 'Engineering', 8000),
(27, 'Mansur Rahmonov', 'Engineering', 8500),
(28, 'Dilnoza Saidova', 'Engineering', 8200),
(29, 'Karim Norxo‘jayev', 'Engineering', 7800),
(30, 'Olim Yusupov', 'Engineering', 8100),
(31, 'Shahnoza Bo‘riyeva', 'Logistics', 5300),
(32, 'Eldor Komilov', 'Logistics', 5500),
(33, 'Muslima Mavlonova', 'Logistics', 5100),
(34, 'Mirzohid Fayzullayev', 'Logistics', 5600),
(35, 'Nasiba Toshpo‘latova', 'Logistics', 5400),
(36, 'Sardor Bo‘tayev', 'Support', 4800),
(37, 'Muhammad Aliyev', 'Support', 5000),
(38, 'Ziyoda Xidirova', 'Support', 4700),
(39, 'Lazizbek Yuldashev', 'Support', 4900),
(40, 'Xurshida Saidova', 'Support', 5100);
 select *from staff2
  ----Use a correlated subquery to list staff members who earn more than the average salary in their division.
  select a.full_name, a.division, a.salary,(select avg(d.salary) as avg_salary from staff2 d where division in( 'it' ,'Engineering','hr','finance','marketing','sales', 'support', 'logistics'))
 as avg_salary from staff2 a where a.salary>(select avg(b.salary) from staff2 b where a.division=b.division)
 SELECT 
    s.full_name, 
    s.division, 
    s.salary,
    (SELECT AVG(s2.salary) 
     FROM staff2 s2 
     WHERE s2.division = s.division) AS avg_salary
FROM staff2 s
WHERE s.salary = (
    SELECT MAX(s3.salary) 
    FROM staff2 s3 
    WHERE s3.division = s.division
);

--task 17 Write a query using the EXISTS operator to list purchases that include an item from the Items table.
CREATE TABLE Items01 (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE Purchases01 (
    purchase_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    item_id INT,
    purchase_date DATE,
    FOREIGN KEY (item_id) REFERENCES Items01(item_id)
);

-- Items jadvaliga ma’lumot kiritish
INSERT INTO Items01 (item_id, item_name, price) VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 500.00),
(4, 'Headphones', 150.00),
(5, 'Smartwatch', 250.00),
(6, 'Keyboard', 75.00),
(7, 'Mouse', 50.00),
(8, 'Monitor', 300.00),
(9, 'Printer', 200.00),
(10, 'USB Drive', 20.00);

-- Purchases jadvaliga 40 ta ma’lumot kiritish
INSERT INTO Purchases01 (purchase_id, customer_name, item_id, purchase_date) VALUES
(1, 'Alice', 1, '2024-02-15'),
(2, 'Bob', 2, '2024-02-16'),
(3, 'Charlie', 3, '2024-02-17'),
(4, 'David', 4, '2024-02-18'),
(5, 'Eve', 5, '2024-02-19'),
(6, 'Frank', 6, '2024-02-20'),
(7, 'Grace', 7, '2024-02-21'),
(8, 'Hank', 8, '2024-02-22'),
(9, 'Ivy', 9, '2024-02-23'),
(10, 'Jack', 10, '2024-02-24'),
(11, 'Kevin', 1, '2024-02-25'),
(12, 'Laura', 2, '2024-02-26'),
(13, 'Mike', 3, '2024-02-27'),
(14, 'Nina', 4, '2024-02-28'),
(15, 'Oscar', 5, '2024-02-29'),
(16, 'Paul', 6, '2024-03-01'),
(17, 'Quinn', 7, '2024-03-02'),
(18, 'Rachel', 8, '2024-03-03'),
(19, 'Steve', 9, '2024-03-04'),
(20, 'Tina', 10, '2024-03-05'),
(21, 'Umar', 1, '2024-03-06'),
(22, 'Vera', 2, '2024-03-07'),
(23, 'Will', 3, '2024-03-08'),
(24, 'Xander', 4, '2024-03-09'),
(25, 'Yara', 5, '2024-03-10'),
(26, 'Zane', 6, '2024-03-11'),
(27, 'Amy', 7, '2024-03-12'),
(28, 'Brian', 8, '2024-03-13'),
(29, 'Clara', 9, '2024-03-14'),
(30, 'Daniel', 10, '2024-03-15'),
(31, 'Elena', 1, '2024-03-16'),
(32, 'Felix', 2, '2024-03-17'),
(33, 'George', 3, '2024-03-18'),
(34, 'Holly', 4, '2024-03-19'),
(35, 'Ian', 5, '2024-03-20'),
(36, 'Jenna', 6, '2024-03-21'),
(37, 'Kyle', 7, '2024-03-22'),
(38, 'Liam', 8, '2024-03-23'),
(39, 'Mona', 9, '2024-03-24'),
(40, 'Noah', 10, '2024-03-25');
select *from items01
select *from Purchases01 
 --Write a query using the EXISTS operator to list purchases that include an item from the Items table.
 select *from items01 where exists (select 1 from purchases01 where items01.item_id=purchases01.item_id)

 --task 18 Create a subquery to find clients who have made a purchase within the last 30 days.
 CREATE TABLE Clients05 (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100)
);

CREATE TABLE Purchases05 (
    purchase_id INT PRIMARY KEY,
    client_id INT,
    purchase_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (client_id) REFERENCES Clients05(client_id)
);
-- Clients jadvaliga ma’lumot kiritish
INSERT INTO Clients05 (client_id, client_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve'),
(6, 'Frank'),
(7, 'Grace'),
(8, 'Hank'),
(9, 'Ivy'),
(10, 'Jack'),
(11, 'Kevin'),
(12, 'Laura'),
(13, 'Mike'),
(14, 'Nina'),
(15, 'Oscar'),
(16, 'Paul'),
(17, 'Quinn'),
(18, 'Rachel'),
(19, 'Steve'),
(20, 'Tina');

-- Purchases jadvaliga 40 ta ma’lumot kiritish
INSERT INTO Purchases05 (purchase_id, client_id, purchase_date, amount) VALUES
(1, 1, '2025-02-10', 150.00),
(2, 2, '2025-02-15', 200.00),
(3, 3, '2025-02-20', 300.00),
(4, 4, '2025-02-25', 120.00),
(5, 5, '2025-03-01', 450.00),
(6, 6, '2025-03-02', 500.00),
(7, 7, '2025-03-03', 80.00),
(8, 8, '2025-03-04', 600.00),
(9, 9, '2025-03-05', 250.00),
(10, 10, '2025-03-06', 700.00),
(11, 11, '2025-03-07', 180.00),
(12, 12, '2025-03-08', 220.00),
(13, 13, '2025-03-09', 310.00),
(14, 14, '2025-03-10', 150.00),
(15, 15, '2025-03-11', 410.00),
(16, 16, '2025-03-12', 370.00),
(17, 17, '2025-03-13', 620.00),
(18, 18, '2025-03-14', 290.00),
(19, 19, '2025-03-15', 530.00),
(20, 20, '2025-03-16', 440.00),
(21, 1, '2025-02-12', 120.00),
(22, 2, '2025-02-17', 310.00),
(23, 3, '2025-02-22', 90.00),
(24, 4, '2025-02-27', 650.00),
(25, 5, '2025-03-02', 720.00),
(26, 6, '2025-03-03', 380.00),
(27, 7, '2025-03-04', 200.00),
(28, 8, '2025-03-05', 540.00),
(29, 9, '2025-03-06', 610.00),
(30, 10, '2025-03-07', 190.00),
(31, 11, '2025-03-08', 300.00),
(32, 12, '2025-03-09', 260.00),
(33, 13, '2025-03-10', 470.00),
(34, 14, '2025-03-11', 520.00),
(35, 15, '2025-03-12', 480.00),
(36, 16, '2025-03-13', 390.00),
(37, 17, '2025-03-14', 430.00),
(38, 18, '2025-03-15', 560.00),
(39, 19, '2025-03-16', 610.00),
(40, 20, '2025-03-17', 150.00);
select *from clients05
select*from Purchases05
--Create a subquery to find clients who have made a purchase within the last 30 days.


select a.client_name, (select top 1 b.purchase_date FROM Purchases05 b  where  b.client_id = a.client_id
and b.purchase_date > DATEADD(day, -30, (SELECT MAX(purchase_date) FROM Purchases05))
 order by  b.purchase_date desc) as  purchase_date 
FROM clients05 a 
 --task 19 Write a query using a subquery to identify the oldest item in the Items table.

 CREATE TABLE Items06 (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    CreatedDate DATE
);
INSERT INTO Items06 (ItemID, ItemName, Category, Price, CreatedDate) VALUES
(1, 'Laptop', 'Electronics', 1200.99, '2020-01-15'),
(2, 'Phone', 'Electronics', 799.49, '2019-06-10'),
(3, 'Tablet', 'Electronics', 399.99, '2021-08-22'),
(4, 'Smartwatch', 'Electronics', 199.99, '2022-03-05'),
(5, 'Headphones', 'Electronics', 89.99, '2020-11-30'),
(6, 'Monitor', 'Electronics', 249.99, '2018-07-14'),
(7, 'Keyboard', 'Electronics', 49.99, '2021-09-18'),
(8, 'Mouse', 'Electronics', 29.99, '2017-05-12'),
(9, 'Printer', 'Electronics', 159.99, '2016-12-01'),
(10, 'Camera', 'Electronics', 549.99, '2015-06-25'),
(11, 'TV', 'Appliances', 899.99, '2019-04-20'),
(12, 'Refrigerator', 'Appliances', 1200.00, '2018-02-10'),
(13, 'Microwave', 'Appliances', 199.99, '2020-09-30'),
(14, 'Blender', 'Appliances', 79.99, '2017-06-22'),
(15, 'Oven', 'Appliances', 649.99, '2016-03-15'),
(16, 'Dishwasher', 'Appliances', 850.00, '2015-09-05'),
(17, 'Washing Machine', 'Appliances', 1100.00, '2014-08-18'),
(18, 'Dryer', 'Appliances', 999.99, '2013-11-07'),
(19, 'Fan', 'Appliances', 49.99, '2012-05-25'),
(20, 'Heater', 'Appliances', 129.99, '2011-12-12'),
(21, 'Sofa', 'Furniture', 750.00, '2020-10-05'),
(22, 'Bed', 'Furniture', 999.99, '2019-01-20'),
(23, 'Chair', 'Furniture', 199.99, '2021-12-15'),
(24, 'Table', 'Furniture', 499.99, '2018-11-28'),
(25, 'Wardrobe', 'Furniture', 849.99, '2017-07-19'),
(26, 'Bookshelf', 'Furniture', 299.99, '2016-05-10'),
(27, 'Dresser', 'Furniture', 450.00, '2015-09-23'),
(28, 'Nightstand', 'Furniture', 149.99, '2014-02-14'),
(29, 'Desk', 'Furniture', 349.99, '2013-06-08'),
(30, 'Couch', 'Furniture', 799.99, '2012-09-30'),
(31, 'Running Shoes', 'Clothing', 120.00, '2022-06-01'),
(32, 'Jeans', 'Clothing', 79.99, '2021-05-12'),
(33, 'T-Shirt', 'Clothing', 29.99, '2020-04-03'),
(34, 'Jacket', 'Clothing', 199.99, '2019-03-10'),
(35, 'Sweater', 'Clothing', 89.99, '2018-01-15'),
(36, 'Hat', 'Clothing', 39.99, '2017-08-20'),
(37, 'Scarf', 'Clothing', 19.99, '2016-12-05'),
(38, 'Gloves', 'Clothing', 24.99, '2015-07-25'),
(39, 'Socks', 'Clothing', 9.99, '2014-11-11'),
(40, 'Boots', 'Clothing', 149.99, '2013-02-28');

select *from items06

--Write a query using a subquery to identify the oldest item in the Items table.
select a.itemid , a.itemname, (select min(b.createddate) as min_createddate from items06 b) from items06 a

--task 20 Write a query to list staff members who are not assigned to any division.
-- Staff jadvali
CREATE TABLE staff09 (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    division_id INT NULL  -- NULL bo'lsa, xodim hech qaysi bo‘limga tayinlanmagan
);

-- Division jadvali
CREATE TABLE division09 (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(100) NOT NULL
);
INSERT INTO division09 (division_id, division_name) VALUES
(1, 'IT Department'),
(2, 'HR Department'),
(3, 'Finance Department'),
(4, 'Marketing Department'),
(5, 'Sales Department');
 INSERT INTO staff09 (staff_id, full_name, position, division_id) VALUES
(1, 'John Doe', 'Software Engineer', 1),
(2, 'Jane Smith', 'HR Manager', 2),
(3, 'Alice Johnson', 'Accountant', 3),
(4, 'Michael Brown', 'Marketing Specialist', 4),
(5, 'Robert Wilson', 'Sales Executive', 5),
(6, 'Emily Davis', 'HR Assistant', 2),
(7, 'William Moore', 'Data Analyst', 1),
(8, 'Jessica Taylor', 'Recruiter', 2),
(9, 'David Anderson', 'Software Developer', 1),
(10, 'Sarah Thomas', 'Financial Analyst', 3),
(11, 'Daniel Martinez', 'Marketing Manager', 4),
(12, 'Sophia White', 'Sales Representative', 5),
(13, 'James Harris', 'HR Consultant', 2),
(14, 'Benjamin Lewis', 'Business Analyst', 3),
(15, 'Emma Walker', 'Social Media Manager', 4),
(16, 'Alexander Hall', 'IT Support', 1),
(17, 'Olivia Young', 'Marketing Assistant', 4),
(18, 'Henry Scott', 'Software Tester', 1),
(19, 'Lucas Green', 'Sales Consultant', 5),
(20, 'Mia King', 'Financial Controller', 3),
(21, 'Ethan Wright', 'Project Manager', NULL),
(22, 'Charlotte Adams', 'Content Writer', NULL),
(23, 'Aiden Baker', 'Graphic Designer', NULL),
(24, 'Amelia Nelson', 'Intern', NULL),
(25, 'Logan Carter', 'Customer Support', NULL),
(26, 'Harper Mitchell', 'Research Assistant', NULL),
(27, 'Elijah Perez', 'Consultant', NULL),
(28, 'Evelyn Roberts', 'Freelancer', NULL),
(29, 'Mason Turner', 'UX Designer', NULL),
(30, 'Abigail Phillips', 'HR Intern', NULL),
(31, 'Michael Hill', 'Network Engineer', 1),
(32, 'Ella Campbell', 'Payroll Specialist', 3),
(33, 'Noah Parker', 'Recruitment Manager', 2),
(34, 'Liam Evans', 'Marketing Coordinator', 4),
(35, 'Grace Edwards', 'Product Manager', 5),
(36, 'Chloe Collins', 'Software Engineer', 1),
(37, 'Jack Stewart', 'Legal Advisor', NULL),
(38, 'Lily Morris', 'Data Scientist', 1),
(39, 'Samuel Rogers', 'Senior Accountant', 3),
(40, 'Isabella Sanchez', 'Copywriter', NULL);

select *from staff09
select *from division09
--task 20 Write a query to list staff members who are not assigned to any division.
select  a.full_name, a.position
from staff09 a
where  not exists (select 1 from division09 b where a.division_id=b.division_id)

