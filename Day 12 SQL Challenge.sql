/*                              SQL Prep  Daily SQL Challenge #12

 We want to make sure the company is taking care of top clients. We need to find our most profitable orders
 that haven't shipped yet, so that we can give those customers extra attention. 
 Find the 5 biggest orders (largest subtotal) that have not shipped yet. Display in a report
 the employee name, customer name, order number, order subtotal, and status for those 5 largest subtotals.
*/

--This is the solution based on the requirement

   WITH toporders AS
     (
          SELECT C.customername                               AS "Customer Name",
                 O.ordernumber                                AS "Order Number",
                 Concat(Concat(E.firstname, '-'), E.lastname) AS "Employee Name",
                 SUM(OD.quantityordered * OD.priceeach)       AS "Amount per each Order"
          FROM   customers C,
                 orders O,
                 orderdetails OD,
                 employees E
          WHERE  C.customernumber = O.customernumber
                 AND O.ordernumber = OD.ordernumber
                 AND C.salesrepemployeenumber = E.employeenumber
                 AND O.status = 'Cancelled'
          GROUP  BY C.customername,
                    O.ordernumber,
                    Concat(Concat(E.firstname, '-'), E.lastname)
          ORDER  BY SUM(OD.quantityordered * OD.priceeach) DESC
      )
      SELECT * FROM toporders WHERE ROWNUM <=5;    


