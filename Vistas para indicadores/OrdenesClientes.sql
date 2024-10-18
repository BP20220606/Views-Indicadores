CREATE VIEW Numero_Ordenes_Por_Cliente AS
SELECT 
    Customers.CustomerID, 
    Customers.CompanyName AS Cliente, 
    COUNT(Orders.OrderID) AS NumeroOrdenes
FROM 
    Customers
    JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
    Customers.CustomerID, 
    Customers.CompanyName;

-- SELECT * FROM Numero_Ordenes_Por_Cliente;
