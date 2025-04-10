SELECT 
    m.FirstName || ' ' || m.LastName AS ManagerName, 
    e.FirstName || ' ' || e.LastName AS SubordinateName
FROM 
    Employee e
JOIN 
    Employee m ON e.ReportsTo = m.EmployeeId
ORDER BY 
    ManagerName, SubordinateName;
