CREATE VIEW Clientes_Atendidos_Por_Empleado AS
SELECT 
    Employees.EmployeeID, 
    Employees.LastName + ', ' + Employees.FirstName AS NombreEmpleado, 
    COUNT(DISTINCT Orders.CustomerID) AS NumeroClientes
FROM 
    Employees
    JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY 
    Employees.EmployeeID, 
    Employees.LastName, 
    Employees.FirstName;

--SELECT * FROM Clientes_Atendidos_Por_Empleado;
