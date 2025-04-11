SELECT 
    ar.Name AS ArtistName, 
    al.Title AS AlbumTitle, 
    COUNT(il.TrackId) AS TotalTracksSold
FROM 
    InvoiceLine il
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Album al ON t.AlbumId = al.AlbumId
JOIN 
    Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY 
    ar.ArtistId, al.AlbumId
HAVING 
    COUNT(il.TrackId) = (
        SELECT 
            MAX(AlbumSales) 
        FROM (
            SELECT 
                a.ArtistId, 
                COUNT(il_inner.TrackId) AS AlbumSales
            FROM 
                Track t_inner
            JOIN 
                InvoiceLine il_inner ON t_inner.TrackId = il_inner.TrackId
            JOIN 
                Album a ON t_inner.AlbumId = a.AlbumId
            WHERE 
                a.ArtistId = ar.ArtistId
            GROUP BY 
                a.AlbumId
        )
    )
ORDER BY 
    ArtistName;
