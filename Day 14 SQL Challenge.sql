/*                              SQL Prep  Daily SQL Challenge #14

We want to see a history of orders and payments by customer # 363. Show a list of their customer number, order/payment date,
and order/payment amount. 


The question seems to be a bit unorthodox. There is no common column between PAYMENTS and ORDERDETAILS table. This is resulting in incorrect data in my opinion.
Anyway here is how I approached
*/


--Using DISTINCT clause and fetches 6 rows

SELECT DISTINCT 
       OD.ordernumber, 
       P.CUSTOMERNUMBER, 
       P.PAYMENTDATE, 
       P.AMOUNT
FROM orderdetails OD, 
     payments P
WHERE OD.ordernumber IN(SELECT O.ordernumber
                        FROM orders O
                        WHERE O.Customernumber = 363) 
AND P.CUSTOMERNUMBER = 363
ORDER BY OD.ordernumber;

--Removing DISTINCT and it fetches 57 rows i.e. CROSS JOIN.

SELECT OD.ordernumber, 
       OD.PRODUCTCODE, 
       P.CUSTOMERNUMBER, 
       P.PAYMENTDATE, 
       P.AMOUNT
FROM orderdetails OD, 
     payments P
WHERE OD.ordernumber IN(SELECT O.ordernumber
                        FROM orders O
                        WHERE O.Customernumber = 363) 
AND P.CUSTOMERNUMBER = 363
ORDER BY OD.ordernumber;
