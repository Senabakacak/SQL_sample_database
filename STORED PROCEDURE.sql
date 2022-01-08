use shoppingstoreDB

--STORED PROCEDURE

--Let's write sp that brings the customers' name and surname

go
CREATE PROCEDURE sp_getcustomers
AS
BEGIN
select FirstName,LastName
from customers
END
go

execute sp_getcustomers

--Let's write sp that brings information according to the customer's name and surname

go
CREATE PROCEDURE Sp_getcustomersfullname @firstname nvarchar(max),@lastname nvarchar(max)
AS
BEGIN
select * from customers
where FirstName=@firstname and LastName=@lastname
END
go

execute Sp_getcustomersfullname 'harry','holland'



--Let's write sp that brings the name and surname of the employees

go
CREATE PROCEDURE sp_getemployees
AS
BEGIN
select FirstName,LastName
from employees
END
go

execute sp_getemployees

--drop procedure sp_getemployees (delete procedure)

--Let's write sp that brings the employee information by name and surname

go
CREATE PROCEDURE sp_getemployeesfullname @firstname nvarchar(max),@lastname nvarchar(max)
AS
BEGIN
select * from employees
where FirstName=@firstname and LastName=@lastname 
END
go

execute sp_getemployeesfullname 'bella','gwen'


--Let's write sp, which calculates how much shopping the customer, whose id is given, makes in total

go
ALTER  PROCEDURE Sp_getcustomerorders @Id nchar(50)
AS
BEGIN
select s.companyname,c.firstname,
      sum(od.quantity*od.unitprice) as [income]
from [orderdetails] od
join Orders o  on o.orderId=od.orderId
join customers c on c.CustomerId=o.customerId
join products p  on p.productId=od.productId
join suppliers s on s.SupplierId=p.supplierId
where c.CustomerId = @Id
group by s.companyname,c.firstname
order by 2 desc
end 
go

execute Sp_getcustomerorders '5'
