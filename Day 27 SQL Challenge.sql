<<<<<<< HEAD
/*          SQL Prep  Daily Challenge #27
Show a list of all transaction dates, and the combined number of orders.
*/


select O.orderdate AS "Order Date", COUNT(O.ordernumber) AS "Number of Orders Placed" from orders O 
GROUP BY O.orderdate
order by orderdate;



=======
/*          SQL Prep  Daily Challenge #27
Show a list of all transaction dates, and the combined number of orders.
*/


select O.orderdate AS "Order Date", COUNT(O.ordernumber) AS "Number of Orders Placed" from orders O 
GROUP BY O.orderdate
order by orderdate;



>>>>>>> 4daaaeb3c778ab03aa9ff5b785e0e97bdecc53af
