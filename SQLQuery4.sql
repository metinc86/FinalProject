SELECT p.ProductName [Ürün Adı], 
Sum(od.UnitPrice*od.Quantity) [Kazanılan Toplam Tutar] 
FROM Products p
INNER JOIN [Order Details] od
ON p.ProductID = od.ProductID  
INNER JOIN Orders o
ON o.OrderID = od.OrderID 
GROUP BY p.ProductName 
ORDER BY [Kazanılan Toplam Tutar];