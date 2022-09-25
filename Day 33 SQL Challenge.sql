/*
            SQL Prep  Daily Challenge #33
The check we sent out for the third highest amount has been misplaced! We want information about that check. 
Write a query to find third highest check amount and display customer name, check number, amount and payment date.
 
 */
 
WITH third_highest_cheque AS
        (SELECT C.customername customer_name
               ,P.checknumber  check_number
               ,P.paymentdate  payment_date
               ,P.amount       amount
              ,DENSE_RANK() OVER (ORDER BY P.amount DESC) thc
         FROM customers C
         INNER JOIN payments P
         ON P.customernumber = C.customernumber
         ) 
SELECT third_highest_cheque.customer_name
       ,third_highest_cheque.check_number
       ,third_highest_cheque.payment_date
       ,third_highest_cheque.amount
FROM third_highest_cheque
WHERE  third_highest_cheque.thc = 3;        
