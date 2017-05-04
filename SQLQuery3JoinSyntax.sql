select productname,
colour, 
ReorderPoint,
tproduct.ProductID,
OrderQty

from tproduct

INNER JOIN torderdetail 
on tproduct.ProductID = tOrderDetail.ProductID