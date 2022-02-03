SELECT
    Ar.artist_name AS artista,
    A.album_name AS album,
    COUNT(UA.user_id) AS seguidores
FROM Artist AS Ar
	INNER JOIN Album AS A
ON Ar.artist_id = A.artist_id
	INNER JOIN User_Artist AS UA
ON A.artist_id = UA.following_artists
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
