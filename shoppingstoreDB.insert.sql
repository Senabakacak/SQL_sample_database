use shoppingstoreDB

--insert categories table

insert categories (CategoryName,Description,Createdate) values ('clothing','tops',getdate())
insert categories (CategoryName,Description,Createdate) values ('clothing','bottom clothing',getdate())
insert categories (CategoryName,Description,Createdate) values ('bags','shoulderbag',getdate())
insert categories (CategoryName,Description,Createdate) values ('bags','backpack',getdate())
insert categories (CategoryName,Description,Createdate) values ('bags','beltbag',getdate())

--insert suppliers table

insert suppliers (CompanyName,ContactName,city,country,Createdate) values ('shein','rob cooper','new york','USA',getdate())
insert suppliers (CompanyName,ContactName,city,country,Createdate) values ('quensa','bill murphy','new york','USA',getdate())

--insert products table

insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','sweatshirts','45','100','medium','red',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','sweatshirts','45','100','small','red',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','sweatshirts','45','100','large','red',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','tshirts','20','250','small','pink',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','tshirts','20','250','medium','pink',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','tshirts','20','250','large','pink',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','1','tshirts','20','250','small','white',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','2','jeans','50','140','small','blue',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('1','2','jeans','50','140','large','black',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('2','3','shoulder bag','200','345','medium','black',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('2','4','backpack','300','1000','large','brown',getdate())
insert products (SupplierId,CategoryId,ProductName,Unitprice,UnitsInStock,size,color,Createdate) values ('2','5','leather beltbag','1500','600','medium','black',getdate())

--insert shippers table

insert shippers (CompanyName,Createdate) values ('amazon shipping',getdate())
insert shippers (CompanyName,Createdate) values ('blue shipping',getdate())

--insert customers table

insert customers (FirstName,LastName,City,Country,Createdate) values ('mary','wilson','new york','USA',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('justine','sky','new york','USA',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('ron','weasley','london','england',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('robert','fuller','paris','france',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('laura','parker','roma','italy',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('emma','felton','bucharest','romania',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('leonie','hanne','los angeles','USA',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('elsa','husk','los angeles','USA',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('harry','holland','new york','USA',getdate())
insert customers (FirstName,LastName,City,Country,Createdate) values ('chris','downey','istanbul','Turkey',getdate())

--insert employees table

insert employees (FirstName,LastName,city,country,Createdate) values ('bella','gwen','new york','USA',getdate())
insert employees (FirstName,LastName,city,country,Createdate) values ('stella','land','new york','USA',getdate())
insert employees (FirstName,LastName,city,country,Createdate) values ('lucy','hemsworth','los angeles','USA',getdate())
insert employees (FirstName,LastName,city,country,Createdate) values ('benjamin','olivia','los angeles','USA',getdate())
insert employees (FirstName,LastName,city,country,Createdate) values ('thomas','andres','bucharest','romania',getdate())


--insert orders table

insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('1','1','1','45',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('2','1','2','45',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('3','1','3','20',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('4','1','4','20',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('5','2','5','20',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('6','2','1','20',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('7','2','2','50',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('8','2','3','50',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('9','2','4','50',getdate())
insert Orders (customerId,shipperId,employeeId,freight,Createdate) values ('10','2','5','50',getdate())


--insert order details table

insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('1','1','45','1',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('2','2','20','3',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('3','3','45','10',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('4','12','1500','1',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('5','9','50','2',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('6','11','300','2',getdate())
insert orderdetails (orderId,productId,unitprice,quantity,Createdate) values ('7','7','20','15',getdate())
