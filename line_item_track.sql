SELECT InvoiceId, track.name
FROM InvoiceLine
INNER JOIN Track
    WHERE InvoiceLine.TrackId = Track.TrackId