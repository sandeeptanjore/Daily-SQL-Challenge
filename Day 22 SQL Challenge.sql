/*          SQL Prep  Daily SQL Challenge #22
The boss needs to see a list of product vendors, and the number of items they have in stock. Show the vendors with the most items in stock first.
*/

SELECT P.productvendor,
       P.quantityinstock,
        P.productcode,
       P.productname
FROM products P
ORDER BY P.quantityinstock DESC;
