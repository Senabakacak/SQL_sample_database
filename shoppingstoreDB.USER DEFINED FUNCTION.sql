use shoppingstoreDB

--USER DEFINED FUNCTION
go
ALTER FUNCTION TAXCALCULATE (@price money)
RETURNS money
BEGIN 
RETURN @price*1.55
END 
go


select p.ProductName,
       c.CategoryName,
       p.Unitprice,
dbo.TAXCALCULATE (unitprice) as [price with tax]
from products p
join categories c on c.CategoryID=p.CategoryId


CREATE FUNCTION STOCKSTATUS (@lower int,@top int)
RETURNS TABLE
RETURN select ProductId,
              ProductName, 
			  Unitprice, 
			  UnitsInStock
from products
where UnitsInStock between @lower and @top 

select * from STOCKSTATUS (10,100)