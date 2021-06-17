/*                              SQL Prep  Daily SQL Challenge #3 */

/*
Show the product name, product description, and product line for the product in each product line that has the highest gross revenue.
*/

 
SELECT productname, productline,msrp,productdescription
FROM products
WHERE (msrp,productline) IN (SELECT MAX(msrp),productline FROM products
                                    GROUP BY productline
                             );
                             
                             
--OR the same can be solved by:

SELECT productName, productDescription, productLine,msrp
FROM products p1
WHERE MSRP = (SELECT MAX(MSRP)
FROM products  p2
WHERE p2.productLine = p1.productLine);
                             