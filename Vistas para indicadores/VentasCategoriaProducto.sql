CREATE VIEW Ventas_Por_Categoria_Producto AS
SELECT 
    Categories.CategoryName, 
    Products.ProductName, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS Ventas
FROM 
    Categories
    JOIN Products ON Categories.CategoryID = Products.CategoryID
    JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
    JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY 
    Categories.CategoryName, 
    Products.ProductName;


--SELECT * FROM Ventas_Por_Categoria_Producto;
