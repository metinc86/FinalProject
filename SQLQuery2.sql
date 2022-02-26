SELECT ContactName Adi, CompanyName SirketAdi, City Sehir FROM Customers 

Select * from Customers where City = 'Berlin' 

Select * from Products where CategoryId = 1 or CategoryID = 3 

Select * from Products where CategoryId = 1 and UnitPrice>= 10 

Select * from Products where CategoryId=1 or CategoryID = 4 order by UnitPrice desc 

Select count(*) from Products where CategoryID = 2 

Select CategoryId, count(*) from Products where UnitPrice > 20 group by CategoryID having count(*) < 10

Select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID 
where Products.UnitPrice >10 

Select * from Products p left join [Order Details] od on p.ProductId = od.ProductId 
inner join Orders o 
on o.OrderID = od.OrderID

Select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null