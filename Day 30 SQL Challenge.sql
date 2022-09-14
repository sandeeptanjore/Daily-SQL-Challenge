/*
            SQL Prep  Daily Challenge #30
 Find all customer information for customers who have never made an order.
 
 */
 
 
 --Using Correlated Subquery
 
 SELECT C.customernumber,
        C.customername
 FROM customers C
 WHERE NOT EXISTS 
                 (SELECT '1' 
                  FROM orders O
                  WHERE C.customernumber = O.Customernumber
                  )
ORDER BY C.customernumber;                  
                 
--Using a JOIN and CASE statement               
 SELECT C.customernumber,
        C.customername,
      CASE WHEN O.ordernumber IS NULL THEN 'No Order Placed'
      END Ordernumber  
FROM customers C
LEFT OUTER JOIN orders O
ON C.customernumber= O.customernumber 
WHERE O.ordernumber IS NULL
ORDER BY C.customernumber;
 
--Using a JOIN and NVL function 
SELECT C.customernumber,
        C.customername,
      NVL(TO_CHAR(O.ordernumber), 'No Order Placed')
FROM customers C
LEFT OUTER JOIN orders O
ON C.customernumber= O.customernumber 
WHERE O.ordernumber IS NULL
ORDER BY C.customernumber;
                  
                 
