CREATE VIEW Total_Ventas_Por_Transportista AS
SELECT 
    Shippers.ShipperID, 
    Shippers.CompanyName AS Transportista, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS VentasTotales
FROM 
    Shippers
    JOIN Orders ON Shippers.ShipperID = Orders.ShipVia
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY 
    Shippers.ShipperID, 
    Shippers.CompanyName;

-- Select para verificar la vista
SELECT * FROM Total_Ventas_Por_Transportista;
