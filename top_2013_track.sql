WITH CountTracks AS (
SELECT Track.Name, COUNT(InvoiceLineId) AS Track_Sales 
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
Where strftime('%Y', Invoice.InvoiceDate) = "2013"
GROUP BY Track.Name
)
SELECT Name, Track_Sales 
FROM CountTracks
WHERE Track_Sales = (
    SELECT MAX(Track_Sales)
    FROM CountTracks
);

