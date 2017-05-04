create view vProductID
as

select ProductName,
Colour,
ReorderPoint

from tproduct

inner join torderdetail

on tproduct.ProductName = tOrderDetail.OrderQty