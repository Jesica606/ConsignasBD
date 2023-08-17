--Mostrar los títulos de los discos de "Deep Purple"
SELECT Title
FROM albums
WHERE ArtistId = (SELECT ArtistId
FROM artists
WHERE name = 'Deep Purple');