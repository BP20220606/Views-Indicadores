CREATE VIEW Total_Ventas_Por_Categoria AS
SELECT 
    Categories.CategoryName, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS VentasTotales
FROM 
    Categories
    JOIN Products ON Categories.CategoryID = Products.CategoryID
    JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
    JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY 
    Categories.CategoryName;

--SELECT * FROM Total_Ventas_Por_Categoria;
