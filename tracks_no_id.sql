SELECT track.name as song_name, album.title as album_title, 
mediatype.name as media_type, genre.name as genre_name FROM track
JOIN album on track.AlbumId = album.AlbumId
join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
join Genre on Track.GenreId = genre.GenreId;