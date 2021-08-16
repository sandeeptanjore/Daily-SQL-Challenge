/*          SQL Prep  Daily SQL Challenge #20
The company wants to see which orders have had issues. 
Grab everything from the orders table where the comments include the word "difficult"
COMMENTS column is a CLOB
*/

SELECT  O.ordernumber,
        O.orderdate,
        O.requireddate,
        O.shippeddate,
        O.status,
        O.comments,
        DBMS_LOB.SUBSTR(O.comments, 4000) AS "Order Comments"
FROM orders O
WHERE DBMS_LOB.substr(comments, 4000) like 'Diff%';
