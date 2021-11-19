SELECT InvoiceId, track.name track_name, Artist.name artist_name
FROM InvoiceLine
    INNER JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
    INNER JOIN Album
        ON Track.AlbumId = Album.AlbumId
    INNER JOIN Artist 
        ON Album.ArtistId = Artist.ArtistId;