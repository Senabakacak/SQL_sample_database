use shoppingstoreDB

--TRIGGERS

--add order

--@kacadet = howmany
--@hangiurunId = whichproductId

create trigger trg_InserOrder on orderdetails
After Insert
as
Declare @kacAdet int, @hangiUrunId int
select @hangiUrunId = ProductID, @kacAdet = Quantity from inserted
Update Products
	SET UnitsInStock = UnitsInStock - @kacAdet
	where ProductID = @hangiUrunId

	--We entered 50 orders from the product with a product ID of 7
insert orderdetails (ProductID, Quantity, OrderID, UnitPrice,createdate) values (7, 50, 7, 20,getdate())

select * from Products where ProductID = 7



--deleted order

create trigger trg_orderdelete on orderdetails
after delete
as
	Begin
		declare @kacAdet int, @hangiUrun int;
		select @hangiUrun = ProductID, @kacAdet = Quantity from deleted
				Update Products
		Set UnitsInStock = UnitsInStock + @kacAdet
		where ProductID = @hangiUrun
	End

	
	delete from orderdetails where OrderID = 5 and ProductID = 9  
	

