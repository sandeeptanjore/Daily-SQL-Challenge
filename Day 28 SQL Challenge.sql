/*          SQL Prep  Daily Challenge #28
    Find the number of customers that each management-level (not sales reps) employee is responsible for. 
    This includes customers tied directly to the managers, as well as customers tied to employees that report to the managers. 
    Show the employee name (first and last), their job title, and the number of customers they oversee.
*/


--Unfortunately there are no managers who are tied to customers directly. So the count is Zero

SELECT E.employeenumber, E.firstname||'-'||E.lastname, COUNT(E.employeenumber)
FROM employees E, customers C
WHERE E.employeenumber = C.salesrepemployeenumber
AND E.jobtitle <> 'Sales Rep'
GROUP BY E.employeenumber,E.firstname,E.lastname;
