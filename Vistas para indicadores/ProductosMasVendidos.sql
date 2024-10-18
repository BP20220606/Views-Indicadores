CREATE VIEW Productos_Mas_Vendidos AS
SELECT 
    Products.ProductID, 
    Products.ProductName, 
    SUM([Order Details].Quantity) AS CantidadVendida
FROM 
    Products
    JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY 
    Products.ProductID, 
    Products.ProductName



--SELECT * FROM Productos_Mas_Vendidos ORDER BY CantidadVendida DESC;
