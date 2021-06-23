/*                              SQL Prep  Daily SQL Challenge #11

 Select the name of the country and the 'Number of cities' for each country ,
 order the results starting with the country that has the biggest number of cities.
*/

--This is the solution based on the requirement

SELECT country,COUNT(city) AS "NUMBER OF CITIES PRESENT IN AS COUNTRY"
FROM offices
GROUP BY country;

