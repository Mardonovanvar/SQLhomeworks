create database homework_13
use homework_13
--task 1 
--Explain the differences between LEN and DATALENGTH functions in SQL Server for string data.
--LEN() Function
--Returns the number of characters in a string, excluding trailing spaces.
--Works with VARCHAR, NVARCHAR, CHAR, NCHAR, TEXT, and NTEXT data types.
--Ignores trailing spaces in VARCHAR or NVARCHAR values.
select len( 'Anvar  ') as a
select len( 'diyor') as d
--DATALENGTH() Function
--Returns the storage size of a value in bytes, including trailing spaces.
--Works with both character and binary data types.
--For VARCHAR and CHAR, the result is the number of bytes (1 byte per character).
--For NVARCHAR and NCHAR, since they use Unicode (UTF-16), each character takes 2 bytes.
select datalength('   anvar   ') as d 
--task 2 Discuss the usage and importance of CHARINDEX function in SQL Server for string searching.
--CHARINDEX ( substring, string, [start_location] )
--substring – The text to search for.
--string – The main text in which the search is performed.
--start_location (optional) – The position where the search should begin (default is 1).
 --we can use this function in order to select the part of string or word that we want  . if i give some example by using this function ,
 --it will be readable
  select charindex( 'd','   davron turdibek' )as f

 --Explain the purpose of the CONCAT function in SQL Server. How does it differ from using the + operator for string concatenation?
 
 --we can use both of them to do the same thing, but concat is reliable rather than '+'
 create table students101 (last_name varchar(30), first_name varchar(25) , age int) 
 insert into students101 values( 'anvar', 'Mardonov',  25),('diyor', 'sardor', 50) 
 select *from students101
 select concat( last_name, ' ', first_name) as full_name, age from students101
--task 4  , Discuss scenarios where you might use the REPLACE function in SQL Server for string manipulation.
--if the column contains unwanted characters , it will be useful to remove them from the column , if i give some 
--example you can see it 
select concat(last_name, ' ', first_name) as full_name from students101
 select replace(' anvarmardonov', '     ', '_') as name from students101
SELECT REPLACE('AnvarMardonov', 'M', '_M') AS name  
FROM students101;
--task 5 Explain the usage of the SUBSTRING function in SQL Server for extracting parts of a string.
--we are able to use this function in order to extract the portion of column or any values 
--for example  
select *from students101
select substring('mardonov', 1, 4)  AS PART
--TASK 6 ROUND FUNCTION 
SELECT  ROUND ( 1258.1255, 0)
select cast(round(1258.1255,0) as int) as number
 --task 7 The ABS function in SQL Server is used to return the absolute (positive) value of a given number. It removes the negative sign from any numeric value.
 select abs(-125) as number
 --task 8 Discuss the differences between POWER and EXP functions in SQL Server for exponentiation.

 select power (2,5)as result_number
 select exp(5) as number 
 select ROUND(148.413159,5)
 --task 9 Explain how the CEILING and FLOOR functions work in SQL Server for rounding up or down to the nearest integer.
 select floor(4.90)
 select floor(-4.5) 
 select ceiling(4.2)
 select ceiling(-5.2)
 --task 10 The GETDATE() function in SQL Server is used to retrieve the current system date and time based on the server’s time zone.
 select getdate() as [current_date] 
 --task 11 Discuss the role and significance of the DATEDIFF function in SQL Server for calculating date/time differences.
 --The DATEDIFF function in SQL Server is used to calculate the difference between two dates or times in various units (years, months, days, hours, etc.).
 select datediff( year, '2000-11-09', getdate()) as years 
 --task 12 Explain the purpose of the DATEADD function in SQL Server and provide an example of its usage.
 select dateadd( day , 10, getdate()) as upcoming 
 --task13  Discuss scenarios where you might use the FORMAT function in SQL Server for date/time formatting.
 select format(getdate(),  'yyyy-MM-dd') as time
  --task 14  Provide an SQL Server query that utilizes string functions for data manipulation and explain their role.
  --puzzles
  CREATE TABLE CountSpaces ( texts VARCHAR(100) ); INSERT INTO CountSpaces(texts) 
  VALUES ('P Q R S '), (' L M N O 0 0 '), ('I am here only '), (' Welcome to the new world '), (' Hello world program'), (' Are u nuts ');
  select *from countspaces
  select texts , len(texts)-len(replace(texts, ' ', '')) as space from countspaces 
  --second puzzle
 





DECLARE @fromdate DATE = '2009-01-01',  
        @todate DATE = '2009-12-31';

WITH DateSequence AS (
    SELECT CAST(@fromdate AS DATE) AS DateValue  
    UNION ALL
    SELECT DATEADD(DAY, 1, DateValue)
    FROM DateSequence
    WHERE DateValue < @todate
)
SELECT 
    DateValue AS FullDate,                  
    YEAR(DateValue) AS Year,                
    MONTH(DateValue) AS Month,              
    DAY(DateValue) AS Day,                  
    DATENAME(WEEKDAY, DateValue) AS Weekday_Name,  
    DATEPART(WEEKDAY, DateValue) AS Weekday_Number
FROM DateSequence
OPTION (MAXRECURSION 365);



