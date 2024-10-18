CREATE VIEW Productividad_Empleados AS
SELECT 
    Employees.EmployeeID, 
    Employees.LastName + ', ' + Employees.FirstName AS NombreEmpleado, 
    SUM([Order Details].Quantity * [Order Details].UnitPrice) AS VentasTotales
FROM 
    Employees
    JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY 
    Employees.EmployeeID, 
    Employees.LastName, 
    Employees.FirstName;

--SELECT * FROM Productividad_Empleados;
