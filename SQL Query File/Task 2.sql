SELECT 
    g.Name AS Genre, 
    COUNT(il.TrackId) AS TotalTracksSold
FROM 
    InvoiceLine il
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Genre g ON t.GenreId = g.GenreId
GROUP BY 
    g.GenreId
ORDER BY 
    TotalTracksSold DESC
LIMIT 50;