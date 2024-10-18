CREATE VIEW Ventas_Por_Region_Pais AS
SELECT 
    Orders.ShipCountry AS Pais, 
    Orders.ShipRegion AS Region, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS VentasTotales
FROM 
    Orders
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY 
    Orders.ShipCountry, 
    Orders.ShipRegion;


--SELECT * FROM Ventas_Por_Region_Pais;
