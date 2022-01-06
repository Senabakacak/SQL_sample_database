use shoppingstoreDB

--Data definition language(DDL)
--(Create,alter,drop)  describes the portion of SQL that creates, alters, and deletes database objects.

ALTER TABLE employees
ADD email nvarchar (50)

ALTER TABLE employees 
DROP COLUMN email

--Data manipulation language(DML)
--(Create,update,delete) is a computer programming language used for adding (inserting), deleting, and modifying (updating) data in a database.

insert shippers (CompanyName,phone,Createdate) values ('eym shipping','0212-999-99',getdate())

update shippers set CompanyName='sna shipping' 
where ShipperId=4

delete from shippers 
where ShipperId=4