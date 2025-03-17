--- Find sales people who have zero sales ---

select e.employeeId, s.salesId
 FROM employee e
 LEFT JOIN sales s ON s.employeeId=e.employeeId
WHERE e.title == 'Sales Person' AND s.salesId is NULL;
-- kurla check that saisId IS NULL

-- select * from sales order by employeeId;

-- select e.employeeId, e.firstName || ' ' || e.lastName AS Name, e.title from employee e where e.title == 'Sales Person' AND e.employeeId not in (select employeeId from sales group by employeeId)
-- employeeId	Name	     title
-- 103	      Bob Smith	 Sales Person
-- 104	      Carla Owen Sales Person