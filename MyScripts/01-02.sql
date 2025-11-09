-- Find sales people who have zero sales
Select e.firstName, e.lastName, Count(sales.salesId)
from employee e
left join sales 
  on sales.employeeId = e.employeeId
WHERE e.title = 'Sales Person'
group by e.firstName, e.lastName
HAVING Count(sales.salesId) = 0
