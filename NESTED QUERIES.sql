use companyDb;
ALTER table EMPLOYEES
ADD SALARY INT;
SET SQL_SAFE_UPDATES=0;
UPDATE Employees
SET  SALARYA =ROUND(RAND()*(80000-40000)+40000,2);
SET SQL_SAFE_UPDATES=0;
SET SQL_SAFE_UPDATES=1;
SELECT DEPARTMENTNAME,
(SELECT COUNT(4)
FROM EMPLOYEES
WHERE EMPLOYEES.DEPARTMENTID=Department.DepartmentID)AS EmployeeCount
FROM Department;
SELECT*
FROM Employees
WHERE SalaryA =(SELECT MAX(SALARYA)
FROM EMPLOYEES AS e
WHERE e.DepartmentID=Employees.DepartmentID);
SELECT DepartmentID,AverageSalaryA
from (SELECT DepartmentID,AVG(SalaryA)AS AverageSalaryA
From Employees
GROUP BY DepartmentID) AS AvgSalaries
WHERE AverageSalaryA>50000;

SELECT* from employees;
