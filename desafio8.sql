SELECT
    Ar.artist_name AS artista,
    A.album_name AS album
FROM Artist AS Ar
	INNER JOIN Album AS A
ON Ar.artist_id = A.artist_id
WHERE Ar.artist_name = "Walter Phoenix"
ORDER BY album;