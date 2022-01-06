use shoppingstoreDB

--SELECT:The SQL SELECT statement returns a result set of records, from one or more tables. 
select * from products

select ProductName,
       Unitprice,
       UnitsInStock
from products 

--WHERE: The SQL Where command is used to filter data based on the specified condition.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitPrice > 10

--AS: We can display columns with different names using the helper word AS.
select EmployeeId,
	   (FirstName+' '+LastName) as [Full Name]
from Employees
where EmployeeID > 4

--The AND and OR operators are used to filter records based on more than one condition:
--AND
select * 
from Products
where UnitPrice between 10 and 50

--OR
select * 
from Products
where UnitPrice=20 or UnitPrice = 17

--IN:The IN operator allows you to specify multiple values in a WHERE clause,The IN operator is a shorthand for multiple OR conditions.
select * 
from Products
where UnitPrice in (10,20,25,50)

--ORDER BY:The ORDER BY keyword is used to sort the result-set in ascending or descending order.
select ProductID,
	   ProductName,
	   UnitPrice,
	   UnitsInStock 
from Products
where UnitPrice > 40
order by UnitPrice asc


select ProductID,
	   ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitsInStock > 400
order by UnitsInStock desc

--LIKE:The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
select FirstName,
	   LastName
from customers
where FirstName like 'M%'

select * from customers where FirstName not like '%M%'

--AGGRAGETE FUNCTION--

--SUM() : The SUM() function returns the total sum of a numeric column. 
select Sum(UnitsInStock) as [Total Stock] from Products

--COUNT(): The COUNT() function returns the number of rows that matches a specified criterion.
select COUNT(*) as [total employees] from Employees

--AVERAGE() --> (AVG): The AVG() function returns the average value of a numeric column. 
select Avg(DATEDIFF("YY", BirthDate, GETDATE())) from Employees

--MIN():the MIN() function returns the smallest value of the selected column.
select Min(UnitsInStock) from Products

--MAX():The MAX() function returns the largest value of the selected column.
select Max(UnitsInStock) from Products

--GROUP BY:The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
select CategoryID,
	   COUNT(*) as Amount
from Products
group by CategoryID

--HAVING:The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 2