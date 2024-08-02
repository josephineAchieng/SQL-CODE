use companyDb;
select Employees.FirstName,Employees.LastName,Department.DepartmentName
from Employees
INNER JOIN Department ON Employees.DepartmentID =Department.departmentID;
SELECT Employees.EmployeeID,Employees.FirstName,Employees.LastName,
projects.projectID,Projects.projectName
from Employees
CROSS JOIN projects;