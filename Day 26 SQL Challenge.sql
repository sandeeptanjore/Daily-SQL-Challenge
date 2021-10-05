/*          SQL Prep  Daily Challenge #26
Find dates where both orders and payments were made.
*/

SELECT O.ordernumber,
       O.orderdate,
       P.paymentdate
FROM   orders O , payments P
WHERE  O.customernumber = P.customernumber;

