CREATE VIEW VentasTotalesPeriodo AS
SELECT 
    YEAR(OrderDate) AS A�o, 
    DATENAME(MONTH, OrderDate) AS Mes, 
    SUM(Quantity * UnitPrice) AS VentasTotales
FROM 
    Orders
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY 
    YEAR(OrderDate), 
    DATENAME(MONTH, OrderDate);

SELECT * FROM VentasTotalesPeriodo;