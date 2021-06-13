/* SQL Prep:Daily SQL Challenge #2 */

/*
Show the product code, product name, and quantity in stock of all products that have a purchase
price greater than the average.
*/      

SELECT productcode,productname,quantityinstock,msrp
FROM products
WHERE msrp >(SELECT ROUND(AVG(msrp))
                 FROM products
                 )
ORDER BY msrp;         