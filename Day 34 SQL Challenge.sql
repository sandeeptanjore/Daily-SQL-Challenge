/*
            SQL Prep  Daily Challenge #34
How many countries have names that are seven characters long, where the name also starts with the letter A or B?
 
 */
 
SELECT COUNT(country)
FROM customers
WHERE LENGTH(country) = 7 AND (country LIKE 'A%' OR country LIKE 'B%');
