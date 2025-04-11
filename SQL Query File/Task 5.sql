SELECT 
    STRFTIME('%Y-%m', i.InvoiceDate) AS Month, 
    SUM(i.Total) AS MonthlySales
FROM 
    Invoice i
WHERE 
    STRFTIME('%Y', i.InvoiceDate) = '2013'
GROUP BY 
    Month
ORDER BY 
    Month;
