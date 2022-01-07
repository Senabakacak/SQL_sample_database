use shoppingstoreDB

--JOIN
--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

select p.ProductName,
       p.size,
	   p.color,
	   c.CategoryName,
	   c.Description
from products p
join categories c on p.CategoryId=c.CategoryID


select *
from products p
join categories c on p.CategoryId=c.CategoryID
join suppliers s on p.SupplierId=s.SupplierId


select top 1 c.FirstName+''+c.LastName as [full name],
           sum(od.quantity) as amount,
		   cast(sum (od.quantity*od.unitprice) as decimal) as [income]
from orders o
join customers c on o.customerId=c.CustomerId
join orderdetails od on o.OrderId=od.orderId
group by c.FirstName+''+c.LastName
order by 3 desc


select p.ProductName,s.CompanyName,
  sum(od.quantity) as amount,
  cast(sum(od.quantity*od.unitprice) as decimal) as [income]
from products p
join suppliers s on s.SupplierId=p.SupplierId
join orderdetails od on od.productId=p.ProductId
group by p.ProductName,s.CompanyName
order by 4 desc
