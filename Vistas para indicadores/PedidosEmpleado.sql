CREATE VIEW Numero_Pedidos_Procesados_Por_Empleado AS
SELECT 
    Employees.EmployeeID, 
    Employees.LastName + ', ' + Employees.FirstName AS NombreEmpleado, 
    COUNT(Orders.OrderID) AS NumeroPedidos
FROM 
    Employees
    JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY 
    Employees.EmployeeID, 
    Employees.LastName, 
    Employees.FirstName;

--SELECT * FROM Numero_Pedidos_Procesados_Por_Empleado;
