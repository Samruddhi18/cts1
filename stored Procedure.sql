

create Procedure GetCustomersByCountry(@Country varchar(30))
As
select CustomerID,CompanyName,ContactName,City,Country
from Customers where Country=@Country;
Go
Exec GetCustomersByCountry 'France'

select * from Customers;
select * from Categories;
select * from Products;
select * from Orders;

create Procedure productgategory3(@CategoryID int)
As
select p.ProductID,p.ProductName,p.UnitPrice,p.QuantityPerUnit,c.CategoryID,c.CategoryName 
from Products p Join Categories c 
on p.ProductID=@CategoryID
Go
Exec productgategory3 1


create Procedure getcustomersnorder3(@Country varchar(50))
As
select c.CustomerId,c.ContactName,c.CompanyName,c.Address,c.Country,o.OrderId,o.OrderDate,o.ShippedDate 
from Customers c join Orders o
on c.Country=@Country
Go
Exec getcustomersnorder3'France' 

