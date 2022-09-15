# Daily-SQL-Challenge

Hello,
Many thanks for taking your precious time to go through my Daily SQL Challenge by SQL Prep scripts.

Daily SQL Challenge by SQL Prep, was one of those sites that broadcasted SQL quizzes on a daily basis. Unfortunately the site is no longer present on the internet. My attempts to connect(email, Facebook and LinkedIn messages) with the owner of the site did not yield any results. 
The Schema and the output of the quiz was meant for SQL Server. With some tweaks I was able to get a working schema(correct and incorrect data) executed on Oracle and attempted at the SQL quizzes on a daily basis for 100 days.

The tweaks that I employed were:
a) removing the Primary Key completely (not a smart decision but decided to do it as the focus was to practice and attempt these challenges)
b) commenting the decimals as Oracle would throw the following error: /**SQLDEV:FAILED TO TRANSLATE AS Decimal(10, 2))) **/

That said, at times some of the queries do not retrieve any data and that is because of the following:
a) either the seed data which I convered to Oracle is incorrect
b) the schema does not have constraints (PK,FK)

Additionally as I do not have access to WORLD schema/database I did not attempt to solve challenges related to the same. Hence the number of challenges are less than 100.

The original site was hosted at: https://www.sqlprep.com/blog
