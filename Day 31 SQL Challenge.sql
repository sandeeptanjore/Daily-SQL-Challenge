/*
            SQL Prep  Daily Challenge #31
 Display the first name, job title and office code of employees who have office code 
 2, 4 and 7 respectively. Order them by office code ascending.
 
 */
 
SELECT E.firstname,
        E.lastname,
        E.jobtitle,
        E.officecode
FROM employees E
WHERE E.officecode IN (2,4,7)
ORDER BY E.officecode;
