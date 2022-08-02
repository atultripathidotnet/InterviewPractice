

SELECT FirstName, LastName, Gender,Department, Count(*) rownumber FROM Employees GROUP BY FirstName, LastName, Gender,Department
having COUNT(1) >1

begin tran
--SELECT * FROM Employees

DELETE FROM EMPLOYEES WHERE ID IN(
SELECT MAX(ID) FROM EMPLOYEES GROUP BY
FIRSTNAME, LASTNAME, GENDER,DEPARTMENT
HAVING COUNT(ID) > 1
)
select * from EMPLOYEES
rollback tran
select * from EMPLOYEES

/*Delete duplicate from table*/
;WITH CTE AS
(
SELECT ID,FIRSTNAME, LASTNAME, GENDER,DEPARTMENT,Salary,
 DENSE_RANK() OVER (PARTITION BY FIRSTNAME, LASTNAME, GENDER,DEPARTMENT,Salary ORDER BY ID) ROWNUM
 FROM EMPLOYEES
)
DELETE FROM CTE WHERE ROWNUM > 1

/*select 2nd highest salary by department*/
;WITH CTE AS
(
SELECT FIRSTNAME, LASTNAME, GENDER,DEPARTMENT,Salary,
 DENSE_RANK() OVER (PARTITION BY DEPARTMENT ORDER BY Salary DESC) ROWNUM
 FROM EMPLOYEES
)
SELECT * FROM CTE WHERE ROWNUM=2

Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000,'IT')
Insert into Employees values ('Mark', 'Hastings', 'Male', 60000,'ADMIN')
Insert into Employees values ('Steve', 'Pound', 'Male', 45000,'IT')
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000,'ADMIN')
Insert into Employees values ('Philip', 'Hastings', 'Male', 45000,'IT')
Insert into Employees values ('Mary', 'Lambeth', 'Female', 30000,'ADMIN')
Insert into Employees values ('Valarie', 'Vikings', 'Female', 35000,'ADMIN')
Insert into Employees values ('John', 'Stanmore', 'Male', 80000,'IT')
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000,'ADMIN')

