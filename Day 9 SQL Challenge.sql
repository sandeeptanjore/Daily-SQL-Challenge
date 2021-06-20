/*                              SQL Prep  Daily SQL Challenge #9

Show each product line and the number of products in each product line, for all product lines with more than 20 products.
*/

SELECT COUNT(productline), productline FROM products
WHERE productline IN (SELECT productline 
                      FROM productlines
                      )
--AND productline = 'Classic Cars' 
GROUP BY productline
HAVING COUNT(productline) > 20
ORDER BY  productline;      


--In case you are asked at a high level how many products 
--have product lines > 20 then the answer should be:

SELECT COUNT(*) FROM (
                        SELECT COUNT(productline), productline FROM products
                        WHERE productline IN (SELECT productline 
                                                 FROM productlines
                                            )
                        GROUP BY productline
                        HAVING COUNT(productline) > 20
                        ORDER BY  productline
);