SELECT 
    c.FirstName || ' ' || c.LastName AS CustomerName, 
    SUM(i.Total) AS TotalPurchase
FROM 
    Customer c
JOIN 
    Invoice i ON c.CustomerId = i.CustomerId
GROUP BY 
    c.CustomerId
ORDER BY 
    TotalPurchase DESC
LIMIT 100;
