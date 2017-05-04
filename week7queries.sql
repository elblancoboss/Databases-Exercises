
-- a.	The total number of records in this table
select count(*) as totalrecords from torder

-- b.	The average value across all the orders
select avg(value) as totalaverage from torder

-- c.	The maximum value ordered.
select max(value) as maximumvalue from torder

-- d.	The minimum value ordered.
select min(value) as minimumvalue from torder

-- e.	Customerid and total value for each customer
select CustomerID, sum(value) as TotalSpent from torder group by CustomerID

--Task 3.	Use your own database and torderdetail. Display productID and total quantity for each product. Now restrict the display to those products where the total quantity is over 30. [9 rcds returned]
select productID, sum(orderqty) as TotalSold from tOrderDetail group by ProductID Having Sum(OrderQty) > 30

-- Task 4.	Run queries against your own tables that use GROUP BY and display totals, counts etc.

-- Task 5.	Display productID, productName from tProduct where the product’s total orderqty from the tOrderDetail table is greater than  25. [I get 12 rcds returned]. This involves use of a sub-query.


select ProductID, productName 
from tProduct 
where productid  IN 

(SELECT PRODUCTID from torderdetail group by productid having sum(orderqty) > 25)
