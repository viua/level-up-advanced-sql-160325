--  create employee list ana their immediate managers

SELECT e1.employeeId as '#', e1.firstName || ' ' || e1.lastName AS Employee, e1.managerId, 
       'N/A' AS Manager from employee e1
       where managerId is NULL
UNION
SELECT emp.employeeId, emp.firstName || ' ' || emp.lastName AS Employee, emp.managerId
       ,mnr.firstName || ' ' || mnr.lastName AS Manager
FROM employee emp 
JOIN employee mnr on emp.managerId = mnr.employeeId
order by 1