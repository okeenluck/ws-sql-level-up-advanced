-- Create a list of employees and their immediate managers.
Select e.firstName, e.lastName, e.managerId, m.employeeId, m.firstName as managerName, m.lastName as managerLastname
from employee e
Left JOIN employee m on e.managerId = m.employeeId

