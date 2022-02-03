SELECT
    COUNT(S.song_name) AS cancoes,
    COUNT(DISTINCT Ar.artist_name) AS artistas,
    COUNT(DISTINCT A.album_name) AS albuns
FROM Song AS S
	INNER JOIN Album AS A
ON S.album_id = A.album_id
	INNER JOIN Artist AS Ar
ON A.artist_id = Ar.artist_id;