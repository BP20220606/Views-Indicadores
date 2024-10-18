CREATE VIEW Productos_Mas_Vendidos_Por_Categoria AS
SELECT 
    c.CategoryName,
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalCantidadVendida
FROM 
    [Order Details] od
    JOIN Products p ON od.ProductID = p.ProductID
    JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY 
    c.CategoryName,
    p.ProductID,
    p.ProductName



--SELECT * 
--FROM Productos_Mas_Vendidos_Por_Categoria
--ORDER BY 
--    CategoryName, 
--    TotalCantidadVendida DESC;  
