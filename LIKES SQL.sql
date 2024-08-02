use companyDb;


select SUM(Salary)AS TotalSalary
FROM Employee2;

select AVG(Salary)AS AVGSalary
FROM Employee2;

select COUNT(Salary)AS COUNTSalary
FROM Employee2;

select MIN(Salary)AS MINSalary
FROM Employee2;

select DepartmentID,MAX(HireDate)AS LatestHireDate
from Employees
GROUP BY DEPARTMENTID;
select*from Employee2
WHERE Salary>50000;


select DepartmentID, COUNT(*) AS EmployeeCount
from Employees
GROUP BY DepartmentID
HAVING COUNT(*)>=2;


select* from Employees
WHERE NOT DepartmentID ='HR';


select*from Employees
WHERE DepartmentID IN (101,102,103);

select*from Employees
WHERE DepartmentID IN (101,102);

select*from employee2
where salary between 60000 AND 70000;

select * from Employees
where FirstName LIKE 'J%'; 