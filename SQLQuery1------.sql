--Create table
CREATE TABLE [dbo].[TestMultipleZero]
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
)
GO
 
--Insert Data
INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0)

	SELECT *FROM [dbo].[TestMultipleZero]
	 SELECT A,B, C, D FROM [dbo].[TestMultipleZero] WHERE (A+B+C+D)<>0  
	  
	 
	 --TASK-2
	 --IN THE PUZZLE WE HAVTE TO FIND THE DUPLICATE VALUES FROM A DUPLICATE TABLE WHERE DUPLICATE VALUES ARE MORE THEN 1

	 CREATE TABLE TESTDuplicateCount ( 
    ID INT,
    EmpName VARCHAR(100),
    EmpDate DATETIME
)  
--Insert Data 
INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) 
VALUES
(1,'Pawan','2014-01-05'),
(2,'Pawan','2014-03-05'), 
(3,'Pawan','2014-02-05'), 
(4,'Manisha','2014-07-05'), 
(5,'Sharlee','2014-09-05'), 
(6,'Barry','2014-02-05'), 
(7,'Jyoti','2014-04-05'), 
(8,'Jyoti','2014-05-05')

--DROP TABLE IF EXISTS TESTDuplicateCount 
SELECT ID, EMPNAME, EMPDATE , COUNT(*) FROM TESTDuplicateCount 
GROUP BY ID, EMPNAME, EMPDATE
HAVING COUNT(*)>1

SELECT EMPNAME, COUNT(*)  AS DUPLICATE FROM TESTDuplicateCount 
GROUP BY EMPNAME 
HAVING COUNT(*)>1 
 SELECT EMPDATE, COUNT(*) AS DATE FROM TESTDuplicateCount
 GROUP BY EMPDATE 
 HAVING COUNT(*)>1

 SELECT ID, EMPNAME, EMPDATE, COUNT(*) AS DATECOUNT FROM TESTDuplicateCount
 GROUP BY ID,  EMPNAME , EMPDATE
 HAVING COUNT(*)>1

