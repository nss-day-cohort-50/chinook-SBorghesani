SELECT COUNT(TrackId), Playlist.PlaylistId as P_ID, Playlist.name FROM Playlist
JOIN PlaylistTrack 
    ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY P_ID;

