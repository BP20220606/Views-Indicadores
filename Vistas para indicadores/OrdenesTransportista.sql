CREATE VIEW Numero_Ordenes_Enviadas_Por_Transportista AS
SELECT 
    Shippers.ShipperID, 
    Shippers.CompanyName AS Transportista, 
    COUNT(Orders.OrderID) AS NumeroOrdenes
FROM 
    Shippers
    JOIN Orders ON Shippers.ShipperID = Orders.ShipVia
GROUP BY 
    Shippers.ShipperID, 
    Shippers.CompanyName;

--SELECT * FROM Numero_Ordenes_Enviadas_Por_Transportista;
