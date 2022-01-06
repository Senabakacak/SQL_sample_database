use shoppingstoreDB

--we created the category table
--dbo => databases object

CREATE TABLE [dbo].[categories]
(
[CategoryId] INT IDENTITY (1,1) NOT NULL,
[CategoryName] NVARCHAR (40) NOT NULL,
[Description] NVARCHAR (50) NOT NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED ([CategoryId] ASC)
)

--we created the suppliers table

CREATE TABLE [dbo].[suppliers]
(
[SupplierId] INT IDENTITY (1,1) NOT NULL,
[CompanyName] NVARCHAR (40) NOT NULL,
[ContactName] NVARCHAR (40) NOT NULL,
[Address] NVARCHAR (40) NULL,
[City] NVARCHAR (30) NOT NULL,
[Country] NVARCHAR (30) NOT NULL,
[Phone] NVARCHAR (40) NULL,
[Email] NVARCHAR (40) NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [PK_suppliers] PRIMARY KEY CLUSTERED ([SupplierID] ASC)
)

--we created the products table

CREATE TABLE [dbo].[products]
(
[ProductId] INT IDENTITY (1,1) NOT NULL,
[SupplierId] INT NOT NULL,
[CategoryId] INT NOT NULL,
[ProductName] NVARCHAR  (40) NOT NULL,
[Unitprice] MONEY NULL,
[UnitsInStock] SMALLINT  NULL,
[size] NVARCHAR (10) NULL,
[color] NVARCHAR (20) NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
CONSTRAINT [Fk_Products_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([SupplierId]),
CONSTRAINT [Fk_Products_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId])
)

--we created the shippers table

CREATE TABLE [dbo].[shippers]
(
[ShipperId] INT IDENTITY (1,1) NOT NULL,
[CompanyName] NVARCHAR (40) NOT NULL,
[Phone] NVARCHAR (30) NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [Pk_shippers] PRIMARY KEY CLUSTERED ([shipperId] ASC)
)

--We created the customers table

CREATE TABLE [dbo].[customers]
(
[CustomerId] INT IDENTITY (1,1) NOT NULL,
[FirstName] NVARCHAR  (40) NOT NULL,
[LastName] NVARCHAR  (50) NOT NULL,
[Address] NVARCHAR  (40)  NULL,
[City] NVARCHAR  (40) NOT NULL,
[Country] NVARCHAR  (40) NOT NULL,
[Phone] NVARCHAR  (40) NULL,
[Email] NVARCHAR  (40) NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [Pk_customers] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
)


--We created the employees table

CREATE TABLE [dbo].[employees]
(
[EmployeeId] INT IDENTITY (1,1) NOT NULL,
[FirstName] NVARCHAR (40) NOT NULL,
[LastName] NVARCHAR (40) NOT NULL,
[Birthdate] DATETIME NULL,
[city] NVARCHAR (40) NOT NULL,
[country] NVARCHAR (40) NOT NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [Pk_employees] PRIMARY KEY CLUSTERED ([EmployeeId] ASC)
)


--We created the orders table

CREATE TABLE [dbo].[Orders]
(
[OrderId] INT IDENTITY (1,1) NOT NULL,
[customerId] INT NOT NULL,
[shipperId] INT NOT NULL,
[employeeId] INT NOT NULL,
[Requireddate] DATETIME NULL,
[shippeddate] DATETIME NULL,
[freight] money NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [Pk_orders] PRIMARY KEY CLUSTERED ([orderId] ASC),
CONSTRAINT [Fk_orders_customerId] FOREIGN KEY ([customerId]) REFERENCES [dbo].[customers] ([customerId]),
CONSTRAINT [Fk_orders_shipperId] FOREIGN KEY ([shipperId]) REFERENCES [dbo].[shippers]  ([shipperId]),
CONSTRAINT [Fk_orders_employeeId] FOREIGN KEY ([employeeId]) REFERENCES [dbo].[employees] ([employeeId])
)

--we created the order details

CREATE TABLE [dbo].[orderdetails]
(
[orderdetailId] INT IDENTITY (1,1) NOT NULL,
[orderId] INT NOT NULL,
[productId] INT NOT NULL,
[unitprice] MONEY  NOT NULL,
[quantity] smallmoney NOT NULL,
[Createdate] DATETIME2 (7) NOT NULL,
[Updatedate] DATETIME2 (7)  NULL,
[Deletedate] DATETIME2 (7)  NULL,
CONSTRAINT [Pk_orderdetails] PRIMARY KEY CLUSTERED ([OrderdetailId] ASC),
CONSTRAINT [Fk_orderdetails_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([orderId]),
CONSTRAINT [Fk_orderdetails_productId] FOREIGN KEY ([productId]) REFERENCES [dbo].[Products]  ([productId])
)
