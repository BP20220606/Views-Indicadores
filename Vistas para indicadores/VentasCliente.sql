CREATE VIEW Total_Ventas_Por_Cliente AS
SELECT 
    Customers.CustomerID, 
    Customers.CompanyName AS Cliente, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS VentasTotales
FROM 
    Customers
    JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY 
    Customers.CustomerID, 
    Customers.CompanyName;

--SELECT * FROM Total_Ventas_Por_Cliente;
