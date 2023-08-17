--Mostrar el nombre y duración de las canciones de los discos de "Deep Purple"
SELECT name, Milliseconds
FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
WHERE ArtistId = (SELECT ArtistId
FROM artists
WHERE name = 'Deep Purple');