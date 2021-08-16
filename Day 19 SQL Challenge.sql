/*          SQL Prep  Daily SQL Challenge #19
The company needs to see which customers still owe money. 
Find customers who have a negative balance (amount owed greater than amount paid). Show the customer number and customer name.
*/

SELECT P.customernumber, 
       P.amount,
       C.customername,
       C.contactlastname,
       C.contactfirstname
FROM payments P, customers C
WHERE P.amount = 0
AND   C.customernumber = P.customernumber;

