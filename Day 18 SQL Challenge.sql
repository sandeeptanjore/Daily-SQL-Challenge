/*          SQL Prep  Daily SQL Challenge #18
We want to see information about our customers by country. Show a list of customer countries, 
the number of customers from those countries, and the total amount of payments those customers have made.
*/

WITH tot_count AS
  (SELECT country,
          COUNT(*) Number_of_Customers
   FROM   customers
   GROUP BY country
   ) 
SELECT  TC.country, TC.Number_of_Customers,
       SUM(P.amount) AS "Total Amount"
FROM   payments P, customers C, tot_count TC
WHERE  P.customernumber = C.customernumber
AND    TC.country = C.country
GROUP BY TC.country, TC.Number_of_Customers
ORDER BY TC.country;



