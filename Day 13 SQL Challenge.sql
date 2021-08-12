/*                              SQL Prep  Daily SQL Challenge #13

Find the average number of days before the required date that shipped orders are shipped. Round to 2 decimal places.
*/

SELECT 
       ROUND(AVG(TO_DATE(O.requireddate,'DD-MON-YY') - TO_DATE(O.SHIPPEDDATE,'DD-MON-YY')),2) AS "Average Number of Days before an Order is shipped"
FROM  orders O;

